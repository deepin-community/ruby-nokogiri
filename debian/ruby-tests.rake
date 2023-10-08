require 'gem2deb/rake/testtask'

NOKOGIRI_SPEC = Gem::Specification.load("nokogiri.gemspec")

Gem2Deb::Rake::TestTask.new do |t|
  t.libs = ['test']
  t.test_files = FileList['test/**/*_test.rb'] + FileList['test/**/test_*.rb']
end
