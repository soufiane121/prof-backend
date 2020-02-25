require 'byebug'
class GuestsController < ApplicationController

    def index
        users = Guest.all
        render json: users
    end

    def create
        @user = Guest.create(filter_params)
        if @user.valid?
            GuestMailer.with(user: @user, message: params[:message]).welcome_email.deliver_now
            render json: {greate: :done}, status: 200
        else
            render json: { errors: @user.errors.full_messages}
        end
      end

      private

      def filter_params
          params.require(:guest).permit(:first_name, :last_name, :email, :message)
      end

end
