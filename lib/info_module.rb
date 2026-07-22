# frozen_steing_literal: true

# This module includes the text information to be displayed during the game.
module Info
  def self.show(parameter)
    {'enter name' => 'Welcome, please enter your name: ',
    'select piece color' => 'Select the color of the pieces you will play with press the number 1- white or 2- black: '}[parameter]
  end
end