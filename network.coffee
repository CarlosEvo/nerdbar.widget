command: "/Users/CarlosZhang/Library/Application\\ Support/Übersicht/widgets/nerdbar.widget/scripts/network.sh"

refreshFrequency: 30000 # ms

render: (output) ->
  "net <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #D5C4A1
  font: 12px Knack Nerd Font
  right: 318px
  top: 4px
  span
    color: #54969a
"""
