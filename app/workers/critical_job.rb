class CriticalJob
  include Sidekiq::Job
  sidekiq_options queue: "critical"

  def perform(number)
    puts "#{number}番目のCriticalJob"
    sleep 1
  end
end
