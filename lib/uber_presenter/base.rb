# class UberPresenter::PresenterFactory
class UberPresenter::Base
  extend Memoist

  # Доступ к объекту контроллера
  attr_reader :controller
  delegate :params, :action_name, :controller_name, to: :controller

  class << self
    # Создаем экземпляр презенера, уникальный для объекта controller
    #
    # @param [Object] controller
    # @param [Object] args Набор аргументов для презентора
    # @return [Object] Экземпляр презентера
    #
    def new(controller, *args)
      storage = storage_from(controller)
      (instance = storage[self.name]).present? ? instance : (storage[self.name] = super(*args)).tap { |inst| inst.instance_variable_set(:@controller, controller) }
    end

    # Получаем хранилище презенторов из контроллера controller
    #
    # @param [Object] controller
    # @return [Hash]
    #
    def storage_from(controller)
      controller.instance_variable_set(:@presenters, {}) unless controller.instance_variable_names.include?('@presenters')
      controller.instance_variable_get(:@presenters)
    end
  end

  # Получаем хранилище презенторов
  #
  # @return [Hash]
  #
  def presenters
    @presenters.present? ? @presenters : self.class.storage_from(controller)
  end

  def inspect
    "#<#{self.class.name}:#{self.object_id} @controller=#<#{controller.class.name}:#{controller.object_id}>>"
  end
end