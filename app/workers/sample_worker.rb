class SampleWorker
  include Sidekiq::Worker
  sidekiq_options queue: "default"

  def perform(name, number)
    Rails.logger.info "SampleWorker: Hello, #{name}! #{number}"
  end
end
