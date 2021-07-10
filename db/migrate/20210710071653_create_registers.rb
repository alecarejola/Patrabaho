class CreateRegisters < ActiveRecord::Migration[6.1]
  def change
    create_table :registers do |t|
      t.string :LastName
      t.string :FirstName
      t.string :Email
      t.string :Password
      t.string :gender

      t.timestamps
    end
  end
end
