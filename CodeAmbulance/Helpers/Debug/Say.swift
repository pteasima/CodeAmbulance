import Foundation
import SwiftUI
import AVFoundation

struct Say: EnvironmentKey {
  static let defaultValue: Self = .init()
  
  var say: (String) -> Void = { message in
    let utterance = AVSpeechUtterance(string: message)
    utterance.rate = 0.5
    utterance.pitchMultiplier = 0.8
    utterance.postUtteranceDelay = 0.2
    utterance.volume = 0.8
    // Assign the voice to the utterance.
    utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
    synthesizer.speak(utterance)
  }
  func callAsFunction(_ message: String) {
    say(message)
  }
}

private let synthesizer = AVSpeechSynthesizer()
