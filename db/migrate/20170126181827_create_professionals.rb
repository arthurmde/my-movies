class CreateProfessionals < ActiveRecord::Migration[5.0]
  def change
    create_table :professionals do |t|
      t.string :name
      t.datetime :birthdate
      t.string :gender
      t.string :country
      t.string :type

      t.timestamps
    end
  end
end
