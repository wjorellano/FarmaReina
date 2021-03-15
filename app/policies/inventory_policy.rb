class InventoryPolicy
    attr_reader :user, :inventory

    def initialize(user, inventory)
        @user = user
        @inventory = inventory
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