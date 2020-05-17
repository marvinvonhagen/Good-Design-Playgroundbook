//#-code-completion(everything, hide)
//#-code-completion(identifier, show, iPhoneX, iPhoneXS, Blackberry, Xiaomi)
//#-hidden-code
enum ShotOn {
    case iPhoneX, iPhoneXS, Blackberry, Xiaomi
}



func showPicture(shotOn: ShotOn) {
    switch shotOn {
    case .iPhoneX:
        _setup(imgSet: 31)
    case .iPhoneXS:
        _setup(imgSet: 32)
    case .Xiaomi:
        _setup(imgSet: 33)
    case .Blackberry:
        _setup(imgSet: 34)
    default:
        _setup(imgSet: 404)
    }
}
//#-end-hidden-code
/*:
 # 5 – Good design is unobtrusive
 *Products fulfilling a purpose are like tools. They are neither decorative objects nor works of art. Their design should therefore be both neutral and restrained, to leave room for the user’s self-expression.*
 
 # 6 – Good design is honest
 *It does not make a product more innovative, powerful or valuable than it really is. It does not attempt to manipulate the consumer with promises that cannot be kept.*
 
 - - -
 
 As Steve Jobs said: *Design is not just what it looks and feels like. Design is how it works.* Therefore, how the camera works is part of a Smartphone's design.

 Tech Reviewer Marques Brownlee (a.k.a. MKBHD) ran a blind survey in November 2018 to find out the best smartphone camera. He put 16 Smartphones into the competition on social media – the results were shocking! While iPhone X & XS or Google Pixel 3 are generally seen as the best smartphone cameras, they were out in the first round. For example, the Blackberry KEY2 with a very low-quality camera won by over 150,000 votes against the iPhone Xs.
  
 Almost always, the brighter, more saturated photo won. Because social media platforms like Twitter and Instagram compress pictures massively, differences in things like sharpness disappear. When now putting two pictures from different cameras side-by-side, untrained eyes almost always choose the 'populistic' picture, which looks brighter and warmer. Many low-price phones edit photos directly to let them appear as if the camera was capturing more light than it actually does.

 iPhones, however, shoot very natural pictures with many details. Dieter Rams would call them honest – they don't try to fool the consumer with punchy filters. In the same way, the pictures are unobtrusive - they don't let the photographed subject appear unnaturally colorful but instead restrained.

 * Callout(Take a look):
 If you want to take a look at the pictures of the iPhones and the phones that won against them by far, call the function `showPicture(shotOn:)`. Possible arguments are `.iPhoneX`, `.iPhoneXS`, `.Blackberry` (KEY2) and `.Xiaomi` (Pocophone F1) 📸
 */
showPicture(shotOn: ./*#-editable-code*/<#T##Name of Smartphone##String#>/*#-end-editable-code*/)
