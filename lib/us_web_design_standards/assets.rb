begin
  require 'jekyll/static_file'
rescue LoadError
end

begin
  module USWebDesignStandards
    class Assets
      SOURCE = File.realpath File.join(__FILE__, '..', '..', '..')
      BEGIN_PATH = SOURCE.size + File::SEPARATOR.size

      def self.images_path
        File.expand_path("../../assets/img", __FILE__)
      end

      def self.copy_to_site(site)
        Dir.glob File.join(SOURCE, 'assets', '[^_]*', '**', '*') do |asset|
          next unless File.file? asset
          asset = asset[BEGIN_PATH..-1]
          site.static_files << ::Jekyll::StaticFile.new(
            site, SOURCE, File.dirname(asset), File.basename(asset))
        end
      end
    end
  end
rescue LoadError
end
