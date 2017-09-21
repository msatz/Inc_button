//
//  Img_button.swift
//  Inc_button_value
//
//  Created by Enchanter on 21/09/17.
//  Copyright © 2017 Enchanter. All rights reserved.
//

import Foundation
//
//  ViewController.swift
//  Img_Inc_button
//
//  Created by Enchanter on 20/09/17.
//  Copyright © 2017 Enchanter. All rights reserved.
//

import UIKit

class Img_button: UIViewController {
    
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var but2: UIButton!
    @IBOutlet weak var but3: UIButton!
    var img_url = [String]()
    var i=1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL(string:"")
        URLSession.shared.dataTask(with:(url as? URL)!,completionHandler:{(data,response,error)-> Void in
            if  let jsonObj = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments)  as?NSDictionary{
                if let resultArray = jsonObj!.value(forKey: "result")as? NSArray
                {
                    for result in resultArray{
                        if let resultDict = result as? NSDictionary
                        {
                            if let img = resultDict.value(forKey: "image")
                            {
                                self.img_url.append(img as! String)
                                print(self.img_url)
                                let from_img = NSURL(string: self.img_url[0])
                                let data = NSData(contentsOf:(from_img as? URL)!)
                                // let image1 = UIImage(named: "share.png") as UIImage!
                                self.but2.setImage(UIImage(data: data as! Data), for: UIControlState.normal)
                                self.but2.addTarget(self, action: #selector(self.Inf_url), for: UIControlEvents.touchUpInside)
                            }
                        }
                    }
                }
                
            }
            
        }).resume()
        
        //
    }
    func Inf_url(_sender:UIButton){
        
        let i_url = NSURL(string: img_url[0+i])
        let data = NSData(contentsOf:(i_url as? URL)!)
        but2.setImage(UIImage(data: data as! Data), for: .normal)
        i+=1
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

