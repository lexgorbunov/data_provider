class DataProviderGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :provider_name, type: :string

  def generate
    name = provider_name.singularize
    create_file "app/data_providers/#{name.underscore}.rb", <<-FILE
class #{name.classify} < DataProvider::Base
# def posts
#   # ...
# end

# Кэширование результатов
# memoize :method
end
    FILE
  end
end