// Code thanks to @nitesuit from https://github.com/nitesuit/Blog

import Plot

extension Node where Context == HTML.BodyContext {
    static func sidebar(for site: LascorbeCom) -> Node {
        return .profile(for: site)
    }
}

private extension Node where Context == HTML.BodyContext {
    static func profile(for site: LascorbeCom) -> Node {
        return .div(
            .class("sidebar pure-u-1 pure-u-md-1-4"),
            .div(
                .class("sidebar-header"),
                .header(for: site)
            ),
            .div(
                .class("sidebar-profile"),
                .grid(
                    .div(
                        .class("pure-u-md-1-1 pure-u-1-4"),
                        .class("author__avatar"),
                        .img(
                            .src("https://avatars0.githubusercontent.com/u/1515520?s=460&v=4")
                        )
                    ),
                    .div(
                        .class("pure-u-md-1-1 pure-u-3-4"),
                        .h1(
                            .class("brand-title"),
                            .a(
                                .text("Luis Ascorbe"),
                                .href("/")
                            )
                        ),
                        .h3(
                            .class("brand-tagline"),
                            .text(site.description)
                        )
                    )
                ),
                .div(
                    .class("social-media-container"),
                    .grid(
                        .forEach(site.socialMedia, { link in
                            .div(
                                .class("pure-u-md-1-1"),
                                .a(
                                    .href(link.url),
                                    .icon(link.icon),
                                    .a(
                                        .class("social-media"),
                                        .href(link.url),
                                        .text(link.title)
                                    )
                                )
                            )
                        })
                    )
                )
            )
        )
    }
}
