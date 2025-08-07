class DiceController < ApplicationController
  def homepage
    render({ :template => "dice/homepage" })
  end

  def result_flexible
    @num_dice = params.fetch("dice").to_i
    @sides    = params.fetch("sides").to_i
    @rolls    = []

    @num_dice.times do
      roll = rand(1..@sides)
      @rolls.push(roll)
    end

    render({ :template => "dice/result_flexible" })
  end
end
