# @cjsx React.DOM

React = require "react"
Timer = require "./timer"

module.exports = AnotherTestWidget = React.createClass
    render: ->
        <div>
            <h3>AnotherTestWidget</h3>
            <Timer />
        </div>


