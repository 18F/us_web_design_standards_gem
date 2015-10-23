begin
  require 'jekyll'

  module USWebDesignStandards
    class Generator < ::Jekyll::Generator
      def generate(site)
        Assets.copy_to_site site
      end
    end
  end
rescue LoadError
end
