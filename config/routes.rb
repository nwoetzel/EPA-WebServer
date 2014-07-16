Rails.application.routes.draw do

  get  '/submit_single_gene', to: 'raxml#submit_single_gene'
  get  '/submit_multi_gene' , to: 'raxml#submit_multi_gene'
  get  '/look'              , to: 'raxml#look'
  get  '/contact'           , to: 'raxml#contact'
  get  '/about'             , to: 'raxml#about'
  post '/findJob'           , to: 'raxml#findJob'
  post '/listOldJobs'       , to: 'raxml#listOldJobs'
  post '/submitJob'         , to: 'raxml#submitJob'
  root                        to: 'raxml#index'
  
end
