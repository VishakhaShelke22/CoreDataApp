

import UIKit
import CoreData

struct StudentDetails {
    var name: String
    var email: String
    var password: String
}

class ViewController: UIViewController {
    
  lazy   var  filterData = ["Price", "Model"]
    var  username = "AB"
    
    // Stored property
    var a = 10
    var b = 20
    
    
   // Computed Property
    var sum: Int{
        a + b
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var p1 = Person()
        p1.changeHeight(newHeight: 200)
        print(p1)
        }
        
    func openFilter() {
        self.filterData = ["Price", "Model"]
    }
    
    func insertValueInDataBase() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedObjectContext = appDelegate.persistentContainer.viewContext
        guard let entity = NSEntityDescription.entity(forEntityName: "Student", in: managedObjectContext) else {
            print("Entity not available. Check Spelling or Entity name in xcodedatamodel")
            return
        }
      let studentData =  NSManagedObject(entity: entity, insertInto: managedObjectContext)
        
        studentData.setValue(<#T##value: Any?##Any?#>, forKey: <#T##String#>)
        
        do {
         try managedObjectContext.save()
        } catch{
    print(error.localizedDescription)
      }
    }
}
    
    

    // mutating Keyword
    struct Person {
        private var height = 180
        
        mutating func changeHeight(newHeight: Int) {
            self.height = newHeight
        }
        
    }
    
    
    

    

        
        
    


