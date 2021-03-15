class ProductPolicy
    attr_reader :user, :product

    def initialize(user, product)
        @user = user
        @product = product
    end

    def index?
        @user.has_role? :admin
    end
  
    def new?
        @user.has_role? :admin
    end
  
    def show?
        @user.has_role? :admin
    end
      
    def edit?
        @user.has_role? :admin
    end
    
end