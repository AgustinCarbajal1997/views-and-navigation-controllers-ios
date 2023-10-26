import UIKit

class PageViewController: UIPageViewController {

    private var myControllers: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myVCGreen = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcGreen") //nombre de storyBoard id q cree
        let myVCBlue = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcBlue") //nombre de storyBoard id q cree
        
        myControllers.append(myVCGreen)
        myControllers.append(myVCBlue)
        
        setViewControllers([myVCGreen], direction: .forward, animated: true, completion: nil) // una vez completado que no haga nada
        
            dataSource = self
    }
    


}


extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let index = myControllers.firstIndex(of: viewController)
        
        if index == 0 {
            return myControllers.last
        }
        return myControllers.first
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let index = myControllers.firstIndex(of: viewController)
        
        if index == 0 {
            return myControllers.last
        }
        return myControllers.first
    }
    
    
}
