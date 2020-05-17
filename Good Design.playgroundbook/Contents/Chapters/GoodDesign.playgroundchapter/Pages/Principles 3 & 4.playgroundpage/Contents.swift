//#-code-completion(everything, hide)
//#-code-completion(identifier, show, rainbowLogo, artLogos)
//#-hidden-code
import PlaygroundSupport
import UIKit
import RealityKit

enum Version {
    case rainbowLogo, artLogos
}

func showAppleLogo(version: Version) {
    switch version {
    case .artLogos:
        _setup(imgSet: 21)
    case .rainbowLogo:
        _setup(imgSet: 22)
    default:
        _setup(imgSet: 404)
    }
}
//#-end-hidden-code
/*:
 # 3 – Good design is aesthetic
 *The aesthetic quality of a product is integral to its usefulness because products we use every day affect our person and our well-being. But only well-executed objects can be beautiful.*
 
 # 4 – Good design makes a product understandable
 *It clarifies the product’s structure. Better still, it can make the product talk. At best, it is self-explanatory.*
 
 - - -
 
 What logo in the world talks more than the ? It's so self-explanatory that you immediately know the company's name without having even one actual letter in the logo. Also, it's highly aesthetic, as there are little companies in the world who could have made art out of their logo just like Apple does from time to time.

 * Callout(Take a look):
  If you call `showAppleLogo(version:)` with the parameter `.artLogos`, you can see a selection of arty Apple logos; tap on the framed picture to see the next one. If you want to see the legendary rainbow logo,  use `.rainbowLogo`! 🍎
 */
showAppleLogo(version: ./*#-editable-code*/<#T##Apple Logo Type##String#>/*#-end-editable-code*/)
