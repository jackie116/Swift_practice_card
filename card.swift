import UIKit

let lakeImage = UIImage(named: "lake.jpeg")
let chihuaImage = UIImage(named: "chihua.png")

let lakeImageView = UIImageView(image: lakeImage)
let chihuaImageView = UIImageView(image: chihuaImage)

//調整吉娃大小位置透明度
chihuaImageView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
chihuaImageView.center = CGPoint(x: 1200, y: 800)
chihuaImageView.alpha = 0.5

lakeImageView.addSubview(chihuaImageView)

//設定背景大小
lakeImageView.frame = CGRect(x: 0, y: 0, width: 1600, height: 1200)
lakeImageView.contentMode = .scaleAspectFill

//UILabel
let messageLabel = UILabel(frame: CGRect(x: 200, y: 200, width: 420, height: 60))
messageLabel.text = "吉娃在哪裡？"
messageLabel.textColor = UIColor(red: 0, green: 0.5, blue: 1, alpha: 1)
messageLabel.font = UIFont.systemFont(ofSize: 32)

lakeImageView.addSubview(messageLabel)

//border
lakeImageView.layer.borderWidth = 5
lakeImageView.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0)
lakeImageView.layer.cornerRadius = 45
lakeImageView.clipsToBounds = true

//top & down border Emoji
//for...loop & random
let emojis = ["🇨🇦","🇯🇵","🇬🇧","🇺🇸","🇸🇪","🇳🇴","🇸🇬","🇷🇴","🇨🇳","🇹🇼"]
for i in 0...29 {
    var topEmoji = UILabel(frame: CGRect(x: i*50+50, y: 50, width: 50, height: 50))
    topEmoji.text = emojis.randomElement()
    topEmoji.font = UIFont.systemFont(ofSize: CGFloat.random(in: 25...45))
    topEmoji.transform = CGAffineTransform(rotationAngle: .pi/180*45*CGFloat(i))
    
    lakeImageView.addSubview(topEmoji)
    
    var bottomEmoji = UILabel(frame: CGRect(x: i*50+50, y: 1150, width: 50, height: 50))
    bottomEmoji.text = emojis.randomElement()
    bottomEmoji.font = UIFont.systemFont(ofSize: CGFloat.random(in: 25...45))
    bottomEmoji.transform = CGAffineTransform(rotationAngle: .pi/180*45*CGFloat(i))
    
    lakeImageView.addSubview(bottomEmoji)
}

for i in 0...21 {
    var leftEmoji = UILabel(frame: CGRect(x: 50, y: i*50+50, width: 50, height: 50))
    leftEmoji.text = emojis.randomElement()
    leftEmoji.font = UIFont.systemFont(ofSize: CGFloat.random(in: 25...45))
    leftEmoji.transform = CGAffineTransform(rotationAngle: .pi/180*(-45)*CGFloat(i))
    
    lakeImageView.addSubview(leftEmoji)
    
    var rightEmoji = UILabel(frame: CGRect(x: 1550, y: i*50+50, width: 50, height: 50))
    rightEmoji.text = emojis.randomElement()
    rightEmoji.font = UIFont.systemFont(ofSize: CGFloat.random(in: 25...45))
    rightEmoji.transform = CGAffineTransform(rotationAngle: .pi/180*(-45)*CGFloat(i))
    
    lakeImageView.addSubview(rightEmoji)
}
