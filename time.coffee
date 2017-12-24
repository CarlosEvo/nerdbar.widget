command: "date +\"%a %d %b %H:%M\""

refreshFrequency: 10000 # ms

render: (output) ->
  "| <b>#{output}</b>"

style: """
  -webkit-font-smoothing: antialiased
  color: #b7c5d3
  font: 12px Knack Nerd Font
  right: 90px
  top: 10px
"""
