if love ~= nil
  export lutro = love

Lutron = require "Lutron/Lutron"
Player1 = require "Player1"
Player2 = require "Player2"
Ball = require "Ball"
Background = require "Background"
Score = require "Score"
State = require "Lutron/State/State"

game = Lutron 320, 240

lutro.load = ->
	-- Load all the entities
	background = Background game
    ball = Ball(game)
    player1 = Player1(game)
    player2 = Player2(game)
    player1Score = Score(game, 1)
    player2Score = Score(game, 2)

    -- Construct the Menu.
	menu = State game, "menu"
	with menu
		\addEntity background, "background"

	-- Construct the in game play screen.
	play = State game, "play"
	with play
		\addEntity background, "background"
		\addEntity ball, "ball"
		\addEntity player1, "player1"
		\addEntity player2, "player2"
		\addEntity player1Score, "player1Score"
		\addEntity player2Score, "player2Score"

	with game
		\addState(menu)
		\addState(play)
		\setState("play")
		\load!

lutro.update = game\update

lutro.draw = game\draw
