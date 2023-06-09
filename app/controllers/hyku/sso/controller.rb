module Hyku
  module Sso
    class Controller < ::Hyku::API::V1::SessionsController

      before_action :set_account, only: :callback

      def auth
        redirect_to Sso::AuthService.new(host: request.host).generate_authorisation_url
      end

      def callback
        service = Sso::CallBackService.new(code: params[:code])

        handled = false

        service.handle do |profile, password|

          user = User.find_or_create_by(email: profile.email).tap do |u|
            u.password = password
            u.password_confirmation = password
            u.email = profile.email
          end
          # this code is the same as the code used in the api for authentication
          user = User.find_for_database_authentication(email: user.email)
          sign_in user
          set_jwt_cookies(user)
          handled = true

        end

        raise Sso::Error, "Failed to handle workos code #{params[:code]}" unless handled

        redirect_to "/dashboard"
        # Use the information in `profile` for further business logic.
      end

      def current_account
        @account ||= Account.find_by cname: request.env["SERVER_NAME"]
      end

      def set_account
        AccountElevator.switch!(current_account.cname) if current_account.present?
      end

    end
  end
end
