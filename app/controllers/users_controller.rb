class UsersController < ApplicationController
 def profile
  @user = User.find(params[:id])
  @reviews = Review.where(:user_id => @user.id).limit(5)
  @products = Product.where(:user_id => @user.id)
 end

 private
 def test_method
 end
end
