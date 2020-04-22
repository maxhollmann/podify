module Sources
  class Create
    include Dry::Monads[:result, :do]

    include Podify::Import['events', 'sources.contract']

    def call(attrs)
      attrs = yield(contract.call(attrs).to_monad).to_h
      source = yield create_source(attrs)
      events.publish('sources.created', source: source)
      Success(source)
    end

    def create_source(attrs)
      Success(Source.create(attrs))
    end
  end
end