class AddNameAndEmailAndSubjectAndQuestionToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :name, :string
    add_column :contacts, :email, :string
    add_column :contacts, :subject, :string
    add_column :contacts, :question, :string
  end
end
