class CreateCrowdFundrCampaigns < ActiveRecord::Migration

  def change
    create_table :crowd_fundr_campaigns do |t|
      t.string   :name
      t.string   :tagline
      t.integer  :funding_goal
      t.integer  :total_funding
      t.datetime :starting_date
      t.datetime :finishing_date
    end
  end

end

# ORMs a CrowdFundrCampaign model adding ORM capabilities should subclass ActiveRecord::Base
# expect(campaign.class.superclass).to eq(ActiveRecord::Base)