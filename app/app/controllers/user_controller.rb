require_relative("../models/taiyaki.rb")

class UserController < ApplicationController
  def show
    logger.debug "start user show"
    @taiyaki = Taiyaki.new("あんこ", 300)
    binding.break
    logger.debug "end user show"
    binding.break
  end
end
