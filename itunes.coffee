command: "export PYTHONIOENCODING='utf-8' && /usr/local/bin/python3 -W ignore $HOME/Library/Application\\ Support/Übersicht/widgets/nerdbar.widget/scripts/itunes.py"

refreshFrequency: 1000 # ms

render: (output) -> """
  <span class="right bottom" id="play">#{output}</span>
"""

afterRender: (domEl) ->
	button = $(domEl).find '#play'
	$(domEl).addClass button.get(0).className
	button.unbind 'click'
	button.on 'click', (ev) =>
    @run("osascript $HOME/Library/Application\\ Support/Übersicht/widgets/nerdbar.widget/scripts/play.applescript")

style: """
  -webkit-font-smoothing: antialiased
  text-align: center
  color: #B62D65
  font: 12px Knack Nerd Font
  height: 15px
  top: 10px
  left: 30%
  overflow: hidden
  text-overflow: ellipsis
  width: 40%
  span
    color: #B62D65
"""
