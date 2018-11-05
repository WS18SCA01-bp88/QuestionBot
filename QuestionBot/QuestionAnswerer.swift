struct MyQuestionAnswerer {
//    func responseTo(question: String) -> String {
//        // TODO: Write a response
//        return "?"
//    }
    var count = 0
    var SeenCats: Bool = false
    var previousAnswers: [String] = [String]()
    
    mutating func responseTo(question: String) -> String {
        let lowerCaseQuestion: String = question.lowercased()
        
        for answer in previousAnswers {
            if question.lowercased() == answer {
                return "You've already asked me this. Do you want to ask me something else?"
            }
        }
        
        // Collect answer in array
        previousAnswers.append(question.lowercased())
        
        count += 1
        if count == 4 {
            return "I find myself growing fatigued."
        }
        
        if lowerCaseQuestion.contains("cats") {
            return "I saw that you mention cats. Did you know cats do not have 9 lives? The More You Know."
        }
        
        if lowerCaseQuestion == "Where are the cookies?" {
            return "In the cookie jar!"
        } else if lowerCaseQuestion.hasPrefix("where") {
            return "To the North!"
        }
        return "Why, hello there!"
    }
}
