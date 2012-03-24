require 'rake/testtask'

task :default => [:package]

Rake::TestTask.new do |t|
  t.test_files = Dir.glob('**/test_*.rb')
  t.warning = true
end

task :package => [:test, :package_real] do
end

task :package_real do
  system("gem build squid-blog.gemspec")
end

task :publish do
  latest_gem = %x{ls -t squid-blog*.gem}.split("\n").first
  system("gem push #{latest_gem}")
end
