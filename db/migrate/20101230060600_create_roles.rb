class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :title
      t.timestamps
    end

    puts "Adding default role (student) to table ..."
    Role.create!(:title => "student")
  end

  def self.down
    drop_table :roles
  end
end
