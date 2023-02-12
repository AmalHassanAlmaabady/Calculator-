

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var clear: UIButton!
    @IBOutlet weak var subAndAdd: UIButton!
    @IBOutlet weak var reminder: UIButton!
    @IBOutlet weak var divided: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var mult: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var fife: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var subtract: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var dot: UIButton!
    @IBOutlet weak var equal: UIButton!
    
    var inputNumber : Double = 0 // safe current number
    var inputNumber2 : Double = 0 // safe pre number
    var checkOperations : Bool = false // check if thr input number after operation
    var operation : String = "" // safe the math operations
//    var subOrAdd : Bool = true
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        number.text = "0"
    }
    
    
    @IBAction func clearAction(_ sender: Any) {
        number.text = "0"
        inputNumber = Double(number.text!)!
        checkOperations = false
    }
    
    @IBAction func subAndAddAction(_ sender: Any) {
        number.text = String((Int(number.text ?? "") ?? 0 ) * -1)
        inputNumber = Double(number.text ?? "") ?? 0.0
    }
    
    @IBAction func reminderAction(_ sender: Any) {
        operation = "%"
        inputNumber2 = inputNumber
        checkOperations = true
    }
    
    @IBAction func dividedAction(_ sender: Any) {
        divided.showsTouchWhenHighlighted = true
        operation = "/"
        inputNumber2 = inputNumber
        checkOperations = true
    }
    
    @IBAction func multAction(_ sender: Any) {
        mult.showsTouchWhenHighlighted = true
        operation = "*"
        inputNumber2 = inputNumber
        checkOperations = true
    }
    
    @IBAction func subtractAction(_ sender: Any) {
        subtract.showsTouchWhenHighlighted = true
        operation = "-"
        inputNumber2 = inputNumber
        checkOperations = true
    }
    
    @IBAction func addAction(_ sender: Any) {
        plus.showsTouchWhenHighlighted = true
        operation = "+"
        inputNumber2 = inputNumber
        checkOperations = true
    }
    
    @IBAction func equalAction(_ sender: Any) {
        equal.showsTouchWhenHighlighted = true
        if operation == "+"{
            number.text = String(format: "%.2f", inputNumber2 + inputNumber)
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else if operation == "-"{
            number.text = String(format: "%.2f", inputNumber2 - inputNumber)
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else if operation == "*"{
            number.text = String(format: "%.2f", inputNumber2 * inputNumber)
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else if operation == "/"{
            number.text = String(format: "%.2f", inputNumber2 / inputNumber)
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else if operation == "%"{
            number.text = String(format: "%.2f", inputNumber2 / 100)
            inputNumber = Double(number.text ?? "") ?? 0.0
        }
        
    }
    
    @IBAction func sevenAction(_ sender: Any) {
        if number.text == "0."{
            number.text = ("0.7")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else if number.text == "0" || checkOperations {
            number.text = ("7")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else{
            number.text = (number.text ?? "") + "7"
            inputNumber = Double(number.text ?? "") ?? 0.0
        }
        checkOperations = false
    }
    
    @IBAction func eightAction(_ sender: Any) {
        if number.text == "0."{
            number.text = ("0.8")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else if number.text == "0" || checkOperations{
            number.text = ("8")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else{
            number.text = (number.text ?? "") + "8"
            inputNumber = Double(number.text ?? "") ?? 0.0
        }
        checkOperations = false
    }
    
    @IBAction func nineAction(_ sender: Any) {
        if number.text == "0."{
            number.text = ("0.9")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else if number.text == "0" || checkOperations{
            number.text = ("9")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else{
            number.text = (number.text ?? "") + "9"
            inputNumber = Double(number.text ?? "") ?? 0.0
        }
        checkOperations = false
    }
    
    @IBAction func fourAction(_ sender: Any) {
        if number.text == "0."{
            number.text = ("0.4")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else if number.text == "0" || checkOperations{
            number.text = ("4")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else{
            number.text = (number.text ?? "") + "4"
            inputNumber = Double(number.text ?? "") ?? 0.0
        }
        checkOperations = false
    }
    
    @IBAction func fifeAction(_ sender: Any) {
        if number.text == "0."{
            number.text = ("0.5")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else if number.text == "0" || checkOperations{
            number.text = ("5")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else{
            number.text = (number.text ?? "") + "5"
            inputNumber = Double(number.text ?? "") ?? 0.0
        }
        checkOperations = false
    }
    
    @IBAction func sixAction(_ sender: Any) {
        if number.text == "0."{
            number.text = ("0.6")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else if number.text == "0" || checkOperations{
            number.text = ("6")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else{
            number.text = (number.text ?? "") + "6"
            inputNumber = Double(number.text ?? "") ?? 0.0
        }
        checkOperations = false
    }
    
    @IBAction func oneAction(_ sender: Any) {
        if number.text == "0."{
            number.text = ("0.1")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else if number.text == "0" || checkOperations{
            number.text = ("1")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else{
            number.text = (number.text ?? "") + "1"
            inputNumber = Double(number.text ?? "") ?? 0.0
        }
        checkOperations = false
    }
    
    @IBAction func twoAction(_ sender: Any) {
        if number.text == "0."{
            number.text = ("0.2")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else if number.text == "0" || checkOperations{
            number.text = ("2")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else{
            number.text = (number.text ?? "") + "2"
            inputNumber = Double(number.text ?? "") ?? 0.0
        }
        checkOperations = false
    }
    
    @IBAction func threeAction(_ sender: Any) {
        if number.text == "0."{
            number.text = ("0.3")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else if number.text == "0" || checkOperations{
            number.text = ("3")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else{
            number.text = (number.text ?? "") + "3"
            inputNumber = Double(number.text ?? "") ?? 0.0
        }
        checkOperations = false
    }
    
    @IBAction func zeroAction(_ sender: Any) {
        if number.text == "0" {
            return
        }else if checkOperations{
            number.text = ("0")
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else{
            number.text = (number.text ?? "") + "0"
            inputNumber = Double(number.text ?? "") ?? 0.0
        }
    }
    
    @IBAction func dotAction(_ sender: Any) {
        if number.text == "0" {
            number.text = "0."
            inputNumber = Double(number.text!)!
        }else if checkOperations {
            number.text = "0."
            inputNumber = Double(number.text ?? "") ?? 0.0
        }else{
            number.text = (number.text ?? "") + "."
            inputNumber = Double(number.text ?? "") ?? 0.0
        }
    }
    
    
}

