class ProductorController < ApplicationController

    def index
         @shortcode = params[:shortcode]
         @msisdn = params[:msisdn]
         @carrier = params[:carrier]
         @tipo =  params[:sms_type]
         @servicio = params[:servicio]
         @cobro = params[:cobro]
         @id = params[:id]

         require 'json'
         require "redis-queue"
         @mensajeria_list = {id: @id, shortcode: @shortcode, carrier: @carrier,msisdn: @msisdn,tipo: @tipo,servicio: @servicio, cobro: @cobro }
         msg  = @mensajeria_list.to_json
         redis = Redis.new
         queue = Redis::Queue.new('q_test_mensajeria','bp_q_test',  :redis => redis)
         queue.push msg
         


    end


end
