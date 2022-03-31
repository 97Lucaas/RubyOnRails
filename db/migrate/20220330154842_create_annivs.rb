class CreateAnnivs < ActiveRecord::Migration[6.1]
  def change
    create_table :annivs do |t|
      t.string :name
      t.date :birthdate
      t.boolean :active

      t.timestamps
    end
  end
end
