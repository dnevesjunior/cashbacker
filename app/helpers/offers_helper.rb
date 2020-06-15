module OffersHelper
  def reverse_status(status)
    # Still need to fix when disabled by admin
    if status == 'enabled'
      'disable'
    else
      'enable'
    end
  end
end
