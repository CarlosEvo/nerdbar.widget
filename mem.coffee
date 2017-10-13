command: "/usr/local/bin/python3 $HOME/Library/Application\\ Support/Übersicht/widgets/nerdbar.widget/scripts/mem.py"

refreshFrequency: 30000 # ms

render: (output) ->
  "M <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #BDBDBD
  font: 12px Knack Nerd Font
  right: 190px
  top: 4px
  span
    color: #BDBDBD
"""
