module Api
    module V1
      class Graduates < Grape::API
        include Api::V1::Defaults
  
        resource :graduates do
          desc "Return all graduates"
          get "", root: :graduates do
            Graduate.all
          end
  
          desc "Return a graduate"
          params do
            requires :id, type: String, desc: "ID of the 
              graduate"
          end
          get ":id", root: "graduate" do
            Graduate.where(id: permitted_params[:id]).first!
          end
        end
      end
    end
  end