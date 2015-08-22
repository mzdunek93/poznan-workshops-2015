class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :student, index: true, foreign_key: true
      t.date :january
      t.date :february
      t.date :march
      t.date :april
      t.date :may
      t.date :june
      t.date :july
      t.date :august
      t.date :september
      t.date :october
      t.date :november
      t.date :december

      t.timestamps null: false
    end
  end
end
