command: "df | grep /dev/disk1 | awk -F'[ ,]+' '{print $5}'"

refreshFrequency: 60000 # ms

render: (output) ->
  "D <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #FFE082
  font: 12px Knack Nerd Font
  right: 283px
  top: 4px
  span
    color: #9E9E9E
"""
