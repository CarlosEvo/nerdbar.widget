command: "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';'"

refreshFrequency: 150000 # ms

render: (output) ->
  "<i>⚡</i><span>#{output}<\span>"

style: """
  -webkit-font-smoothing: antialiased
  font: 12px Knack Nerd Font
  top: 4px
  right: 145px
  color: #FFC107
  span
    color: #9E9E9E
"""
