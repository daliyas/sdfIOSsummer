
import UIKit

class UnlockViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemGray6
        // Do any additional setup after loading the view.
    }

    @IBAction func closeButtonDidTap(_ sender: Any) {
        dismiss(animated: true)
    }
}
