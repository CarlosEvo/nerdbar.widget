command: "export PYTHONIOENCODING='utf-8' && /usr/local/bin/python3 $HOME/Library/Application\\ Support/Übersicht/widgets/nerdbar.widget/scripts/temperature.py"

refreshFrequency: 8000 # ms

render: (output) ->
  "#{output}"

style: """
  -webkit-font-smoothing: antialiased
  color: #D95468
  font: 14px Knack Nerd Font
  right: 407.5px
  top: 9px
"""
