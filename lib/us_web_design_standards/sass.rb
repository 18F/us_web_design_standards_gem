require 'sass'

module USWebDesignStandards
  BASEDIR = File.dirname File.dirname(File.dirname(__FILE__))
  SASS_DIR = File.join BASEDIR, 'assets', '_scss'
end

Sass.load_paths << USWebDesignStandards::SASS_DIR
