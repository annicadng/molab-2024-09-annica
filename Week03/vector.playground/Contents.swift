import UIKit

let dim = 1500.0
let color = [CGFloat(arc4random_uniform(256)) / 255.0,CGFloat(arc4random_uniform(256)) / 255.0,CGFloat(arc4random_uniform(256)) / 255.0]
let strokeLen = 0.75
let renderer = UIGraphicsImageRenderer(size: CGSize(width: dim, height: dim))


var image = renderer.image { (context) in
    
    let randomColor = UIColor(
        red: color[0],
        green: color[1],
        blue: color[2],
        alpha: 1.0
    )
    
    let randomColor2 = UIColor(
        red: color[1],
        green: color[2],
        blue: color[0],
        alpha: 1.0
    )
    let ctx = context.cgContext
    let box = renderer.format.bounds
    randomColor2.setFill();
    context.fill(box)
    ctx.setStrokeColor(randomColor.cgColor)
    
    for i in 1..<20 {
        let size = dim - 10 * Double(i) * 20
        let origin = 400.0
        let box = CGRect(x:origin, y:origin, width: size, height: size)
        
        ctx.setLineWidth(20  * strokeLen)
        ctx.strokeEllipse(in: box)
    }
    
    for i in 1..<20 {
        let size = dim - 40 * Double(i) * 2
        let origin = 100.0
        let box = CGRect(x:origin, y:origin, width: size, height: size)
        
        ctx.setLineWidth(20  * strokeLen)
        ctx.strokeEllipse(in: box)
    }
    
}



image
let data = image.pngData()

let folder = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first

let filePath = folder!.appendingPathComponent("myImage.png");
