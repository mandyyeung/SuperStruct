json.array!(@pcos) do |pco|
  json.extract! pco, :id, :num, :type, :description, :discovery, :sub_proposal_num, :al_num, :ddc_co_num, :sub_co_num, :proposal_received, :df_submitted, :df_returned, :sent_to_gt, :cleared_gt, :sent_to_ddc, :ddc_approved, :eao, :approved, :approximate, :proposed, :tstv_estimate, :gt_estimate, :submitted, :ddc_approved, :bc_to, :deduct, :bc_from, :add, :used_allowance, :tdrive
  json.url pco_url(pco, format: :json)
end
