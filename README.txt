Introduction
------------
PhoneGapStripped is a fork of phonegap-iphone that enables developers to incorporate the PhoneGap library into their own pre-existing iPhone application in order to achieve a bidirectional objective-c <-> javascript bridge.

Getting started
---------------
    * build the project and you should see two buttons
        -> pressing one will call an objective-c function from javascript
        -> pressing the other will call a javascript function from objective-c

    * code you will probably want to modify is in PhoneGapStrippedViewController.m, MyCustomObj.m and index.html

    * a caveat about copying files over to your project - make sure you phonegap.js is not compiled on build and that it is added as a target to copy bundle resources 

Requirements
------------
   * xcode 
