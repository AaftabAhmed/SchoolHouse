class PodRequestsController < ApplicationController

  def create
    params[:child_ids].each do |child_id|
      @request = PodRequest.create!(child_id: child_id, pod_id: params[:pod_id])
    end
      redirect_to root_path, notice: 'Sent Request Successfully'
    rescue => e
      redirect_to root_path, notice: 'Something went wrong!. Please contact to site admin'
  end

end
