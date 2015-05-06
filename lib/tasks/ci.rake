task :ci do
  Bundler.require(:ci)
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new do |task|
    task.patterns = ['--rails']
  end

  tasks = []
  tasks << :spec
  tasks << :rubocop

  tasks.each do |task|
    Rake::Task[task].invoke
  end
end
