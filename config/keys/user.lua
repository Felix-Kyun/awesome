local gears = require 'gears'
local awful = require 'awful'
local modkey = require 'config.vars' . modkey
local bin = require 'config.vars' .bin
local m = { modkey }
local s = { 'Shift' }
local ms = { modkey, s[1] }

function e(app) 
  return function() 
    awful.spawn(app)
  end
end

local _M = {}

local keydata = {
  {m,  'Return', e(bin .. 'kitten') },
  {m,  'b', e'qutebrowser' },
  {{}, 'Print', e(bin .. 'ss full') },
  {s,  'Print', e(bin .. 'ss crop') },
  {{}, 'XF86AudioPause', e'playerctl play-pause' },
  {{}, 'XF86AudioPlay', e'playerctl play-pause' },
  {m,  'z', e(bin .. 'display') },
  {ms, 'Return', e(bin .. 'launcher') },
  {m,  'BackSpace', e(bin .. 'powermenu') },
  {ms, 'm', e(bin .. 'mpdmenu') },
  {},
}

for _, v in pairs(keydata) do _M = gears.table.join(_M, awful.key(table.unpack(v))) end

return _M
