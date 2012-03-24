Gem::Specification.new do |spec|
  files = []
  dirs = %w{lib test}
  dirs.each do |dir|
    files += Dir["#{dir}/**/*"]
  end

  spec.name = "squid-blog"
  spec.version = "0.0.1"
  spec.summary = "squid-blog - parse Squid's binary logs with Ruby"
  spec.description = "Parse Squid's binary log file data."
  spec.files = files
  spec.require_paths << "lib"

  spec.authors = ["Igor Galić", "Peter Kofler"]
  spec.email = ["i.galic@brainsware.org", "peter.kofler@code-cop.org"]
  spec.homepage = "https://github.com/igalic/squid-blog"
end
