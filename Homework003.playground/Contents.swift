import UIKit

//放進照片
let girlImage = UIImage(named: "girl.png")
let girlImageView = UIImageView(image: girlImage)
girlImageView.frame = CGRect(x: 0, y: 0, width: 450, height: 330)

//調整相片大小
girlImageView.contentMode = .scaleAspectFill

//設定圖片透明度
girlImageView.alpha = 0.7

//設定文字標籤
let messageLabel = UILabel(frame: CGRect(x: 70, y: 70, width: 200, height: 50))
messageLabel.text = "The best girl"
messageLabel.textColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
messageLabel.font = UIFont.systemFont(ofSize: 24)
messageLabel.transform = CGAffineTransform(rotationAngle: .pi/180 * -30)

//設定邊框大小及色彩
girlImageView.layer.borderWidth =  10
girlImageView.layer.borderColor = CGColor(red: 1, green: 1, blue: 0, alpha: 1)

girlImageView.layer.cornerRadius = 50
girlImageView.clipsToBounds = true

//放進Emoji & Symbols，並使用迴圈使其自行排列
for i in 0...13 {
    let starLabel = UILabel(frame: CGRect(x: 20+i*30, y: 20, width: 30, height: 30))
    starLabel.text = "🌹"
    starLabel.font = UIFont.systemFont(ofSize: 20)
    starLabel.transform = CGAffineTransform(rotationAngle: .pi/180 * -45)
    girlImageView.addSubview(starLabel)
}
for i in 0...13 {
    let starLabel = UILabel(frame: CGRect(x: 20+i*30, y: 290, width: 30, height: 30))
    starLabel.text = "🌹"
    starLabel.font = UIFont.systemFont(ofSize: 20)
    starLabel.transform = CGAffineTransform(rotationAngle: .pi/180 * -45)
    girlImageView.addSubview(starLabel)
}
for i in 0...10 {
    let starLabel = UILabel(frame: CGRect(x: 20, y: 20+i*30, width: 30, height: 30))
    starLabel.text = "🌹"
    starLabel.font = UIFont.systemFont(ofSize: 20)
    starLabel.transform = CGAffineTransform(rotationAngle: .pi/180 * -45)
    girlImageView.addSubview(starLabel)
}
for i in 0...10 {
    let starLabel = UILabel(frame: CGRect(x: 410, y: 20+i*30, width: 30, height: 30))
    starLabel.text = "🌹"
    starLabel.font = UIFont.systemFont(ofSize: 20)
    starLabel.transform = CGAffineTransform(rotationAngle: .pi/180 * -45)
    girlImageView.addSubview(starLabel)
}

//加入文字標籤
girlImageView.addSubview(messageLabel)
