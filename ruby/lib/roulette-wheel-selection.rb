require "roulette-wheel-selection/version"

class RouletteWheelSelection
  class << self
    def sample(hash) # [obj => prop.]
      total_rate = hash.values.inject(&:+)
      random_seed = rand(total_rate)
      hash.each do |obj, rate|
        return obj if random_seed < rate
        random_seed -= rate
      end
    end
  end
end

