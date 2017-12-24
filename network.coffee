command: "export PYTHONIOENCODING='utf-8' && $HOME/Library/Application\\ Support/Übersicht/widgets/nerdbar.widget/scripts/network.sh"

refreshFrequency: 15000 # ms

render: (output) ->
  "#{output}"

style: """
  -webkit-font-smoothing: antialiased
  color: #5ec4ff
  font: 14px Knack Nerd Font
  right: 425px
  top: 8px
  overflow: shown
  text-overflow: ellipsis
"""
