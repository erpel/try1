authorization do 
	role :admin do
		has_permission_on [:import_assets], :to => [:index, :csv_import]
		has_permission_on [:tickets,:assets, :roles], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
	end
	
	role :accredited do
		has_permission_on [:tickets], :to => [:index, :show, :new, :create, :edit, :update]
		has_permission_on [:assets], :to => [:index]
	end

	role :guest do
		
	end
end