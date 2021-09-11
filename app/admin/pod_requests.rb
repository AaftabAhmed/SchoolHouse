ActiveAdmin.register PodRequest do
  actions :index, :show

  permit_params :child_id, :pod_id, :status

  scope :pending
  scope :approved
  scope :rejected

  # Action Methods for Aprrove or Reject the POD Request
  member_action :approve, method: :put do
    request = PodRequest.find(params[:id])
    request.update(:status => 1)
    redirect_to admin_pod_requests_path
  end
  member_action :reject, method: :put do
    request = PodRequest.find(params[:id])
    request.update(:status => 2)
    redirect_to admin_pod_requests_path
  end

  # Table for Index Page
    index do
      column "Child Name", :child
      column "POD Name",:pod
      column :status
      actions defaults: false do |pod_request|
      if pod_request.pending?
        link_to "Approved", approve_admin_pod_request_path(pod_request), method: :put
      end
      end
      actions defaults: false do |pod_request|
        if !pod_request.approved? && !pod_request.rejected?
        link_to "Reject", reject_admin_pod_request_path(pod_request), method: :put
        end
      end
    end

end
