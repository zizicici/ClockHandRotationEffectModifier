//
//  ClockHandRotationEffectModifier.swift
//  ClockHandRotationEffectModifier
//
//  Created by everettjf on 2022/12/14.
//
import SwiftUI
import WidgetKit

@available(iOS 14.0, *)
public struct ClockHandRotationEffectModifier: ViewModifier {
    public enum Period {
        case custom(TimeInterval)
        case secondHand, hourHand, minuteHand
    }
    
    let clockPeriod: WidgetKit._ClockHandRotationEffect.Period
    let clockTimezone: TimeZone
    let clockAnchor: UnitPoint
    
    public init(_ period: Period, in timezone: TimeZone, anchor: UnitPoint) {
        var clockPeriod: WidgetKit._ClockHandRotationEffect.Period = .secondHand
        switch period {
        case .custom(let timeInterval):
            clockPeriod = .custom(timeInterval)
        case .secondHand:
            clockPeriod = .secondHand
        case .hourHand:
            clockPeriod = .hourHand
        case .minuteHand:
            clockPeriod = .minuteHand
        }
        self.clockPeriod = clockPeriod
        self.clockTimezone = timezone
        self.clockAnchor = anchor
    }

    public func body(content: Content) -> some View {
        content
            ._clockHandRotationEffect(self.clockPeriod, in: self.clockTimezone, anchor: self.clockAnchor)
    }
}
