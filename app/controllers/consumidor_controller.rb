class ConsumidorController < ApplicationController

  def index

    redis = Redis.new
    queue = Redis::Queue.new('q_test_mensajeria','bp_q_test',  :redis => redis)
    queue.process(false, 30) do |message|
      puts "'#{message}'"
    end
  end

end
