require 'rails_helper'
include RandomData

RSpec.describe SponsoredPost, type: :model do
  let(:title) { RandomData.random_sentence }
  let(:body) { RandomData.random_paragraph }
  let(:price) { 99 }
  let(:sponsored_post) {SponsoredPost.create!(title: title, body: body, price: 99) }

  describe "attributes" do
    it "has title, body, and price attributes" do
      expect(sponsored_post).to have_attributes(title: title, body: body, price: 99)
    end
  end
end
