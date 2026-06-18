// FILE: RemodexControlCenterWidget.swift
// Purpose: iOS 18 Control Center widget that adds a Remodex quick-launch
//          button to the Controls Gallery. Tapping the button triggers
//          `RemodexLaunchIntent`, which brings the Remodex app to the
//          foreground.
// Layer: Widget Extension

import AppIntents
import SwiftUI
import WidgetKit

@available(iOS 18.0, *)
struct RemodexLaunchControl: ControlWidget {
    static let kind = "com.pathwit.code.Widget.LaunchControl.v9"

    var body: some ControlWidgetConfiguration {
        StaticControlConfiguration(kind: Self.kind) {
            ControlWidgetButton(action: RemodexLaunchIntent()) {
                // Control Center only accepts symbol images, so this routes
                // through the control-sized Remodex symbolset.
                Label("Pathwit Code", image: "remodex_control_symbol")
            }
        }
        .displayName("Pathwit Code")
        .description("Launch Pathwit Code from Control Center.")
    }
}
