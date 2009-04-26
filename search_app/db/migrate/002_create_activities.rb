class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.column :course_id, :integer
      t.column :name, :string, :limit => 50, :null => false
      t.timestamps
      t.timestamps
    end
  Activity.create :course_id=>1,:name => "Cricket"
    Activity.create :course_id=>1,:name => "Volleyball"
    Activity.create :course_id=>1,:name => "Basketball"
    Activity.create :course_id=>2,:name => "Mathmatics"
    Activity.create :course_id=>2,:name => "Science"
    Activity.create :course_id=>2,:name => "Social"
    Activity.create :course_id=>3,:name => "Antiz"
    Activity.create :course_id=>3,:name => "Gateway"
    Activity.create :course_id=>3,:name => "RAC"
  end

  def self.down
    drop_table :activities
  end
end
