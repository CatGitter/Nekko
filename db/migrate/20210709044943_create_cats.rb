class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string  :name,          null: false
      t.string  :age,           null: false
      t.string  :breed,         null: false
      t.integer :prefecture_id, null: false
      t.integer :sex_id,        null: false
      t.integer :vaccine_id,    null: false
      t.integer :castration_id, null: false
      t.text    :personality,   null: false
      t.text    :health,        null: false
      t.text    :adopt_method,  null: false
      t.text    :remarks
      t.references :user,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
