import class Foundation.Bundle

extension Foundation.Bundle {
    static var module: Bundle = {
        let mainPath = Bundle.main.bundleURL.appendingPathComponent("MarkdownView_MarkdownView.bundle").path
        let buildPath = "/Users/ozgurersoz/Documents/MarkdownView/.build/arm64-apple-macosx/debug/MarkdownView_MarkdownView.bundle"

        let preferredBundle = Bundle(path: mainPath)

        guard let bundle = preferredBundle ?? Bundle(path: buildPath) else {
            fatalError("could not load resource bundle: from \(mainPath) or \(buildPath)")
        }

        return bundle
    }()
}