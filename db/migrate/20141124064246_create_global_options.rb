class CreateGlobalOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :global_options_global_options do |t|
      t.string :name, unique: true
      t.text :value
      t.timestamps
    end
  end
end
