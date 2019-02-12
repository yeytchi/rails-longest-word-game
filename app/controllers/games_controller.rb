class GamesController < ApplicationController
  def new
    alphabet = ('A'..'Z').to_a
    @letters = []
    10.times do
      @letters << alphabet[rand(25).to_i]
    end
    @letters
    params["letters"] = @letters
  end

  def score
    @letters = params["letters"]
    @word = params["word"]

    check_letters = @word.split('')
    check_letters.each do |letter|
      if @letters.include?(letter)
        @message = "checking"
      else
        @message = "You used letters that are not on the list"
      end
    end
    @message

    @word


#     The word can't be built out of the original grid
# The word is valid according to the grid, but is not a valid English word
# The word is valid according to the grid and is an English word

  end
end
