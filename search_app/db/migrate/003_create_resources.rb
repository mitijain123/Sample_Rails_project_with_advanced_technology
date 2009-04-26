class CreateResources < ActiveRecord::Migration
  def self.up
    create_table :resources do |t|
      t.column :activity_id, :integer
      t.column :name, :string, :limit => 50, :null => false
      t.timestamps
    end
    Resource.create :activity_id=>1,:name => "sachin"
    Resource.create :activity_id=>1,:name => "dravid"
    Resource.create :activity_id=>2,:name => "Mitesh"
    Resource.create :activity_id=>2,:name => "Hardik"
    Resource.create :activity_id=>3,:name => "Aditya"
    Resource.create :activity_id=>3,:name => "Kartik"
    Resource.create :activity_id=>4,:name => "Mitesh"
    Resource.create :activity_id=>4,:name => "Adiga"
    Resource.create :activity_id=>5,:name => "Govind"
    Resource.create :activity_id=>5,:name => "Gopal"
    Resource.create :activity_id=>6,:name => "Rahul"
    Resource.create :activity_id=>6,:name => "Rakesh"
    Resource.create :activity_id=>7,:name => "Venkat"
    Resource.create :activity_id=>7,:name => "Viji"
    Resource.create :activity_id=>8,:name => "Chirag"
    Resource.create :activity_id=>8,:name => "Hardik"
    Resource.create :activity_id=>9,:name => "Mitesh"
    Resource.create :activity_id=>9,:name => "Karthik"
  end

  def self.down
    drop_table :resources
  end
end
