import UIKit
import PlaygroundSupport


public func _setup(imgSet: Int) {
    let viewController = ImageViewController(imgSet: imgSet)
    PlaygroundPage.current.liveView = viewController
}
