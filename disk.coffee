command: "/usr/local/bin/python3 $HOME/Library/Application\\ Support/Übersicht/widgets/nerdbar.widget/scripts/disk.py"

refreshFrequency: 60000 # ms

render: (output) ->
  "D <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #FFE082
  font: 12px Knack Nerd Font
  right: 270px
  top: 4px
  span
    color: #9E9E9E
"""
