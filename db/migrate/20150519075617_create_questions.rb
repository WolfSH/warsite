class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :asker_name, null: true
      t.text   :question, null: false
      t.text   :asker_email, null: true

      t.timestamps null: false
    end

    create_table :answers do |t|
      t.belongs_to :question, index: true
      t.text   :answer, null: true

      t.timestamps null: false
    end
  end
end
