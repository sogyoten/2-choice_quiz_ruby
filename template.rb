data = File.read("Gemfile")
data.sub!(/^.*gem "tzinfo-data".*$/, 'install_if(-> { RUBY_PLATFORM =~ /mingw|mswin|java/ }) { gem "tzinfo-data" }')
File.write("Gemfile", data)
