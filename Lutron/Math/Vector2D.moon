class Vector2D
  new: (x = 0, y = 0) =>
    @x = x
    @y = y

  copy: =>
    return Vector2D(@x, @y)

  -- The vector magnitude length
  magnitude: (magnitude = nil) =>
    if magnitude == nil
      return math.sqrt @x ^ 2 + @y ^ 2
    direction = @direction!
    @x = math.cos(direction) * magnitude
    @y = math.sin(direction) * magnitude
    return magnitude

  -- The direction in radians
  direction: (direction = nil) =>
    if direction == nil
      return math.atan2 @y, @x
    magnitude = @magnitude!
    @x = math.cos(direction) * magnitude
    @y = math.sin(direction) * magnitude
    return direction

  equals: (vec) =>
    return (@x == vec.x) and (@y == vec.y)

  add: (vec) =>
    @x += vec.x
    @y += vec.y
    @

  subtract: (vec) =>
    @x -= vec.x
    @y -= vec.y
    @

  multiply: (vec) =>
    @x *= vec.x
    @y *= vec.y
    @

  divide: (vec) =>
    @x /= vec.x
    @y /= vec.y
    @

  reflectDegrees: (degrees) =>
    -- Get the current direction in degrees.
    angle = math.deg @direction!

    -- Invert the angle.
    oppAngle = (angle + 180) % 360 -- inverted

    -- Normalize if needed, and calculate the new angle.
    if degrees >= oppAngle
      normDiffAngle = degrees - oppAngle
      angle = (degrees + normDiffAngle) % 360
    else
      normDiffAngle = oppAngle - degrees
      angle = degrees - normDiffAngle
      if angle < 0
        angle += 360

    -- Set the new direction, in radians.
    @direction math.rad(angle)
