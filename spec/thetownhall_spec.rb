require File.dirname(__FILE__) + '/spec_helper'

describe "Thetownhall" do
  it "should do nothing" do
    get '/'
    last_response.should have_selector("h2:contains('Hello There, buddy!')")
  end
end
