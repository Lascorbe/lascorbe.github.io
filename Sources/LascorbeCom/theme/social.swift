import Foundation
import Publish
import Plot

struct SocialMedia {
    let title: String
    let url: String
    let icon: String
}

extension SocialMedia {
    static var email: SocialMedia {
        return SocialMedia(
            title: "Email",
            url: "mailto:website@ascor.be",
            icon: "far fa-envelope"
        )
    }
    
    static var github: SocialMedia {
        return SocialMedia(
            title: "GitHub",
            url: "https://github.com/lascorbe",
            icon: "fab fa-github"
        )
    }
    
    static var twitter: SocialMedia {
        return SocialMedia(
            title: "Twitter",
            url: "https://twitter.com/lascorbe",
            icon: "fab fa-twitter"
        )
    }
    
    static var linkedIn: SocialMedia {
        return SocialMedia(
            title: "LinkedIn",
            url: "https://www.linkedin.com/in/lascorbe",
            icon: "fab fa-linkedin"
        )
    }
}
