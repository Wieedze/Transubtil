class CreateArtistes < ActiveRecord::Migration[8.0]
  def change
    create_table :artistes do |t|
      t.timestamps
    end
  end
end
