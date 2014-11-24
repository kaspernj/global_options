require "spec_helper"

describe GlobalOptions::GlobalOption do
  let(:option){ create :global_option, name: "test" }

  context "#by_name" do
    it "raises exception when option is not found" do
      expect {
        GlobalOptions::GlobalOption.by_name("test")
      }.to raise_error(GlobalOptions::GlobalOption::NotFound)
    end

    it "finds them when they exist" do
      option
      GlobalOptions::GlobalOption.by_name("test").should eq option
    end
  end

  context "#set" do
    it "creates" do
      old_value = option.value
      GlobalOptions::GlobalOption.set("my_option", "my_value")
      GlobalOptions::GlobalOption.get("my_option").should eq "my_value"
      option.reload.value.should eq old_value
    end

    it "updates" do
      GlobalOptions::GlobalOption.set("test", "my_value")
      GlobalOptions::GlobalOption.get("test").should eq "my_value"
    end
  end
end
