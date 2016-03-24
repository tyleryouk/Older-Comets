//
//  InterstitialAdView.swift
//  SpaceUp
//
//  Created by David Chin on 6/06/2015.
//  Copyright (c) 2015 David Chin. All rights reserved.
//

import UIKit
import iAd
import GoogleMobileAds

class InterstitialAdView: UIView {
  let closeButton = UIButton(type: UIButtonType.Custom)

  var interstitial: GADInterstitial?
    
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    closeButton.frame = CGRect(x: 15, y: 15, width: 32, height: 32)
    closeButton.titleLabel?.font = UIFont(name: "FontAwesome", size: 18)
    closeButton.titleLabel?.textAlignment = .Center
    closeButton.setTitle("\u{f00d}", forState: .Normal)
    closeButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
    closeButton.backgroundColor = UIColor.blackColor()
    closeButton.layer.cornerRadius = 6
    closeButton.layer.zPosition = 1000
    
    addSubview(closeButton)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - Presentation
    /*override func viewDidLoad() {
        super.viewDidLoad()
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
        
        var request = GADRequest()
        // Requests test ads on test devices.
        request.testDevices = ["2077ef9a63d2b398840261c8221a0c9b"]
        interstitial!.loadRequest(request)
    }*/
    
  func presentInterstitialAd(interstitialAd: ADInterstitialAd) {
    interstitialAd.presentInView(self)

    bringSubviewToFront(closeButton)
  }
}
