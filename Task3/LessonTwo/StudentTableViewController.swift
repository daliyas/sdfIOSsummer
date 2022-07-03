
import UIKit

struct Student {
    let name: String
    let Ln:String
}

struct Info {
    let nameF:String
    let lastName:String
}

class StudentTableViewController: UITableViewController {

    var students: [Student] = [
       Student(name: "89085435",Ln: "Ru"),
       Student(name: "89235435",Ln: "Ru"),
       Student(name: "89044345",Ln: "Ru"),
       Student(name: "89044345",Ln: "Ru"),
       Student(name: "89523346",Ln: "Eu"),
       Student(name: "89544355",Ln: "Eu"),
       Student(name: "89435454",Ln: "Ru")
    ]
    
    var info: [Info] =  [
    Info(nameF: "Alsu", lastName: "Safina"),
    Info(nameF: "Daliya", lastName: "Safina"),
    Info(nameF: "Lena", lastName: "Gavrilova"),
    Info(nameF: "Ksenia", lastName: "Katargina"),
    Info(nameF: "Tanya", lastName: "Krilova"),
    Info(nameF: "Vova", lastName: "Vetrov"),
    Info(nameF: "Airi", lastName: "Latipova"),
    Info(nameF: "Kostya", lastName: "Ivlev")
    
    ]
    
    // MARK: - View life cyrcle
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "StudentTableViewCell",
            for: indexPath
        ) as? StudentTableViewCell else { return UITableViewCell() }
        

        cell.nameLabel.text = students[indexPath.row].name
        cell.scoreLabel.text = students[indexPath.row].Ln
       

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        90
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        print(students[indexPath.row])
        
        if let vc2 = storyboard?.instantiateViewController(withIdentifier: "InfoViewController") as? InfoViewController {
            vc2.phonee = students[indexPath.row].name
            vc2.Lnn = students[indexPath.row].Ln
            vc2.namee = info[indexPath.row].nameF
            vc2.lastnamee = info[indexPath.row].lastName
            present(vc2, animated: true)
        }

//        guard let unlockVC = storyboard?.instantiateViewController(withIdentifier: "UnlockViewController") else { return }
        
        print(students[indexPath.row].name)
        
//
    }
}

// MARK: - CreateStudentDelegate

extension StudentTableViewController: CreateStudentDelegate {
    func saveStudentt(student: Student) {
        students.append(student)
        
            self.tableView.reloadData()
        
    }
}


