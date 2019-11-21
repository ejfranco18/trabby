class CreateRequestCaches < ActiveRecord::Migration[5.2]
  def change
    create_table :request_caches do |t|
      t.string :url, null: false
      t.json :response, default: {}
    end

    add_index :request_caches, :url, unique: true
  end
end
