class CreateKots < ActiveRecord::Migration[6.0]
  def change
    create_table :kots do |t|
      t.integer :tablenum
      t.string :custname
      t.datetime :dtime

      t.timestamps
    end
  end
end
