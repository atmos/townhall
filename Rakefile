require File.dirname(__FILE__)+'/lib/thetownhall'
require 'spec/rake/spectask'
require 'cucumber/rake/task'

task :default => :features

desc "Run cucumber"
Cucumber::Rake::Task.new do |t|
  t.cucumber_opts = %w{--format pretty}
end


desc "Run specs"
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.spec_opts = %w(-fs --color)
  t.spec_opts << '--loadby' << 'random'

  t.rcov_opts << '--exclude' << 'spec'
  t.rcov = ENV.has_key?('NO_RCOV') ? ENV['NO_RCOV'] != 'true' : true
  t.rcov_opts << '--text-summary'
  t.rcov_opts << '--sort' << 'coverage' << '--sort-reverse'
end
