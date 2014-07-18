module AppAnnie
  class App

    attr_reader :raw,
                :id,
                :account_id,
                :status,
                :name,
                :first_sales_date,
                :last_sales_date,
                :icon

    def initialize(attributes)
      @raw = attributes
      @account_id = attributes['account_id']
      @id = attributes['app_id']
      @name = attributes['app_name']
      @status = attributes['status']
      @icon = attributes['icon']
      @first_sales_date = attributes['first_sales_date']
      @last_sales_date = attributes['last_sales_date']
    end

    def sales(options = {})
      response = AppAnnie.connection.get do |req|
        req.headers['Authorization'] = "Bearer #{AppAnnie.api_key}"
        req.headers['Accept'] = 'application/json'
        req.url "/v1/accounts/#{@account_id}/apps/#{@id}/sales", options
      end

      if response.status == 200
        JSON.parse(response.body)['sales_list']
      else
        ErrorResponse.raise_for(response)
      end
    end

  end
end
