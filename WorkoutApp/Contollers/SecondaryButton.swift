import UIKit

final class SecondaryButton: UIButton {
    
    private let label: UILabel = {
        let lable = UILabel()
        lable.textColor = Resources.Colors.active
        lable.textAlignment = .center
        lable.font = Resources.Fonts.helveticaRegular(with: 15)
        return lable
    }()
    
    private let iconView: UIImageView = {
        let view = UIImageView()
        view.image = Resources.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate)
        view.tintColor = Resources.Colors.active
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(_ title: String) {
        label.text = title
    }
    
}

private extension SecondaryButton {
    func setupViews() {
        setupView(label)
        setupView(iconView)
    }
    
    func constraintViews() {
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
    
    func configureAppearance() {
        backgroundColor = Resources.Colors.secondary
        layer.cornerRadius = 14
        makeSystem(self)
    }
}
