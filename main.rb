require_relative 'question'
require_relative 'answer'
require_relative 'game'

require 'rubygems'
require 'bundler/setup'
require 'rainbow'


header = <<-HEADER
  ___   __ __    ___  _____ ______  ____  ___   ____   _____
 /   \ |  |  |  /  _]/ ___/|      ||    |/   \ |    \ / ___/
|     ||  |  | /  [_(   \_ |      | |  ||     ||  _  (   \_ 
|  Q  ||  |  ||    _]\__  ||_|  |_| |  ||  O  ||  |  |\__  |
|     ||  :  ||   [_ /  \ |  |  |   |  ||     ||  |  |/  \ |
|     ||     ||     |\    |  |  |   |  ||     ||  |  |\    |
 \__,_| \__,_||_____| \___|  |__|  |____|\___/ |__|__| \___|
                                                            

HEADER

puts header.color(:green)


q1 = Question.new("Naughty method! Do you know which method has exhibitionist-like qualities?", :easy)
q1.add_choices("attr_accessor", true)
q1.add_choices("xxx.flash", false)
q1.add_choices("public", false)
q1.add_choices("gets.chomp", false)

q2 = Question.new("How do you spell Mr. Devani's first name?", :medium)
q2.add_choices("Shezan", false)
q2.add_choices("Shehzan", true)

q3 = Question.new("How do you spell Mr. Devani's first name?", :hard)
q3.add_choices("Shezan", false)
q3.add_choices("Shehzan", true)

questions = [q1, q2, q3]

Game.new(questions).play





