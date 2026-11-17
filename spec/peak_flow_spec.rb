require "yaml"

describe "Peak Flow path filtering" do
  let(:config) { YAML.load_file(File.expand_path("../peak_flow.yml", __dir__)) }

  it "keeps the broad rule before the ordered documentation exclusions" do
    expect(config.fetch("paths")).to eq([
      "**/*",
      "!**/*.md",
      "!**/.github/**",
      "!**/docs/**"
    ])
  end

  it "runs the build for source and shared build inputs" do
    expect(path_filter_matches?("lib/global_options.rb")).to be true
    expect(path_filter_matches?("Gemfile.lock")).to be true
    expect(path_filter_matches?("peak_flow.yml")).to be true
  end

  it "does not run the build for documentation-only changes" do
    expect(path_filter_matches?("README.md")).to be false
    expect(path_filter_matches?("docs/usage.md")).to be false
  end

  private

  def path_filter_matches?(changed_path)
    matched = false
    config.fetch("paths").each do |rule|
      negated = rule.start_with?("!")
      pattern = negated ? rule[1..-1] : rule
      matched = !negated if File.fnmatch?(pattern, changed_path, File::FNM_PATHNAME)
    end
    matched
  end
end
