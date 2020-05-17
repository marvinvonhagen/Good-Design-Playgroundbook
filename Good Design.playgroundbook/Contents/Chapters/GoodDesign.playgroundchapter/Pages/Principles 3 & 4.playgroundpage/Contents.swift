//#-code-completion(everything, hide)
//#-code-completion(identifier, show, firstLogo, rainbowLogo, artLogo)
//#-hidden-cod
import PlaygroundSupport
import UIKit
import RealityKit

enum Version {
    case firstLogo, rainbowLogo, artLogo
}

func showAppleLogo(version: Version) {
    switch version {
    case .artLogo:
        _setup(imgSet: 21)
    case .rainbowLogo:
        _setup(imgSet: 22)
    default:
        _setup(imgSet: 404)
    }
}
//#-end-hidden-cod
/*:
 # 3 – Good design is aesthetic
 *The aesthetic quality of a product is integral to its usefulness because products we use every day affect our person and our well-being. But only well-executed objects can be beautiful.*
 
 # 4 – Good design makes a product understandable
 *It clarifies the product’s structure. Better still, it can make the product talk. At best, it is self-explanatory.*
 
 - - -
 
 What logo in the world talks more than the ? It's so self-explanatory that you immediately know the company's name without having even one actual letter in the logo. Also, it's highly aesthetic, as there are little companies in the world who could have made art out of their logo just like Apple does from time to time.

 * Callout(Take a look):
 If you want to see a random art logo, call `showAppleLogo(version:)` with `.artLogo` as the version parameter. To see the first apple logo ever or the legendary rainbow logo, use `.firstLogo` and `.rainbowLogo` respectively 🍎

 */
showAppleLogo(version: ./*#-editable-code*/<#T##Apple Logo Type##String#>/*#-end-editable-code*/)
