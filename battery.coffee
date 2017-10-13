command: "/usr/local/bin/python3 $HOME/Library/Application\\ Support/Übersicht/widgets/nerdbar.widget/scripts/battery.py"

refreshFrequency: 150000 # ms

render: (output) ->
  "<i>⚡</i><span>#{output}<\span>"

style: """
  -webkit-font-smoothing: antialiased
  font: 12px Knack Nerd Font
  top: 4px
  right: 145px
  color: #212121
  span
    color: #212121
"""
