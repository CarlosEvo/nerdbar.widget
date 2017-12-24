command: "export PYTHONIOENCODING='utf-8' && /usr/local/bin/python3 $HOME/Library/Application\\ Support/Übersicht/widgets/nerdbar.widget/scripts/battery.py"

refreshFrequency: 150000 # ms

render: (output) ->
  "#{output}"

style: """
  -webkit-font-smoothing: antialiased
  font: 15px Knack Nerd Font
  top: 8.5px
  right: 380px
  color: #D98E48
"""
