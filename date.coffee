command: "date +\"%a %d %b\""

refreshFrequency: 10000

render: (output) ->
  "#{output}"

style: """
  -webkit-font-smoothing: antialiased
  color: #BA68C8
  font: 12px Knack Nerd Font
  right: 60px
  top: 4px
"""
