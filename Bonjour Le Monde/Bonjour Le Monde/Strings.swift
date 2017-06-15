//
//  Strings.swift
//  Bonjour Le Monde
//
//  Created by Chetan Agarwal on 6/13/17.
//  Copyright © 2017 Chetan Agarwal. All rights reserved.
//

import Foundation

struct Strings {
    
    static var viewTitle: String {
        return NSLocalizedString("Hello World!",
                                 comment: "The default greeting used by coders since 1972! Must fit on navigation bar title")
    }
    
    static var applicationCaption: String {
        return NSLocalizedString("Find inspiration and collect ideas for your home",
                                 comment: "Application main caption - can be 1-2 sentences long")
    }
    
    static var favouriteQuote: String {
        return NSLocalizedString("My favourite quote is \"Insert quote here\"!",
                                 comment: "A text with quotes, please use the quotation marks suitable for your language. Normal quotes must use a slash in front of the quote marks (Escape character)")
    }
    
    static var cantEscapeASlash: String {
        return NSLocalizedString("Sometimes we need special characters like a Slash \\ Darth Vader, maybe?!",
                                 comment: "Just using this to depict how we might need to consider more Escape characters such as a slash")
    }
    
    static var numberOfReviewsFormat: String {
        return NSLocalizedString("%d review(s)",
                                 comment: "Number of reviews, displayed in table cells. Can be about 20 characters long.")
    }
    
    static var termsOfService: String {
        return NSLocalizedString("Terms & Conditions",
                                 comment: "Part of Legal disclaimer displayed at bottom of Sign up screens, Final text in English reads - By registering, you agree to the Terms & Conditions")
        
    }
    
    static var termsOfServiceFormat: String {
        return NSLocalizedString("By registering, you agree to the %@",
                                 comment: "Legal disclaimer displayed at bottom of Sign up screens, Final text in English reads - By registering, you agree to the Terms & Conditions")
    }
    
    static var professionalCategoryName: String {
        return NSLocalizedString("Architects",
                                 comment: "Type of professional - normally this would be part of an API response.")
    }
    
    static var professionalLocationName: String {
        return NSLocalizedString("Berlin",
                                 comment: "Name of city/location for professional - normally this would be part of an API response.")
    }
    
    static var professionalTypeAndLocationFormat: String {
        return NSLocalizedString("%1$@ in %2$@",
                                 comment: "Displayed in table cells of list of Professionals, Example: Architects in Berlin. Placeholders: #1: Type of professional, #2: Name of city/location.")
    }
    
}
