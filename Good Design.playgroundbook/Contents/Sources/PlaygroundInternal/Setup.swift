import UIKit
import PlaygroundSupport


public func _setup(imgSet: Int) {
    if imgSet > 21 {
        let viewController = ImageViewController(imgSet: imgSet)
        PlaygroundPage.current.liveView = viewController
        return
    }
    
    var fileName: String
    
    switch imgSet {
    case 11:
        fileName = "Android Fragmentation"
    case 12:
        fileName = "iPhone Fragmentation"
    case 21:
        fileName = "artLogosAR"
    default:
        return
    }
    
    let arView = ARView(frame: CGRect(x: 0, y: 0, width: 800, height: 200), cameraMode: .ar, automaticallyConfigureSession: true)
    
    let fileURL = Bundle.main.url(forResource: fileName, withExtension: "reality")
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
}
