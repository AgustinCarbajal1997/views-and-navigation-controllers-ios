import UIKit

class GreenViewController: UIViewController {

    @IBOutlet var mySearchBar: UIView!
    @IBOutlet weak var myLabelSearch: UILabel!
    @IBOutlet weak var myUISearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabelSearch.isHidden = true
        myUISearchBar.delegate = self
    }
    


}

extension GreenViewController: UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        myUISearchBar.resignFirstResponder()
        myLabelSearch.text = myUISearchBar.text
        myLabelSearch.isHidden = false
        myUISearchBar.text = ""
    }
}
