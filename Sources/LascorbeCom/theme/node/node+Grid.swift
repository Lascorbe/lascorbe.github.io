// Code thanks to @nitesuit from https://github.com/nitesuit/Blog

import Foundation
import Publish
import Plot

extension Node where Context == HTML.BodyContext {
    static func grid(_ nodes: Node...) -> Node {
        .div(
            .id("layout"),
            .class("pure-g"),
            .group(nodes)
        )
    }
}
