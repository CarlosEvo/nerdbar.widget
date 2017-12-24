command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%02d\",s/8);}'"

refreshFrequency: 2000 # ms

render: (output) ->
  "<span>|</span>  <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #539afc
  font: 12px Knack Nerd Font
  right: 327px
  top: 10px
  span
    color: #b7c5d3
"""
