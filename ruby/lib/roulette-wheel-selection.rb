require "roulette-wheel-selection/version"

class RouletteWheelSelection
  class << self
    def sample(*args)
      object = args.first
      case object
      when Array ; sample_from_array(*args)
      when Hash  ; sample_from_hash(*args)
      else       ; fail "Unsupported type: #{object.class}"
      end
    end

    private

    def sample_from_array(array, key)
      hash = array.map{|v| [v, v[key]] }.to_h
      return sample_from_hash(hash)
    end

    def sample_from_hash(hash)
      total_rate = hash.values.inject(&:+)
      random_seed = rand(total_rate)
      hash.each do |obj, rate|
        return obj if random_seed < rate
        random_seed -= rate
      end
    end
  end
end

