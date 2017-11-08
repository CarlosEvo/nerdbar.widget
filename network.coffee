command: "/Users/CarlosZhang/Library/Application\\ Support/Übersicht/widgets/nerdbar.widget/scripts/network.sh"

refreshFrequency: 15000 # ms

render: (output) ->
  "<span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #212121
  font: 14px Knack Nerd Font
  right: 370px
  top: 2.5px
  overflow: shown
  text-overflow: ellipsis
  span
    color: #BDBDBD
"""
