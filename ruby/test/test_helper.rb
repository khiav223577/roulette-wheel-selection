require "simplecov"
SimpleCov.start 'test_frameworks'

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'roulette-wheel-selection'
require 'minitest/autorun'

