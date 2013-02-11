class CreateFirstAppinfos < ActiveRecord::Migration
  def change
    create_table :first_appinfos do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
