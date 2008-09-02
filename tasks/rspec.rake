begin
  require 'spec'
rescue LoadError
  require 'rubygems'
  require 'spec'
end
begin
  require 'spec/rake/spectask'
rescue LoadError
  puts <<-EOS
To use rspec for testing you must install rspec gem:
    gem install rspec
EOS
  exit(0)
end

desc "Run the specs under spec/models"
Spec::Rake::SpecTask.new do |t|
  spec_dir = File.join(File.dirname(__FILE__), '..', 'spec')
  t.spec_opts = File.read(File.join(spec_dir, 'spec.opts')).split
  t.spec_files = FileList[File.join(spec_dir, 'unit', '**', '*_spec.rb')]
end
