class AddInfoToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :info, :text
  end
end
