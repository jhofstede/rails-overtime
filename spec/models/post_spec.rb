require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = Post.create(date: Date.today, rationale: "hahahaha")
  end
  describe "creation" do
    it "can be created" do
      expect(@post).to be_valid
    end
    it "posts must have date and rationale" do
      @post.date = nil
      @post.rationale = nil
      expect(@post).not_to be_valid
    end
  end
end
