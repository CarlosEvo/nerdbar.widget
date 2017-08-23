command: "/usr/local/bin/chunkc tiling::query --window tag"

refreshFrequency: 1000 # ms

render: (output) ->
  "#{output}"

style: """
  -webkit-font-smoothing: antialiased
  color: #BDBDBD
  font: 12px Knack Nerd font
  height: 16px
  left: 45px
  overflow: hidden
  text-overflow: ellipsis
  top: 3px
  width: 500px
"""
