# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_insidertrading"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Insider Trading API - Ruby Client"
  spec.description   = "Insider Trading returns recent SEC Form 4 insider transactions for a US public company by ticker - who bought or sold, their role, the number of shares, price and transaction type - plus a derived insider-sentiment summary with net buy/sell activity and cluster-buy detection calculated for you."
  spec.homepage      = "https://apiverve.com/marketplace/insidertrading?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/insidertrading-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/insidertrading"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
