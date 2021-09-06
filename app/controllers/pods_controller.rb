class PodsController < ApplicationController
  def index
    @pods = Pod.all
  end
end
