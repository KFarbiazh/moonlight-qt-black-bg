import QtQuick 2.0

import StreamingPreferences 1.0

// Backdrop for the loading/quit segue screens. The color is
// user-selectable in the settings (default: black).
Rectangle {
    anchors.fill: parent
    z: -1
    color: {
        switch (StreamingPreferences.loadingBackground) {
        case StreamingPreferences.LB_GRAY:
            return "#303030"
        case StreamingPreferences.LB_MIDNIGHT:
            return "#0A1220"
        case StreamingPreferences.LB_SLATE:
            return "#16181D"
        default:
            return "#000000"
        }
    }
}
