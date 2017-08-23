command: "echo `/usr/local/bin/smartctl -s on -a disk0 | grep Temperature | awk -F'[^0-9]*' '{print $7}'`°C"

refreshFrequency: 8000 # ms

render: (output) ->
  " <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #FFE082
  font: 12px Knack Nerd Font
  right: 325px
  top: 4px
  span
    color: #F44336
"""
