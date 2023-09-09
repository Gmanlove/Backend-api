class ApiController < ApplicationController
  def get_info
    slack_name = params[:slack_name]
    track = params[:track]&.downcase # Convert to lowercase if track is provided

    current_day = Time.now.strftime('%A')
    utc_time = Time.now.utc.strftime('%Y-%m-%dT%H:%M:%SZ')

    github_file_url = 'https://github.com/Gmanlove/Backend-api/blob/main/app/controllers/api_controller.rb'
    github_repo_url = 'https://github.com/Gmanlove/Backend-api'

    response_data = {
      slack_name: slack_name,
      current_day: current_day,
      utc_time: utc_time,
      track: track,
      github_file_url: github_file_url,
      github_repo_url: github_repo_url,
      status_code: 200
    }

    render json: response_data
  end
end
