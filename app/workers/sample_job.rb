class SampleJob
  include Sidekiq::Job
  sidekiq_options queue: "default"

  def perform(name, number)
    Rails.logger.info "SampleJob: Hello, #{name}! #{number}"
  end
end
