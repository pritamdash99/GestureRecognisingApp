//
//  ViewController.swift
//  GestureRecognisingApp
//
//  Created by Pritam Dash on 15/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var marvelImageView: UIImageView!
    @IBOutlet weak var swipeDirectionLabel: UILabel!
    
    var marvelCharacterArray : [String] = ["Image1","Image2","Image3","Image4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Attach handleLeftSwipe with swipe gesture of marvelImageView
        //UISwipeGestureRecognizer(target: Any?, action: Selector?)
        //Any = class what would you want your target class to be ? , i.e which class would it belong to ?
        //Selector = which function would this gesture act upon ?
        //The selector function is usually "objc" type.
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.handleLeftSwipe(gesture:)))
        
        //We want the swipe gesture on the imageView so we attach it like this -
        marvelImageView.addGestureRecognizer(swipeGesture)
        //to enable user interaction
        marvelImageView.isUserInteractionEnabled = true
        //to let multiple fingers add gesture to your view
        marvelImageView.isMultipleTouchEnabled = true
        
    }
    
    //To swipe the images
    @objc func handleLeftSwipe(gesture : UISwipeGestureRecognizer) -> Void {
        //Simple message:
        print("Swipe Done")
    }

}

