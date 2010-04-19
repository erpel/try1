authorization do 
	role :superuser do
		has_permission_on [:import_assets], :to => [:index, :csv_import]
		has_permission_on [:tickets,:assets, :roles, :infobits, :infocollections,
		 :e_mail_texts, :data_center_addresses],
		 :to => [:index, :show, :new, :create, :edit, :update, :destroy]
	end
	role :admin do
		has_permission_on [:import_assets], :to => [:index, :csv_import]
		has_permission_on [:tickets,:assets, :e_mail_texts, :data_center_addresses],
		 :to => [:index, :show, :new, :create, :edit, :update, :destroy]
	end
	
	role :user do
		has_permission_on [:tickets, :e_mail_texts, :data_center_addresses],
		 :to => [:index, :show, :new, :create, :edit, :update]
		has_permission_on [:assets], :to => [:index, :show]
	end

	role :guest do
		
	end
end