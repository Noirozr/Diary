import UIKit

class HomeYearCollectionViewCell: UICollectionViewCell {
    
    var textLabel: DiaryLabel!
    var textInt: Int = 0
    var labelText: String = "" {
        didSet {
            self.textLabel.updateText(labelText)
        }
    }
    
    override func awakeFromNib() {
        
        self.textLabel = DiaryLabel(fontName: "TpldKhangXiDictTrial", labelText: labelText, fontSize: 16, lineHeight: 5)
        self.addSubview(textLabel)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.textLabel.center = CGPointMake(itemWidth / 2, 150.0 / 2.0)
    }
}