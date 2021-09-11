class PodsController < ApplicationController
  def index
    @q = Pod.ransack(params[:q])
    @pods = @q.result(distinct: true)
  end
end
