class DatasetsController < ApplicationController

  def show
    @dataset=Public::Dataset.find(params['id'])
    send_data(@dataset.file_contents,
             type: @dataset.content_type,
             filename: @dataset.file_name,
             disposition: 'inline',
             )
  end
end
