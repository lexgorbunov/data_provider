module UberPresenter
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    desc 'Включает поддержку презентеров'

    def install
      copy_file '.keep', 'app/presenters/.keep'
      inject_into_file('config/application.rb', after: "class Application < Rails::Application\n") do
        "    config.autoload_paths << Rails.root.join('app', 'presenters').to_s\n"
      end
    end
  end
end