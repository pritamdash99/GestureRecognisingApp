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
    var position = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Attach handleLeftSwipe with swipe gesture of marvelImageView
        //UISwipeGestureRecognizer(target: Any?, action: Selector?)
        //Any = class what would you want your target class to be ? , i.e which class would it belong to ?
        //Selector = which function would this gesture act upon ?
        //The selector function is usually "objc" type.
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.handleLeftSwipe(gesture:)))
        //Default direction of UISwipeGestureRecognizer is swiping right.
        //We want the direction to be left for our swipe gesture.
        swipeGesture.direction = UISwipeGestureRecognizer.Direction.left
        
        //We want the swipe gesture on the imageView so we attach it like this -
        marvelImageView.addGestureRecognizer(swipeGesture)
        //to enable user interaction
        marvelImageView.isUserInteractionEnabled = true
        //to let multiple fingers add gesture to your view
        marvelImageView.isMultipleTouchEnabled = true
        
    }
    
    //To swipe the images
    @objc func handleLeftSwipe(gesture : UISwipeGestureRecognizer) -> Void {
        print("Swipe Done") //Simple message
        
        position += 1 //incrementing the position with every left swipe to change the image.
        
        if position == marvelCharacterArray.count{
            position = 0
        }
        print(marvelCharacterArray[position])
        
        marvelImageView.image = UIImage(named: marvelCharacterArray[position])
    }

}

