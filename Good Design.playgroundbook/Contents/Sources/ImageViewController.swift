//
//  ImageViewController.swift
//  Book_Sources
//
//  Created by Marvin von Hagen
//

import Foundation
import UIKit
import PlaygroundSupport

public class ImageViewController: UIViewController, PlaygroundLiveViewSafeAreaContainer {
    var imageView: UIImageView?
    
    
    
    private var oldBounds = CGRect()
    private let padding: CGFloat = 45
    
    /// Minimum scale to which the user may pinch to zoom
    private let maxScaleLimit: CGFloat = 3
    /// Maximum scale to which the user may pinch to zoom
    private let minScaleLimit: CGFloat = 0.5
    /// Variable to track how far the imageView has been cumulatively scaled
    private var imageViewCumulativeScale: CGFloat = 1.0
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        addAndConstrainImageView()
        
        if imgSet == 23 {
            view.backgroundColor = #colorLiteral(red: 0.9724641442, green: 0.9726033807, blue: 0.9724335074, alpha: 1)
        } else {
            view.backgroundColor = UIColor.white
        }
        let pinchGesture = UIPinchGestureRecognizer(target: self,
                                                    action: #selector(zoom(gestureRecognizer:)))
        view.addGestureRecognizer(pinchGesture)
        
        let panGesture = UIPanGestureRecognizer(target: self,
                                                action: #selector(pan(gestureRecognizer:)))
        view.addGestureRecognizer(panGesture)
        
    }
    
    public var imgSet: Int
    public var onlyOneOrientation: Bool
    
    public init(imgSet: Int) {
        self.imgSet = imgSet
        if 31 ... 39  ~= imgSet {
            onlyOneOrientation = false
        } else {
            onlyOneOrientation = true
        }
        super.init(nibName: nil, bundle: nil)
    }
    
    func imgPicker(orientation: String) -> UIImage {
        let rand = Int.random(in: 1 ... 12)
        
        if orientation == "portrait" {
            switch imgSet {
            case 22:
                return UIImage(named: "rainbowLogo.jpg")!
            case 31:
                return UIImage(named: "PAppleiPhoneX.jpg")!
            case 32:
                return UIImage(named: "PAppleiPhoneXS.jpg")!
            case 33:
                return UIImage(named: "PXiaomiPocophoneF1.jpg")!
            case 34:
                return UIImage(named: "PBlackberryKEY2.jpg")!
            case 41:
                return UIImage(named: "PowerMacBank.jpg")!
            case 42:
                return UIImage(named: "iMacG3.jpg")!
            case 43:
                return UIImage(named: "iMacG4.jpg")!
            case 44:
                return UIImage(named: "iPodClassic.jpg")!
            case 51:
                return UIImage(named: "PatentedPizzaBox.jpg")!
            case 53:
                return UIImage(named: "SolarRoof.jpg")!
            case 54:
                return UIImage(named: "SteveJobsTheater.jpg")!
            case 61:
                return UIImage(named: "me.jpg")!
            default:
                return UIImage(named: "blank")!
            }
        } else {
            switch imgSet {
            case 22:
                return UIImage(named: "rainbowLogo.jpg")!
            case 31:
                return UIImage(named: "LAppleiPhoneX.jpg")!
            case 32:
                return UIImage(named: "LAppleiPhoneXS.jpg")!
            case 33:
                return UIImage(named: "LXiaomiPocophoneF1.jpg")!
            case 34:
                return UIImage(named: "LBlackberryKEY2.jpg")!
            case 41:
                return UIImage(named: "PowerMacBank.jpg")!
            case 42:
                return UIImage(named: "iMacG3.jpg")!
            case 43:
                return UIImage(named: "iMacG4.jpg")!
            case 44:
                return UIImage(named: "iPodClassic.jpg")!
            case 51:
                return UIImage(named: "PatentedPizzaBox.jpg")!
            case 53:
                return UIImage(named: "SolarRoof.jpg")!
            case 54:
                return UIImage(named: "SteveJobsTheater.jpg")!
            case 61:
                return UIImage(named: "me.jpg")!
            default:
                return UIImage(named: "blank")!
            }
            
        }
        /* Image Sources:
         https://www.youtube.com/watch?v=_5-bo8a4zU0
         https://developer.apple.com/download/more/?=Swift%20Playgrounds%20Author%20Template
         https://www.wired.com/2017/05/apple-park-new-silicon-valley-campus/#slide-x
         https://tobyharriman.com/apple-park-aerial-photography/
         https://9to5mac.com/2017/05/16/apple-park-interior-photos-video/
         https://www.theverge.com/2017/5/16/15646154/apple-pizza-box-patent-come-on
         https://projektgalerie.wordpress.com/2014/06/24/mac-g5-moebel/
         https://www.pinterest.com/pin/525232375281611760/
         https://www.pinterest.com/pin/571675746424523145/
         https://www.imore.com/ipod-classic
         https://developer.apple.com/support/app-store/
         */
    }
    
    
    var oldOri = false
    var newOri: Bool?
    
    
    override public func viewDidLayoutSubviews() {
        if oldBounds != liveViewSafeAreaGuide.layoutFrame {
            oldBounds = liveViewSafeAreaGuide.layoutFrame
            
            imageViewCumulativeScale = 1.0
            var scale: CGFloat = 1.0
            
            // Always match scale to the shorter “side” so it fits
            if liveViewSafeAreaGuide.layoutFrame.width < liveViewSafeAreaGuide.layoutFrame.height {
                if  !oldOri && !onlyOneOrientation{
                    imageView?.transform = ((imageView?.transform.rotated(by: CGFloat.pi/2))!)
                }
                imageView!.image = imgPicker(orientation: "portrait")
                
                if onlyOneOrientation && imgSet != 52 {
                    scale = (liveViewSafeAreaGuide.layoutFrame.width - padding) / (imageView?.frame.width)!
                } else {
                    scale = (liveViewSafeAreaGuide.layoutFrame.height - padding) / (imageView?.frame.height)!
                }
                oldOri = true
            } else {
                if  oldOri && !onlyOneOrientation {
                    imageView?.transform = ((imageView?.transform.rotated(by: -CGFloat.pi/2))!)
                }
                
                imageView!.image = imgPicker(orientation: "landscape")
                
                if imgSet == 54 {
                    scale = (liveViewSafeAreaGuide.layoutFrame.width - padding) / (imageView?.frame.width)!
                } else {
                    scale = (liveViewSafeAreaGuide.layoutFrame.height - padding) / (imageView?.frame.height)!
                }
                oldOri = false
            }
            
            // Increment the scale
            imageViewCumulativeScale *= scale
            
            // Execute the transform
            imageView?.transform = (imageView?.transform.scaledBy(x: scale, y: scale))!
        }
    }
    
    // MARK: Gesture recognizer handling
    
    @objc func zoom(gestureRecognizer: UIPinchGestureRecognizer) {
        guard let imageView = imageView else { return }
        
        if gestureRecognizer.state == .changed || gestureRecognizer.state == .ended {
            
            // Ensure the cumulative scale is within the set range
            if imageViewCumulativeScale > minScaleLimit && imageViewCumulativeScale < maxScaleLimit {
                
                // Increment the scale
                imageViewCumulativeScale *= gestureRecognizer.scale
                
                // Execute the transform
                imageView.transform = imageView.transform.scaledBy(x: gestureRecognizer.scale,
                                                                   y: gestureRecognizer.scale);
            } else {
                // If the cumulative scale has extended beyond the range, check to see if the user is attempting to scale it back within range
                let nextScale = imageViewCumulativeScale * gestureRecognizer.scale
                
                if imageViewCumulativeScale < minScaleLimit && nextScale > minScaleLimit
                    || imageViewCumulativeScale > maxScaleLimit && nextScale < maxScaleLimit {
                    
                    // If the user is trying to get back in-range, allow the transform
                    imageViewCumulativeScale *= gestureRecognizer.scale
                    imageView.transform = imageView.transform.scaledBy(x: gestureRecognizer.scale, y: gestureRecognizer.scale)
                }
            }
        }
        
        gestureRecognizer.scale = 1;
    }
    
    @objc func pan(gestureRecognizer: UIPanGestureRecognizer) {
        guard let imageView = imageView else { return }
        
        let translation = gestureRecognizer.translation(in: view)
        
        imageView.center = CGPoint(x: imageView.center.x + translation.x, y: imageView.center.y + translation.y)
        
        gestureRecognizer.setTranslation(CGPoint(x: 0, y: 0), in: view)
    }
    
    private let tempConstantForLayoutScaling: CGFloat = 700.0
    
    fileprivate func addAndConstrainImageView() {
        var imageView: UIImageView
        
        imageView = UIImageView(image: UIImage(named: "blank"))
        
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Always reset the imageScale when we reset the image
        imageViewCumulativeScale = 1.0
        
        // Constrain `imageView` to a square whose size matches the shorter of width and height.
        let widthConstraint: NSLayoutConstraint
        let heightConstraint: NSLayoutConstraint
        
        // Set initial constraint values—from here we will only scale up or down
        
        if imgSet == 54 {
            widthConstraint = imageView.widthAnchor.constraint(equalToConstant: tempConstantForLayoutScaling*2.15)
            heightConstraint = imageView.heightAnchor.constraint(equalToConstant: tempConstantForLayoutScaling)
        } else if imgSet == 52 {
            widthConstraint = imageView.widthAnchor.constraint(equalToConstant: tempConstantForLayoutScaling*0.8)
            heightConstraint = imageView.heightAnchor.constraint(equalToConstant: tempConstantForLayoutScaling*1.2)
        } else if onlyOneOrientation && imgSet != 41 && imgSet != 42 && imgSet != 51  {
            widthConstraint = imageView.widthAnchor.constraint(equalToConstant: tempConstantForLayoutScaling)
            heightConstraint = imageView.heightAnchor.constraint(equalToConstant: tempConstantForLayoutScaling)
        } else {
            widthConstraint = imageView.widthAnchor.constraint(equalToConstant: tempConstantForLayoutScaling*1.2)
            heightConstraint = imageView.heightAnchor.constraint(equalToConstant: tempConstantForLayoutScaling*0.8)
        }
        let centerYConstraint = imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        let centerXConstraint = imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        NSLayoutConstraint.activate([widthConstraint,
                                     heightConstraint,
                                     centerYConstraint,
                                     centerXConstraint])
        self.imageView = imageView
    }
}
