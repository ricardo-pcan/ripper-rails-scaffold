require_relative 'config/application'

Rails.application.load_tasks

YARD::Rake::YardocTask.new do |t|
  t.files = ['lib/**/*.rb', 'app/**/*.rb']
  t.options = ['--no-cache']
  t.stats_options = ['--list-undoc']
end
