import UIKit
import WebKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        title = "Titulo de View Controller"
        
        myButton.backgroundColor = .green
        myButton.tintColor = .black
        
        myWebView.load(URLRequest(url: URL(string: "https://google.com")!)) // el ! es como un optional chaining que lo que hace es abortar la ejecucion si contiene un valor nil, corta la ejecucion
        myMapView.centerCoordinate = CLLocationCoordinate2D(latitude: -24.1744883, longitude: -65.3213312)
    }


    @IBAction func myButtonAction(_ sender: Any) {
        myView.isHidden = true
    }
}

