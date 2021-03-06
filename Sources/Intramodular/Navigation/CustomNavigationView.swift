//
// Copyright (c) Vatsal Manot
//

import Swift
import SwiftUI

#if os(iOS) || os(tvOS) || targetEnvironment(macCatalyst)

extension View {
    /// Configures the translucency of the navigation bar for this view.
    ///
    /// This modifier only takes effect when this view is inside of and visible
    /// within a `NavigationView`.
    ///
    /// - Parameters:
    ///     - isTranslucent: A Boolean value that indicates whether the navigation bar is translucent.
    public func navigationBarIsTranslucent(_ isTranslucent: Bool) -> some View {
        configureCocoaNavigationBar { navigationBar in
            DispatchQueue.main.async {
                navigationBar.isTranslucent = isTranslucent
            }
        }
    }
    
    public func navigationBarColor(_ color: Color) -> some View {
        configureCocoaNavigationBar { navigationBar in
            DispatchQueue.main.async {
                navigationBar.backgroundColor = color.toUIColor()
            }
        }
    }
}

#endif
