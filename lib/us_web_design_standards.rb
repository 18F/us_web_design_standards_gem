require_relative 'us_web_design_standards/assets'
require_relative 'us_web_design_standards/generator'
require_relative 'us_web_design_standards/sass'
require_relative 'us_web_design_standards/version'

begin
  module USWebDesignStandards
    module Rails
      class Engine < ::Rails::Engine
      end
    end
  end
rescue NameError
end
