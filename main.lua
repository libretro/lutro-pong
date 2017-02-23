if love ~= nil then
  lutro = love
end
local Lutron = require("Lutron/Lutron")
local Player1 = require("Player1")
local Player2 = require("Player2")
local Ball = require("Ball")
local Background = require("Background")
local Score = require("Score")
local State = require("Lutron/State/State")
local game = Lutron(320, 240)
lutro.load = function()
  local background = Background(game)
  local ball = Ball(game)
  local player1 = Player1(game)
  local player2 = Player2(game)
  local player1Score = Score(game, 1)
  local player2Score = Score(game, 2)
  local menu = State(game, "menu")
  do
    menu:addEntity(background, "background")
  end
  local play = State(game, "play")
  do
    play:addEntity(background, "background")
    play:addEntity(ball, "ball")
    play:addEntity(player1, "player1")
    play:addEntity(player2, "player2")
    play:addEntity(player1Score, "player1Score")
    play:addEntity(player2Score, "player2Score")
  end
  do
    game:addState(menu)
    game:addState(play)
    game:setState("play")
    game:load()
    return game
  end
end
do
  local _base_0 = game
  local _fn_0 = _base_0.update
  lutro.update = function(...)
    return _fn_0(_base_0, ...)
  end
end
do
  local _base_0 = game
  local _fn_0 = _base_0.draw
  lutro.draw = function(...)
    return _fn_0(_base_0, ...)
  end
end
