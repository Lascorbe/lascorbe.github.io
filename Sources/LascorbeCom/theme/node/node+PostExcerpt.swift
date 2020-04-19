// Code thanks to @nitesuit from https://github.com/nitesuit/Blog

import Foundation
import Publish
import Plot

extension Node where Context == HTML.BodyContext {
    static func postExcerpt(for item: Item<LascorbeCom>, on site: LascorbeCom) -> Node {
        let dateAndTime = DateFormatter.blog.string(from: item.date) + " · ⏱ \(item.metadata.timeToRead)"
        return .section(
            .class("post"),
            .header(
                .class("post-header"),
                .h2(
                    .class("post-title"),
                    .a(
                        .href(item.path),
                        .text(item.title)
                    )
                ),
                .p(
                    .class("post-meta"),
                    .text(dateAndTime),
                    tagList(for: item, on: site)
                )
            ),
            .div(
                .class("post-description"),
                .p(.text(item.metadata.description))
            )
        )
    }
}
