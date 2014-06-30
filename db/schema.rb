# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100623122727) do

  create_table "raxmls", :force => true do |t|
    t.string   "query"
    t.string   "alifile"
    t.string   "treefile"
    t.string   "outfile"
    t.string   "substmodel"
    t.string   "speed"
    t.string   "heuristic"
    t.string   "h_value"
    t.string   "email"
    t.string   "errorfile"
    t.string   "parfile"
    t.string   "queryfile"
    t.string   "jobid"
    t.string   "user_ip"
    t.string   "job_description"
    t.integer  "b_random_seed"
    t.integer  "b_runs"
    t.string   "use_heuristic",   :limit => 1, :default => "F"
    t.string   "use_bootstrap",   :limit => 1, :default => "F"
    t.string   "use_queryfile",   :limit => 1, :default => "F"
    t.string   "use_clustering",  :limit => 1, :default => "F"
    t.string   "mga",             :limit => 1, :default => "F"
    t.string   "use_papara",      :limit => 1, :default => "F"
    t.string   "status",          :limit => 7
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "userinfos", :force => true do |t|
    t.string   "ip",                  :limit => 16, :null => false
    t.integer  "saved_submissions"
    t.integer  "overall_submissions"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  add_index "userinfos", ["ip"], :name => "index_userinfos_on_ip", :unique => true

end
