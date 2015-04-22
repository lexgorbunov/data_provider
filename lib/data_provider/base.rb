class DataProvider::Base
  extend Memoist

  # Доступ к объекту контроллера
  attr_reader :controller
  delegate :params, :action_name, :controller_name, :session, :render, to: :controller

  class << self
    # Создаем экземпляр презенера, уникальный для объекта controller
    #
    # @param [Object] controller
    # @param [Object] args Набор аргументов для презентора
    # @return [Object] Экземпляр провайдера
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
      controller.instance_variable_set(:@data_providers, {}) unless controller.instance_variable_names.include?('@data_providers')
      controller.instance_variable_get(:@data_providers)
    end
  end

  # Получаем хранилище провайдеров
  #
  # @return [Hash]
  #
  def data_providers
    @data_providers.present? ? @data_providers : self.class.storage_from(controller)
  end

  def inspect
    "#<#{self.class.name}:#{self.object_id} @controller=#<#{controller.class.name}:#{controller.object_id}>>"
  end
end