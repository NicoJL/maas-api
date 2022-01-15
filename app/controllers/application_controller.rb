class ApplicationController < ActionController::API
	before_action :authenticate 

	def authenticate
		if request.headers["Authorization"]
			begin
				auth_header = request.headers["Authorization"]
				p request.headers["User-Agent"]
				p auth_header
				p token(auth_header)
				p secret
				decode_token = JWT.decode(token(auth_header), secret)
				payload = decode_token.first
				user_id = payload["user_id"]
				@user = User.find(user_id)
			rescue => exception
				render json: { message: "Error #{exception}" }, status: :forbidden
			end
		else
			render json: { message: "No Authorization header sent" }, status: :forbidden
		end
	end

	def token(auth_header)
		auth_header.split(" ")[0]
	end

	def secret
		secret = ENV["SECRET_KEY_BASE"] || Rails.application.secrets.secret_key_base
	end

	def create_token(payload)
		JWT.encode(payload, secret)
	end
end
