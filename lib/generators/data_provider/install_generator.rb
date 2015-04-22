module DataProvider
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    desc 'Включает поддержку провайдеров'

    def install
      copy_file '.keep', 'app/data_providers/.keep'
      inject_into_file('config/application.rb', after: "class Application < Rails::Application\n") do
        "    config.autoload_paths << Rails.root.join('app', 'data_providers').to_s\n"
      end
    end
  end
end