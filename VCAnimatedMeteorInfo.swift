//
//  VCAnimatedMeteorInfo.swift
//  MeteorTracker1
//
//  Created by Will Buffington on 5/25/24.
//

import UIKit

class VCAnimatedMeteorInfo: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var ivAnimated: UIImageView!
    
    var myImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myImageView.loadGIF(name: "animatedImage1")
        //myImageView.image = myImage
        
    }

}

extension UIImageView {
    
    public func loadGIF(name: String, in bundle: Bundle = .main) {
        if let data = NSDataAsset(name: name, bundle: bundle)?.data {
            CGAnimateImageDataWithBlock(data as CFData, nil) { (_, cgImage, _) in
                self.image = UIImage(cgImage: cgImage)
            }
        }
    }
}
