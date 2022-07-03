//
//  InfoViewController.swift
//
//  Created by Сафина Далия on 03.07.2022.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var lastname: UILabel!
    @IBOutlet var name: UILabel!
    @IBOutlet var Ln: UILabel!
    @IBOutlet var phone: UILabel!
    
    var phonee = ""
    var Lnn = ""
    var namee = ""
    var lastnamee = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemGray6
        
        phone.text = phonee
        Ln.text = Lnn
        name.text = namee
        lastname.text = lastnamee
        
        
        

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
