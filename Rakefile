require 'rspec/core/rake_task'

namespace :spec do
  desc 'Run feature-one tests'
  RSpec::Core::RakeTask.new(:feature_one) do |spec|
    spec.pattern = FileList['spec/features/one_spec.rb']
  end

  desc 'Run feature-two tests'
  RSpec::Core::RakeTask.new(:feature_two) do |spec|
    spec.pattern = FileList['spec/features/two_spec.rb']
  end

  desc 'Run feature-fail tests'
  RSpec::Core::RakeTask.new(:feature_fail) do |spec|
    spec.pattern = FileList['spec/features/fail_spec.rb']
  end
end
