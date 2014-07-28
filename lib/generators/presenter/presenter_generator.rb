class PresenterGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :presenter_name, type: :string

  def generate
    name = presenter_name.singularize
    create_file "app/presenters/#{name.classify}.rb", <<-FILE
class #{name.classify} < UberPresenter::Base
  # def posts
  #  # ...
  # end
  # Кэширование результатов
  # memoist :method
end
    FILE
  end
end
