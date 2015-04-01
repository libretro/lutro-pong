Lutron = require "Lutron/Lutron"
Player1 = require "Player1"
Player2 = require "Player2"
Ball = require "Ball"
Background = require "Background"
Score = require "Score"
Menu = require "Lutron/Entity/Menu"

game = Lutron 320, 240

lutro.conf = (t) ->
  t.width  = game.width
  t.height = game.height

lutro.load = ->
  menu = Menu {"Hello", "world"}
  with game
    \addEntity Background game
    \addEntity Ball(game), "ball"
    \addEntity Player1(game), "player1"
    \addEntity Player2(game), "player2"
    \addEntity Score(game, 1), "player1score"
    \addEntity Score(game, 2), "player2score"
    \addEntity menu
    \load!

lutro.update = game\update

lutro.draw = game\draw
