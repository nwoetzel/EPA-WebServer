class CreateRaxmls < ActiveRecord::Migration
  def self.up
    create_table :raxmls do |t|
      t.string  :query
      t.string  :alifile
      t.string  :treefile
      t.string  :outfile
      t.string  :substmodel
      t.string  :speed
      t.string  :heuristic
      t.string  :h_value
      t.string  :email
      t.string  :errorfile
      t.string  :parfile
      t.string  :queryfile
      t.string  :jobid
      t.string  :user_ip
      t.string  :job_description
      t.integer :b_random_seed
      t.integer :b_runs 
      t.string  :use_heuristic , :default => 'F', :limit => 1
      t.string  :use_bootstrap , :default => 'F', :limit => 1
      t.string  :use_queryfile , :default => 'F', :limit => 1
      t.string  :use_clustering, :default => 'F', :limit => 1
      t.string  :mga           , :default => 'F', :limit => 1
      t.string  :use_papara    , :default => 'F', :limit => 1
      t.string  :status        ,                  :limit => 7
      t.timestamps
    end
  end

  def self.down
    drop_table :raxmls
  end

end
