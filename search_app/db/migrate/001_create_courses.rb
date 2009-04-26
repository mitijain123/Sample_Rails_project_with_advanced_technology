class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
       t.column :name, :string, :limit => 50, :null => false
      t.timestamps
    end
    Course.create :name => "sports"
    Course.create :name => "Teaching"
    Course.create :name => "Company"
  end

  def self.down
    drop_table :courses
  end
end
