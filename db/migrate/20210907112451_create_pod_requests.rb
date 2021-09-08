class CreatePodRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :pod_requests do |t|
      t.belongs_to :child
      t.belongs_to :pod
      t.integer :status

      t.timestamps
    end
  end
end
