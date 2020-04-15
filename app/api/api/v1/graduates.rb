module Api
    module V1
      class Graduates < Grape::API
        prefix :api
        version "v1", using: :path
        default_format :json
        format :json
        resource :graduates do
          desc "Return all graduates"
          get "", root: :graduates do
            Graduate.all
          end
          get ":id", root: :graduates do
            Graduate.where(id: params[:id]).first!
          end
          desc "create a new Graduate"
          params do
              requires :name, type: String
          end
          post do
            Graduate.create!({
              name:params[:name],
            })
          end

          desc "delete an Graduate"
          params do
            requires :id, type: String 
          end
          delete ':id' do
            Graduate.find(params[:id]).destroy!
          end
          desc "update an name of the graduate"
            params do 
              requires :id, type: String
            end
            put ':id' do
              Graduate.find(params[:id]).update({
                      name:params[:name]
                     })
            end
         end
       end
    end
end
