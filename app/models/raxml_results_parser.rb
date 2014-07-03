class RaxmlResultsParser

  attr_reader :data ,:names, :files

  def initialize(file_ending)
    @job_id = file_ending
    @data = []
    @names = []
    @files = []
    getFiles
  end

  def getFiles
    Dir.glob( Rails.root.join( "public", "jobs", "#{@job_id}", "RAxML_*").to_s){|file| 
      @files << file
      if file =~ /.+\/(RAxML_.+)\.#{@job_id}(.*)$/
        @names << $1+$2
      end
    }
    Dir.glob( Rails.root.join( "public", "jobs", "#{@job_id}", "alignment_file*").to_s){|file| 
      if file =~ /.+\/(alignment_file.*)$/
        @files << file
        @names << $1
      end
    }
    Dir.glob( Rails.root.join( "public", "jobs", "#{@job_id}", "partition_file*").to_s){|file| 
      if file =~ /.+\/(partition_file.*)$/
        @files << file
        @names << $1
      end
    }

    Dir.glob( Rails.root.join( "public", "jobs", "#{@job_id}", "queryfile*").to_s){|file| 
      if file =~ /.+\/(queryfile.*)$/
        @files << file
        @names << $1
      end
    }
    
    Dir.glob( Rails.root.join( "public", "jobs", "#{@job_id}", "cluster*").to_s){|file| 
      if file =~ /.+\/(cluster.*)$/
        @files << file
        @names << $1
      end
    }

    Dir.glob( Rails.root.join( "public", "jobs", "#{@job_id}", "*.phyloxml").to_s){|file| 
      if file =~ /.+\/([\w_]+.phyloxml)$/
        @files << file
        @names << $1
      end
    }

    @files << Rails.root.join( "public", "jobs", "#{@job_id}", "tree_file").to_s
    @names << "input_tree"
  end
end
