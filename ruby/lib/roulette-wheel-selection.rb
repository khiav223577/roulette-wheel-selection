# frozen_string_literal: true

require "roulette-wheel-selection/version"

class RouletteWheelSelection
  NOT_SET = Object.new

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
      RouletteWheelSelection.new(hash).sample
    end
  end

  def initialize(hash)
    @hash = hash
    @total_rate = hash.values.inject(&:+) || 0
  end

  def sample(num = NOT_SET)
    return if @total_rate == 0
    return sample_an_object(@total_rate, @hash) if num == NOT_SET
    return if num < 1
    return sample_n_objects(num) if num > 1
    return [sample_an_object(@total_rate, @hash)]
  end

  private

  def sample_n_objects(num)
    hash = @hash.clone
    total_rate = @total_rate
    num = total_rate if num > total_rate
    return Array.new(num) do
      obj = sample_an_object(total_rate, hash)
      hash[obj] -= 1
      total_rate -= 1
      next obj
    end
  end

  def sample_an_object(total_rate, hash)
    random_seed = rand(total_rate)
    hash.each do |obj, rate|
      return obj if random_seed < rate
      random_seed -= rate
    end
  end
end

