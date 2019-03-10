
import UIKit

class ViewController: UIViewController {
    
    var inputed_text = ""
    @IBOutlet var textField: UIView!
    @IBOutlet weak var dispLabel: UILabel!
    let userDefault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func pushedInsertButton(_ sender: Any) {
     
        // キーを指定してオブジェクトを保存
        userDefault.set(true, forKey: "isPost")
        userDefault.set("12345", forKey: "postId")
        userDefault.synchronize()
        print("保存しました")
        
    }
    
    
    @IBAction func pushedDeleteButton(_ sender: Any) {
        
        userDefault.removeObject(forKey: "isPost")
        userDefault.removeObject(forKey: "postId")
        print("削除しました")
        
    }
    
    
    @IBAction func pushedDispButton(_ sender: Any) {
        
        let isPost = userDefault.bool(forKey: "isPost")
        let postId = userDefault.string(forKey: "postId")
        print(postId)
        
    }
    
    
}

