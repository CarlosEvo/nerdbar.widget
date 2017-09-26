command: "/usr/local/bin/chunkc tiling::query -d id"

refreshFrequency: 1000 # ms

render: (output) ->
  "[#{output}]"

style: """
  -webkit-font-smoothing: antialiased
  color: #BDBDBD
  font: 12px Knack Nerd font
  height: 16px
  left: 50px
  overflow: hidden
  text-overflow: ellipsis
  top: 4.5px
  width: 500px
"""
