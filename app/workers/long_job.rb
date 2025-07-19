class LongJob
  include Sidekiq::Job
  sidekiq_options queue: "default"

  def perform(number)
    puts "#{number}番目のLongJob"
    sleep 300
  end
end
