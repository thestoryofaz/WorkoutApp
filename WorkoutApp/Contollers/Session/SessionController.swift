import UIKit

class SessionController: BaseContoller {}

extension SessionController {
    override func setupViews() {
         super.setupViews()
    }
    
    override func constraintViews() {
        super.constraintViews()
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title = Resources.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .session)
        
        addNavBarButton(at: .left, with: Resources.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Session.navBarRight)
    }
}
