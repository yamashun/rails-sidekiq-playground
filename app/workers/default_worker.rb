class DefaultWorker
  include Sidekiq::Worker
  sidekiq_options queue: "default"

  def perform(number)
    puts "#{number}番目のDefaultWorker"
    sleep 1
  end
end
