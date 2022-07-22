class Stock < ApplicationRecord

    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(publishable_tokens: 'pk_f66796123276451ebf10316e01859609',
        endpoint: "https://sandbox.iexapis.com/v1")

        client.price(ticker_symbol)
    end
end
