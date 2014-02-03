class CreateAmendments < ActiveRecord::Migration
  def change
   execute "CREATE TABLE amendments (id integer NOT NULL AUTO_INCREMENT PRIMARY KEY, 
   c_code varchar(2), c_name varchar(35), tran_id integer, priority tinyint, 
   created_at datetime, updated_at datetime) ENGINE=InnoDB;" 
    
  end
end
