command: "ESC=`printf \"\e\"`; ps -A -o %mem | awk '{s+=$1} END {print \"\" s}' | awk '{print substr($0,0,2)}'"

refreshFrequency: 30000 # ms

render: (output) ->
  "M <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #FFE082
  font: 12px Knack Nerd Font
  right: 195px
  top: 4px
  span
    color: #607D8B
"""
