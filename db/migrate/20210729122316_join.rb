class Join < ActiveRecord::Migration[5.2]
  def change
    create_table :joins do |t|
    t.belongs_to :doctor, index: true
    t.belongs_to :speciality, index: true
    end
  end
end
