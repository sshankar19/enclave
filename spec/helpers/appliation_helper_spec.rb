RSpec.describe ApplicationHelper, type: :helper do
  describe '#flash_context' do
    specify { expect(helper.flash_context('notice')).to eq :info }
    specify { expect(helper.flash_context('success')).to eq :success }
    specify { expect(helper.flash_context('error')).to eq :danger }
    specify { expect(helper.flash_context('alert')).to eq :warning }
  end
end
