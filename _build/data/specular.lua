function math.clamp(v, a, b)
  return math.min(math.max(v, a), b)
end

-- make screen resizable
screen.set(800, 600, false, true)

-- create viewer
local view = viewer.new()
view.color = _COLOR_DARKGRAY
viewer.move(view, 0, 0, -6)

-- setup lighting
local dir_light = light.new(_LIGHT_DIRECTIONAL)
light.turn(dir_light, 30, 20)

-- load sphere
local sphere = object.load("sphere.msh")
local mat = object.material(sphere, 0)
mat.color = _COLOR_ORANGE
mat.shininess = 0

while screen.opened() and not input.keydown(_KEY_ESC) do
  -- update shininess
  if input.keydown(_KEY_LEFT) then mat.shininess = math.clamp(mat.shininess - 0.2 * screen.delta(), 0, 1) end
  if input.keydown(_KEY_RIGHT) then mat.shininess = math.clamp(mat.shininess + 0.2 * screen.delta(), 0, 1) end

  -- draw scene
  viewer.prepare(view)
  object.draw(sphere)

  -- draw ui
  screen.setup2d()
  screen.drawtext(math.floor(screen.fps()) .. " FPS", 0, 0)
  screen.drawtext("Shininess: " .. mat.shininess .. " (LEFT and RIGHT to change)", 0, 16)
  screen.refresh()
end
