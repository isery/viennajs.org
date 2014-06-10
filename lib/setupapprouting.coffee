debugModule = require "debug"
debug = debugModule "setupapprouting"
defaultRoutingSetup = require "./defaultroutingsetup"

module.exports = setupAppRouting = (app, controllers, routers) ->
  setup = (routeName, actions) ->
    debug "Setting up routes for '#{routeName}'"
    if routers.hasOwnProperty routeName
      setupRouting = routers[routeName]
    else
      debug "Using default routing setup for '#{routeName}'"
      setupRouting = defaultRoutingSetup
    if routeName == "index"
      route = "/"
    else
      route = "/#{routeName}"
    app.use route, setupRouting(actions)

  # Make sure the "index" route gets added first
  if controllers.index
    setup "index", controllers.index
    delete controllers.index # delete index router so we do not add it twice

  for name, actions of controllers
    setup name, actions