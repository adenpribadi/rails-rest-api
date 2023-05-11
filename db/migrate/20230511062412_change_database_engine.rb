class ChangeDatabaseEngine < ActiveRecord::Migration[5.2]
  def change
  	enable_extension 'mysql2'
    ActiveRecord::Base.connection.execute("ALTER TABLE posts ENGINE=InnoDB")
    ActiveRecord::Base.connection.execute("ALTER TABLE users ENGINE=InnoDB")
    ActiveRecord::Base.connection.execute("ALTER TABLE comments ENGINE=InnoDB")
  
  end
end
