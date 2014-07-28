# UberPresenter

UberPresenter это библиотека для огранизации презентеров в проектах на Ruby On Rails

## Установка (Installation)

Add this line to your application's Gemfile:

    gem 'uber-presenter'

And then execute:

    $ bundle
    
To keep your code organized, create a directory “app/presenters” in your project and add this line to your application.rb:

    config.autoload_paths << Rails.root.join("app", "presenters").to_s

## Для разработчиков (Contributing)

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request