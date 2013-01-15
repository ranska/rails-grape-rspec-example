require 'grape'
  class ExampleAPI < Grape::API
    prefix 'api'
    version 'v1', :using => :path
    resource 'entries' do
      get do
        Entry.all.to_json
      end

      get ':id' do
        Entry.find(params[:id])
      end
    end
  end
