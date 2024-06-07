class AddColumnToResumes < ActiveRecord::Migration[7.1]
  def change
    add_column :resumes, :order_total, :string
    add_column :resumes, :total_money, :float
  end
end
