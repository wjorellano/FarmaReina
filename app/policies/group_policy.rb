class  GroupPolicy
    attr_reader :user, :group

    def initialize(user, group)
        @user = user
        @group = group
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

    # def destroy?
    #     @user.has_role? :admin
    # end
    
end