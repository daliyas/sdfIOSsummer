//


import UIKit


struct Dependency{
    let name : String
    let password: String
    let username: String
}

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet var errorLabel: UILabel!
    
    var incorectPassword: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func configure(password: String){
        errorLabel.text = "your passworf = \(password)"
    }
}
