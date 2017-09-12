//
//  ViewController.swift
//  Inc_button_value
//
//  Created by Enchanter on 08/09/17.
//  Copyright © 2017 Enchanter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var butt2: UIButton!
    @IBOutlet var butt1: UIButton!
    @IBOutlet var butt3: UIButton!
    var a=[0,1,2,3,4,5,6,7,8]
    
  var i=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
        butt1.setTitle(String(a[0]), for: UIControlState.normal)
        butt2.setTitle(String(a[1]), for: UIControlState.normal)
        butt3.setTitle(String(a[2]), for: UIControlState.normal)
        
       // butt1.actions(forTarget: #selector(Inc_f), forControlEvent: UIControlEvents.touchUpInside)
        butt1.addTarget(self, action: #selector(Inc_f), for: UIControlEvents.touchUpInside)
        butt2.addTarget(self, action: #selector(Inc_f), for: UIControlEvents.touchUpInside)

        butt3.addTarget(self, action: #selector(Inc_f), for: UIControlEvents.touchUpInside)

        
        //let jsonobj = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments)as?
    }
    func Inc_f(_sender:UIButton){
//        if (i==6)
//        {
        
            
            
        if (i==8){
        i=0
        }
        if(_sender.tag==0){
            if(i==7){
            butt1.setTitle(String(a[7]), for: UIControlState.normal)
            butt2.setTitle(String(a[0]), for: UIControlState.normal)
            butt3.setTitle(String(a[1]), for: UIControlState.normal)
        }
            
            
        else{
            butt1.setTitle(String(a[0+i]), for: UIControlState.normal)
            butt2.setTitle(String(a[1+i]), for: UIControlState.normal)
            butt3.setTitle(String(a[2+i]), for: UIControlState.normal)
           // i+=1
        }
        }
        if(_sender.tag==1){
            
            butt1.setTitle(String(a[0+i]), for: UIControlState.normal)
            butt2.setTitle(String(a[1+i]), for: UIControlState.normal)
            butt3.setTitle(String(a[2+i]), for: UIControlState.normal)
           // i+=1
        
    }
        if(_sender.tag==2){
            if(i==6){
                butt1.setTitle(String(a[6]), for: UIControlState.normal)
                butt2.setTitle(String(a[7]), for: UIControlState.normal)
                butt3.setTitle(String(a[0]), for: UIControlState.normal) //6-6,6+1,6+0
                
                //i=7
            }
            
            else{
            butt1.setTitle(String(a[0+i]), for: UIControlState.normal)
            butt2.setTitle(String(a[1+i]), for: UIControlState.normal)
            butt3.setTitle(String(a[2+i]), for: UIControlState.normal)
            //i+=1
            }
        }
        
        i+=1
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

