//#-code-completion(everything, hide)
//#-code-completion(identifier, show, patentedPizzaBox, doorHandle, solarRoof, steveJobsTheater)
//#-hidden-code
import PlaygroundSupport
import UIKit

enum Aspect {
    case patentedPizzaBox, solarRoof, steveJobsTheater
}

func showAppleParkAspect(_ aspect: Aspect) {
    switch aspect {
    case .patentedPizzaBox:
        _setup(imgSet: 51)
    case .solarRoof:
        _setup(imgSet: 53)
    case .steveJobsTheater:
        _setup(imgSet: 54)
    default:
        _setup(imgSet: 10)
    }
}
//#-end-hidden-code
/*:
 # 8 – Good design is thorough down to the last detail
 *Nothing must be arbitrary or left to chance. Care and accuracy in the design process show respect towards the user.*
 
 # 9 – Good design is environmentally-friendly
 *Design makes an important contribution to the preservation of the environment. It conserves resources and minimises physical and visual pollution throughout the lifecycle of the product.*
 
 - - -
 
 175-acres, carefully designed from the massive trees to the patented pizza boxes in the restaurant. One of the greenest buildings ever built by humankind, powered 100% by renewable energy and cooled by the world's most extensive natural ventilation system. I think the Park is the combination of principles 8 and 9 in pure perfection.
  
 * Callout(Take a look):
 To grasp a sense of the extreme perfectionism that went into designing the Park, you can call the function `showAppleParkAspect(_:)`. Possible parameters are `.solarRoof`, `.steveJobsTheater`, and `.patentedPizzaBox` 🍕
*/
showAppleParkAspect(./*#-editable-code*/<#T##Aspect##String#>/*#-end-editable-code*/)
