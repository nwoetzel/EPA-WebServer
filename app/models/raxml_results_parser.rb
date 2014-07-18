class RaxmlResultsParser

  attr_reader :data ,:names, :filenames

  def initialize(file_ending)
    @job_id = file_ending
    @data = []
    @names = []
    @filenames = []
    getFiles
  end

  def getFiles
    Dir.glob("#{RAILS_ROOT}/public/jobs/#{@job_id}/RAxML_*"){|file| 
      if file =~ /.+\/(RAxML_.*)$/
        @filenames << $1
      end
      if file =~ /.+\/(RAxML_.+)\.#{@job_id}(.*)$/
        @names << $1+$2
      end
    }
    Dir.glob("#{RAILS_ROOT}/public/jobs/#{@job_id}/alignment_file*"){|file| 
      if file =~ /.+\/(alignment_file.*)$/
        @filenames << $1
        @names << $1
      end
    }
    Dir.glob("#{RAILS_ROOT}/public/jobs/#{@job_id}/partition_file*"){|file| 
      if file =~ /.+\/(partition_file.*)$/
        @filenames << $1
        @names << $1
      end
    }

    Dir.glob("#{RAILS_ROOT}/public/jobs/#{@job_id}/queryfile*"){|file| 
      if file =~ /.+\/(queryfile.*)$/
        @filenames << $1
        @names << $1
      end
    }
    
     Dir.glob("#{RAILS_ROOT}/public/jobs/#{@job_id}/cluster*"){|file| 
      if file =~ /.+\/(cluster.*)$/
        @filenames << $1
        @names << $1
      end
    }

    Dir.glob("#{RAILS_ROOT}/public/jobs/#{@job_id}/*.phyloxml"){|file| 
      if file =~ /.+\/([\w_]+.phyloxml)$/
        @filenames << $1
        @names << $1
      end
    }

    @filenames << "tree_file"
    @names << "input_tree"
  end
end
