module Api
    module V1
      class Root < Grape::API
        prefix :api
        mount Api::V1::Graduates
        # mount API::V1::AnotherResource
      end
    end
end
