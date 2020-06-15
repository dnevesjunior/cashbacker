module OffersHelper
  def reverse_status(status)
    if status == 'enabled'
      'disable'
    else
      'enable'
    end
  end
end
