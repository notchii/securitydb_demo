class CreatePartnerCompanies < ActiveRecord::Migration
  def change
    create_table :partner_companies do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
