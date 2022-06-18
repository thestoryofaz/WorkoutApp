import UIKit

final class NavigationBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        
    }
    
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [.foregroundColor: Resources.Colors.titleGray, .font: Resources.Fonts.helveticaRegular(with: 17)]
        
        navigationBar.addBottonBorder(with: Resources.Colors.separator, height: 1)
    }
}
