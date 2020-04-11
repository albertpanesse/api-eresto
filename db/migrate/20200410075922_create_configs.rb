class CreateConfigs < ActiveRecord::Migration[6.0]
  def change
    create_table :configs do |t|
      t.string :cfgname
      t.string :cfgdesc
      t.string :cfgtype
      t.string :cfgvalue

      t.timestamps
    end
  end
end
