class CreateKunis < ActiveRecord::Migration[5.2]
  def change
    create_table :kunis do |t|
      t.string :content

      t.timestamps
    end
  end
end
