#
# Today widget for Übersicht
# Ruurd Pels
# github.com/ruurd/simpledate
#

#
# Adjust the styles as you like
#
style =
  # Define the maximum width of the widget.
  width: "45%"

  # Define the position, where to display the time.
  # Set properties you don't need to "auto"
  position:
    top:    "1%"
    bottom: "auto"
    left:   "auto"
    right:  "1%"

  # Font properties
  font:            "'Helvetica Neue', sans-serif"
  font_color:      "#F5F5F5"
  font_size:       "50px"
  font_weight:     "100"
  letter_spacing:  "0.025em"
  line_height:     ".9em"

  # Misc
  text_align:     "right"
  text_transform: "uppercase"

# Get the current hour as word.
command: "echo hello date"

# Lower the frequency for more accuracy.
refreshFrequency: (1000 * 60) # (1000 * n) seconds

render: (o) -> """
  <div id="content">
    <span id="date"></span>
  </div>
"""


update: (output, dom) ->
  date   = new Date();
  d = date.getDate();
  m = date.getMonth() + 1;
  y = date.getFullYear();
  time_str = ("0" + d).slice(-2) + '-' + ("0" + m).slice(-2) + '-' + y;
  $(dom).find("#date").html(time_str)


style: """
  top: #{@style.position.top}
  bottom: #{@style.position.bottom}
  right: #{@style.position.right}
  left: #{@style.position.left}
  width: #{@style.width}
  font-family: #{@style.font}
  color: #{@style.font_color}
  font-weight: #{@style.font_weight}
  text-align: #{@style.text_align}
  text-transform: #{@style.text_transform}
  font-size: #{@style.font_size}
  letter-spacing: #{@style.letter_spacing}
  font-smoothing: antialiased
  line-height: #{@style.line_height}
"""
