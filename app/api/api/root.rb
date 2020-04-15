module Api
    class Root < Grape::API
      prefix :api
      mount Api::V1::Root
    end
end
