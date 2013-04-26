class AddQuestionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :question, :text
  end
end
