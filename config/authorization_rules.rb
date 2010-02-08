authorization do 
	role :superuser do
		has_permission_on [:import_assets], :to => [:index, :csv_import]
		has_permission_on [:tickets,:assets, :roles], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
	end
	role :admin do
		has_permission_on [:import_assets], :to => [:index, :csv_import]
		has_permission_on [:tickets,:assets], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
	end
	
	role :user do
		has_permission_on [:tickets], :to => [:index, :show, :new, :create, :edit, :update]
		has_permission_on [:assets], :to => [:index]
	end

	role :guest do
		
	end
end