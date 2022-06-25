import UIKit

class SettingsController: BaseContoller {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Resources.Strings.NavBar.settings
    }
}

extension SettingsController {
    override func setupViews() {
         super.setupViews()
    }
    
    override func constraintViews() {
        super.constraintViews()
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title = Resources.Strings.NavBar.settings
    }
}
