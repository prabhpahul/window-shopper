//
//  ViewController.swift
//  window-shopper
//
//  Created by Prabhpahul singh on 2018-02-02.
//  Copyright © 2018 Prabhpahul singh. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let calBtn = UIButton(frame: CGRect(x:0,y:0,width:view.frame.size.width , height: 60))
        
        calBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calBtn.setTitle("Calculate", for: .normal)
        calBtn.setTitleColor( #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
     calBtn.addTarget(self,action:#selector(MainVC.calculate),for:.touchUpInside)
        wageTxt.inputAccessoryView = calBtn
        priceTxt.inputAccessoryView = calBtn
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    @objc func calculate(){
        if let wageTxt = wageTxt.text , let priceTxt = priceTxt.text{
            if let wage = Double(wageTxt) , let price = Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden=false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clearCal(_ sender: Any) {
        
        resultLbl.isHidden = true
        wageTxt.text=""
        priceTxt.text = ""
        hoursLbl.isHidden = true
    }
    
}

