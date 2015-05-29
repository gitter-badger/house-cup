ActiveAdmin.register Member do

permit_params :school_id, :house_id, :email, :name, :badge_id

index do
	column :house
	column :name
	column :badge_id
	column :email
	actions
end

filter :house
filter :name
filter :email
filter :badge_id

form do |f|
    f.inputs "Member" do
      f.input :house
      f.input :name
      f.input :email
      f.input :badge_id
    end
    f.actions
  end

controller do
    def scoped_collection
      Member.where(:school_id => current_admin_user.school_id).all
    end

    def update
	    params[:member][:school_id] = current_admin_user.school_id
	    super
	  end

	  def create
	    params[:member][:school_id] = current_admin_user.school_id
	    super
	  end
  end

end
