// Code thanks to @nitesuit from https://github.com/nitesuit/Blog

import Plot

extension Node where Context == HTML.BodyContext {
    private static var sections: [LascorbeCom.SectionID] { [.posts, .about] }
    
    static func header(for site: LascorbeCom) -> Node {
        return .div(
            .div(
                .class("pure-menu pure-menu-horizontal"),
                .ul(
                    .class("pure-menu-list"),
                    .li(
                        .class("pure-menu-item pure-menu-selected"),
                        .a(
                            .class("pure-menu-link"),
                            .text("Home"),
                            .href("/")
                        )
                    ),
                    .li(
                        .class("pure-menu-item pure-menu-selected"),
                        .a(
                            .class("pure-menu-link"),
                            .text("About"),
                            .href("/about")
                        )
                    )
                )
            )
        )
    }
}
