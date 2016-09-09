class AddAttributesToContacts < ActiveRecord::Migration[5.0]
  def change
  	add_column :contacts, :middle_name, :string
  	add_column :contacts, :biography, :text
  end
end
