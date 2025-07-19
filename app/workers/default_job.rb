class DefaultJob
  include Sidekiq::Job
  sidekiq_options queue: "default"

  def perform(number)
    puts "#{number}番目のDefaultJob"
    sleep 1
  end
end
