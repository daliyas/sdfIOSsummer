

import UIKit

protocol CreateStudentDelegate: AnyObject {
    func saveStudentt(student: Student)
}

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    weak var delegate: CreateStudentDelegate?
    let regex = try! NSRegularExpression(pattern: "8907*", options:.caseInsensitive)

    // MARK: - UI
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    
    // MARK: - View life circle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        usernameTextField.placeholder = "Your number"
        self.view.backgroundColor = UIColor.systemGray6
    }
    
   


    @IBAction func buttonDidTap(_ sender: Any) {
        
         func matches(for regex: String, in text: String) -> [String] {

            do {
                let regex = try NSRegularExpression(pattern: regex)
                let results = regex.matches(in: text,
                                            range: NSRange(text.startIndex..., in: text))
                return results.map {
                    String(text[Range($0.range, in: text)!])
                }
            } catch let error {
                print("invalid regex: \(error.localizedDescription)")
                return []
            }
        }
        
        guard let username = usernameTextField.text else { return }
        
        print(username)
        
        let matched = matches(for: "[89087[\\*]]", in: username)
        let stringMatcher = matched.joined()
        print(stringMatcher)

        if stringMatcher == "89087" {
          
          
            
            guard let name = usernameTextField.text else{ return}
            
            let student = Student(name: name,Ln: "Ru")
            print(student)

            guard let forgotVC = storyboard?.instantiateViewController(withIdentifier: "StudentTableViewController") as? StudentTableViewController else { return }
            delegate = forgotVC
            delegate?.saveStudentt(student: student)
            navigationController?.pushViewController(forgotVC, animated: true)
            dismiss(animated: true)
        } else {
            
           

            guard let unlockVC = storyboard?.instantiateViewController(withIdentifier: "UnlockViewController") else { return }
            present(unlockVC, animated: true)
        }
        
    }
}
