import UIKit

final class NavigationBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureAppearance()
        
    }
    
    private func configureAppearance() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [.foregroundColor: Resources.Colors.titleGray, .font: Resources.Fonts.helveticaRegular(with: 17)]
        
        navigationBar.addBottonBorder(with: Resources.Colors.separator, height: 1)
    }
}
