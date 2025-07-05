class CriticalWorker
  include Sidekiq::Worker
  sidekiq_options queue: "critical"

  def perform(number)
    puts "#{number}番目のCriticalWorker"
    sleep 1
  end
end
