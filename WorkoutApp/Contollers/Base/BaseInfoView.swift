import UIKit

class BaseInfoView: BaseView {
    
    private let titleLabel: UILabel = {
        let lable = UILabel()
        lable.font = Resources.Fonts.helveticaRegular(with: 13)
        lable.textColor = Resources.Colors.inActive
        return lable
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        return button
    }()
    
    private let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderColor = Resources.Colors.separator.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        return view
    }()
    
    init(with title: String? = nil, buttonTitle: String? = nil) {
        titleLabel.text = title?.uppercased()
        titleLabel.textAlignment = buttonTitle == nil ? .center : .left
        button.setTitle(buttonTitle, for: .normal)
        button.isHidden = buttonTitle == nil ? true : false
        
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addButtonTarget(target: Any?, action: Selector) {
        button.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension BaseInfoView {
    override func setupViews() {
        super.setupViews()
        
        setupView(titleLabel)
        setupView(button)
        setupView(contentView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        let contentTopAnchor: NSLayoutAnchor = titleLabel.text == nil ? topAnchor : titleLabel.bottomAnchor
        let contentTopOffset: CGFloat = titleLabel.text == nil ? 0 : 10
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 130),
            button.heightAnchor.constraint(equalToConstant: 30),
            
            contentView.topAnchor.constraint(equalTo: contentTopAnchor, constant: contentTopOffset),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .clear
    }
}
