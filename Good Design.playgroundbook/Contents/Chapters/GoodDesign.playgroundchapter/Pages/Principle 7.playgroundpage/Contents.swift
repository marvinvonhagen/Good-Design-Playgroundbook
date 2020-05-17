//#-code-completion(everything, hide)
//#-code-completion(identifier, show, PowerMacG5, iMacG3, iMacG4, iPodClassic)
//#-hidden-code
import PlaygroundSupport
import UIKit

enum Device {
    case PowerMacG5, iMacG3, iMacG4, iPodClassic
}

func showDesign(device: Device) {
    switch device {
    case .PowerMacG5:
        _setup(imgSet: 41)
    case .iMacG3:
        _setup(imgSet: 42)
    case .iMacG4:
        _setup(imgSet: 43)
    case .iPodClassic:
        _setup(imgSet: 44)
    default:
        _setup(imgSet: 404)
    }
}
//#-end-hidden-code
/*:
 # 7 – Good design is long-lasting
 *It avoids being fashionable and therefore never appears antiquated. Unlike fashionable design, it lasts many years – even in today’s throwaway society.*
  
 - - -
 
 While especially in technology, most products get thrown away after at last a decade normally, Apple products last uncommonly long - I can see my 6-year-old AirPort Time Capsule running and backing up my MacBook for many more years to come. It just works.
 
 Even after that, many Apple products don't get thrown away but rather become timeless design masterpieces that sell for higher prices than their original ones. Some people even convert them to give these historic designs a new purpose.
 * Callout(Take a look):
 One example for that is the bank that some people built out of old G5 PowerMacs. You can take a look at it by calling the function `showDesign(device:)` with the parameter `.PowerMacG5`. Parameters for other historic designs I personally like very much are `.iPodClassic`, `.iMacG3` and `.iMacG4`  🖥
*/
showDesign(device: ./*#-editable-code*/<#T##Name of Device##String#>/*#-end-editable-code*/)
