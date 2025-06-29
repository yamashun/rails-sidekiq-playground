class SampleWorker
  include Sidekiq::Worker

  def perform(name)
    # ここに非同期処理のロジックを実装
    Rails.logger.info "SampleWorker: Hello, #{name}!"
  end
end
