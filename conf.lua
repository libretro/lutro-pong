if lutro ~= nil then
  local love = lutro
end
love.conf = function(t)
  t.width = 320
  t.height = 240
  t.title = "Pong"
  t.author = "RobLoach"
  t.url = "https://github.com/libretro/lutro-pong"
  t.identity = "libretro-pong"
  t.version = "0.10.1"
  t.console = false
  t.release = false
end
