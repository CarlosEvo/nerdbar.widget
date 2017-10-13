command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%02d\",s/8);}'"

refreshFrequency: 2000 # ms

render: (output) ->
  "C <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #f9a825
  font: 12px Knack Nerd Font
  right: 230px
  top: 4px
  span
    color: #558b2f
"""
