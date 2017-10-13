command: "/usr/local/bin/chunkc tiling::query -w owner"

refreshFrequency: 1000 # ms

render: (output) ->
  "#{output}"

style: """
  -webkit-font-smoothing: antialiased
  color: #212121
  font: 12px Knack Nerd font
  height: 16px
  left: 80px
  overflow: hidden
  text-overflow: ellipsis
  top: 4.5px
  width: 500px
"""
