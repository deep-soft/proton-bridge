// Copyright (c) 2023 Proton AG
// This file is part of Proton Mail Bridge.
// Proton Mail Bridge is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// Proton Mail Bridge is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// You should have received a copy of the GNU General Public License
// along with Proton Mail Bridge. If not, see <https://www.gnu.org/licenses/>.
import QtQml
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.impl
import "." as Proton

Item {
    id: root

    property ColorScheme colorScheme

    ColumnLayout {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        spacing: 0

        Image {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            Layout.preferredHeight: 148
            Layout.preferredWidth: 265
            antialiasing: true
            source: "/qml/icons/img-welcome.svg"
            sourceSize.height: 148
            sourceSize.width: 265
        }
        Label {
            Layout.alignment: Qt.AlignHCenter
            Layout.fillWidth: true
            Layout.topMargin: 16
            colorScheme: root.colorScheme
            horizontalAlignment: Text.AlignHCenter
            text: qsTr("Welcome to\nProton Mail Bridge")
            type: Label.LabelType.Heading
        }
        Label {
            Layout.alignment: Qt.AlignHCenter
            Layout.fillWidth: true
            Layout.topMargin: 96
            colorScheme: root.colorScheme
            horizontalAlignment: Text.AlignHCenter
            text: qsTr("Bridge is the gateway between your Proton account and your email client. It runs in the background and encrypts and decrypts your messages seamlessly. ")
            type: Label.LabelType.Body
            wrapMode: Text.WordWrap
        }
        Label {
            Layout.alignment: Qt.AlignHCenter
            Layout.fillWidth: false
            Layout.topMargin: 48
            colorScheme: root.colorScheme
            horizontalAlignment: Text.AlignHCenter
            text: link("https://proton.me/support/bridge", qsTr("Why do I need Bridge?"))
            type: Label.LabelType.Body

            onLinkActivated: function (link) {
                Qt.openUrlExternally(link);
            }

            HoverHandler {
                acceptedDevices: PointerDevice.Mouse
                cursorShape: Qt.PointingHandCursor
            }
        }
    }
}