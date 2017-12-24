command: "/usr/local/bin/python3 $HOME/Library/Application\\ Support/Übersicht/widgets/nerdbar.widget/scripts/disk.py"

refreshFrequency: 60000 # ms

render: (output) ->
  "<span>|</span>  <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #70ab7e
  font: 12px Knack Nerd Font
  right: 225px
  top: 10px
  overflow: shown
  span
    color: #b7c5d3
"""
