// Copyright AudioKit. All Rights Reserved. Revision History at http://github.com/AudioKit/AudioKit/

import AudioKit

class AKCostelloReverbTests: AKTestCase {

    func testCutoffFrequency() {
        output = AKCostelloReverb(input, cutoffFrequency: 1_234)
        AKTest()
    }

    func testDefault() {
        output = AKCostelloReverb(input)
        AKTest()
    }

    func testFeedback() {
        output = AKCostelloReverb(input, feedback: 0.95)
        AKTest()
    }

    func testParametersSetAfterInit() {
        let effect = AKCostelloReverb(input)
        effect.rampDuration = 0.0
        effect.cutoffFrequency = 1_234
        effect.feedback = 0.95
        output = effect
        AKTest()
    }

    func testParametersSetOnInit() {
        output = AKCostelloReverb(input,
                                  feedback: 0.95,
                                  cutoffFrequency: 1_234)
        AKTest()
    }

}
