// Code thanks to @nitesuit from https://github.com/nitesuit/Blog

import Foundation
import Plot

extension Node where Context == HTML.BodyContext {
    static func footer(for site: LascorbeCom) -> Node {
        let currentYear = Calendar.current.component(.year, from: Date())
        return .div(
            .class("footer pure-u-1"),
            .div(
                .class("pure-u-1"),
                .text("© \(currentYear) Luis Ascorbe")
            ),
            .div(
                .class("pure-u-1"),
                .text("Generated using "),
                .a(
                    .text("Publish"),
                    .href("https://github.com/johnsundell/publish")
                ),
                .text(". 100% JavaScript-free.")
            ),
            .div(
                .class("pure-u-1"),
                .a(
                    .text("RSS"),
                    .href("/feed.rss")
                ),
                .text(" | "),
                a(
                    .text("About"),
                    .href("/about")
                )
            )
        )
    }
}
