//
//  Description.swift
//  HWApp
//
//  Created by Max Stovolos on 7/8/22.
//

import UIKit

class Description: UIViewController {

    @IBOutlet weak var someString: UILabel!
    
    var lableInPage: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        someString.text = lableInPage
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
