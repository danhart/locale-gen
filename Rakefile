#!/usr/bin/env rake

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:unit) do |t|
  t.pattern = ['test/unit/**/*_spec.rb']
end

require 'foodcritic'
FoodCritic::Rake::LintTask.new do |t|
  t.options = { :fail_tags => ['any'] }
end

require 'rubocop/rake_task'
Rubocop::RakeTask.new

begin
  require 'kitchen/rake_tasks'
  Kitchen::RakeTasks.new
rescue LoadError
  puts '>>>>> Kitchen gem not loaded, omitting tasks' unless ENV['CI']
end

task :default => [:foodcritic, :rubocop, :unit]
