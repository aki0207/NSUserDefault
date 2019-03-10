import UIKit

class ViewController: UIViewController {
    
    var inputed_text = ""
    @IBOutlet var textField: UITextField!
    @IBOutlet weak var dispLabel: UILabel!
    let userDefault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func pushedInsertButton(_ sender: Any) {
        
        inputed_text = textField.text!
        // キーを指定してオブジェクトを保存
        userDefault.set(inputed_text, forKey: "text")
        userDefault.synchronize()
        print("保存しました")
        
    }
    
    
    @IBAction func pushedDeleteButton(_ sender: Any) {
        
        userDefault.removeObject(forKey: "text")
        print("削除しました")
        
    }
    
    
    @IBAction func pushedDispButton(_ sender: Any) {
        
        let saved_text = userDefault.string(forKey: "text")
        dispLabel.text = saved_text
        print(saved_text)
        
    }
    
    
}

