class Admin::UsersController < ApplicationController
    def index
        @admin_users = Admin::User.all
    end
end