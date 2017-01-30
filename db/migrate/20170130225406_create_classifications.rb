class CreateClassifications < ActiveRecord::Migration[5.0]
  def change
    create_table :classifications do |t|
      t.belongs_to :user, index: true
      t.belongs_to :movie, index: true
      t.integer :score
      t.timestamps
    end
  end
end
