class CreateResumes < ActiveRecord::Migration[7.1]
  def change
    create_table :resumes do |t|
      t.string :user_name
      t.date :order_date
      t.integer :order_num

      t.timestamps
    end
  end
end
