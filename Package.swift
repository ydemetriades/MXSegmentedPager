// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "MXSegmentedPager",
  platforms: [.iOS(.v12)],
  products: [
    .library(
      name: "MXSegmentedPager",
      targets: ["MXSegmentedPager"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/sthwicked/MXPagerView", from: "1.0.1"),
    .package(url: "https://github.com/sthwicked/MXParallaxHeader", from: "1.1.1"),
    .package(url: "https://github.com/sthwicked/MXSegmentedControl", from: "1.1.2"),
  ],
  targets: [
    .target(
      name: "MXSegmentedPager",
      dependencies: [
        "MXPagerView",
        "MXSegmentedControl",
        "MXParallaxHeader"
      ],
      path: "MXSegmentedPager",
      publicHeadersPath: "."
    )
  ],
  swiftLanguageVersions: [.v5],
  cLanguageStandard: .c11
)
