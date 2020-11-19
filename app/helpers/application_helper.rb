module ApplicationHelper
    def author_of(resource)
        user_signed_in? && resource.user_id == current_user.id
    end

    #confirm user signed in is admin
    def admin_confirmed
        user_signed_in? && current_user.admin_role?
    end  

    #confirm user signed in is seller
    def seller_confirmed
        user_signed_in? && current_user.seller_role?
    end 

    #confirm used signed in is customer 
    def customer_confirmed
        user_signed_in? && current_user.customer_role?
    end 
end
