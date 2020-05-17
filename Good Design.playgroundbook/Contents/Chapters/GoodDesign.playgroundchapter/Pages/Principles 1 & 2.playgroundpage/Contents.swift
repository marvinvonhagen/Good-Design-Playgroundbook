//#-code-completion(everything, hide)
//#-code-completion(identifier, show, iOS, Android)
//#-hidden-code
import PlaygroundSupport
import UIKit
import RealityKit

enum OS {
    case iOS, Android
}

func showFragmentation(os: OS) {
    switch os {
    case .iOS:
        _setup(imgSet: 11)
    case .Android:
        _setup(imgSet: 12)
    default:
        _setup(imgSet: 404)
    }
}
//#-end-hidden-code
/*:
 # 1 – Good design is innovative
 *The possibilities for innovation are not, by any means, exhausted. Technological development is always offering new opportunities for innovative design. But innovative design always develops in tandem with innovative technology, and can never be an end in itself.*
 
 # 2 – Good design makes a product useful
 *A product is bought to be used. It has to satisfy certain criteria, not only functional, but also psychological and aesthetic. Good design emphasises the usefulness of a product whilst disregarding anything that could possibly detract from it.*
 
 - - -

 While there are many products in our lives and in Apples's ecosystem, which are designed innovatively to bring us more usefulness, Software is special. Dieter Rams' principles imply that the products are innovative at the time of the design process before it gets into our hands as consumers. After that, their usefulness typically stays the same while their relative innovativeness decreases as innovations arise.
  
 Software, however, even increases its innovativeness and usefulness during the lifecycle of the product. Especially Apple improves their products after people bought them via over-the-air updates. They install themselves for free at night without requiring the consumer to do anything. Apple supports their products significantly longer than everyone else, which leads to much better Operating System fragmentation.

 * Callout(Take a look):
 If you want to compare iOS' fragmentation with Android's, call `showFragmentation(OS:)` and use the parameters `.iOS` or `.Android` 📱
 */

//showFragmentation(os: ./*#-editable-code*/<#T##Name of OS##String#>/*#-end-editable-code*/)




let arView = ARView(frame: CGRect(x: 0, y: 0, width: 800, height: 200), cameraMode: .ar, automaticallyConfigureSession: true)

let fileURL = Bundle.main.url(forResource: "1 Android Scene", withExtension: "reality")
let scene = try! Entity.load(contentsOf: fileURL!)

let anchor = AnchorEntity()
anchor.addChild(scene)
anchor.scale = [1,1,1]

func degreesToRadians(_ degrees: Float) -> Float {
    return degrees * .pi / 180
}

let originVector = simd_float3(x: 0, y: 0, z: -1)

let quaternion = simd_quatf(angle: degreesToRadians(90),
                            axis: simd_float3(x: 1,
                                              y: 0,
                                              z: 0))

anchor.setOrientation(quaternion, relativeTo: nil)
anchor.setPosition(originVector, relativeTo: nil)
arView.scene.anchors.append(anchor)


PlaygroundPage.current.liveView = arView
