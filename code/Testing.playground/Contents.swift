class Counter {
    var count = 0
    func increment() {
        var count = 7
        count += 1      // refers to the nearest variable
        self.count = count
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}

let counter = Counter()
// the initial counter value is 0
counter.increment()
print(counter.count)
// the counter's value is now 1
counter.increment(by: 5)
print(counter.count)
// the counter's value is now 6
counter.reset()
// the counter's value is now 0

print(counter.count)

class SurveyQuestion {
    let text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
    func ans() {
        print(response!)
    }
}
let beetsQuestion = SurveyQuestion(text: "How about beets?")
beetsQuestion.ask()
// Prints "How about beets?"
beetsQuestion.response = "I also like beets. (But not with cheese.)"
beetsQuestion.ans()

