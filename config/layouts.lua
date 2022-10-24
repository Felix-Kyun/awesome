local awful = require 'awful'
require 'awful.autofocus'

--[[
  All Layouts:
    - folating
    - tile (left, bottom, top)
    - fair (horizontal)
    - spiral (dwindle)
    - max (fullscreen)
    - magnifier
    - corner.nw (ne, sw, se)

    for enabling prefix with `awful.layouts.suit`
--]]

awful.layout.layouts = {
    awful.layout.suit.tile,
    awful.layout.suit.floating,
    awful.layout.suit.spiral,
}
