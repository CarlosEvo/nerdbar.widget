command: "osascript $HOME/Library/Application\\ Support/Übersicht/widgets/nerdbar.widget/scripts/itunes.scpt"

refreshFrequency: 5000 # ms

render: (output) -> """
  <span class="right bottom" id="play">#{output}</span>
"""

afterRender: (domEl) ->
	button = $(domEl).find '#play'
	$(domEl).addClass button.get(0).className
	button.unbind 'click'
	button.on 'click', (ev) =>
    @run("osascript $HOME/Library/Application\\ Support/Übersicht/widgets/nerdbar.widget/scripts/play.scpt")

style: """
  -webkit-font-smoothing: antialiased
  text-align: center
  color: #856bfb
  font: 11px Knack Nerd Font
  height: 21px
  top: 5px
  left: 25%
  overflow: hidden
  text-overflow: ellipsis
  width: 50%
  span
    color: #ca6fa8
"""
