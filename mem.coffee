command: "/usr/local/bin/python3 $HOME/Library/Application\\ Support/Übersicht/widgets/nerdbar.widget/scripts/mem.py"

refreshFrequency: 30000 # ms

render: (output) ->
  "<span>|</span>  <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #b62d65
  font: 12px Knack Nerd Font
  right: 275px
  top: 10px
  span
    color: #b7c5d3
"""
