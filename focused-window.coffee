command: "/usr/local/bin/chunkc tiling::query -w tag"

refreshFrequency: 1000 # ms

render: (output) ->
  "<span>|</span> #{output}"

style: """
  -webkit-font-smoothing: antialiased
  color: #70AB7E
  font: 12px Knack Nerd font
  height: 16px
  left: 152px
  overflow: hidden
  text-overflow: ellipsis
  top: 10px
  width: 360px
  span
    color: #b7c5d3
"""
