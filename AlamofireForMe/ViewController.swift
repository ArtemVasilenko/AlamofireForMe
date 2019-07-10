import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getResult()
    }
    
    func getResult() {
        request("https://i.pinimg.com/originals/83/81/75/838175ccbc77cb6bb8826d3ba49686ce.jpg").validate()
            
            .response { response in
            guard let data = response.data,
                let image = UIImage(data: data)
                else {return}
            
            self.myImageView.image = image
        }
        
    }
    
    
}

