class CreateAuthorities < ActiveRecord::Migration
  def change
    create_table :authorities do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :authority

      t.timestamps null: false
    end
  end
end
