module CurrentCart
  private
    def set_cart
      @cart = Cart.find(session[:cart_id]) 
    rescue ActiveRecord::RecordNotFound #name of error message they would get if no cart with that id existed
      @cart = Cart.create(user_id: current_user.id)
      session(:cart_id) = @cart.id
    end
end
