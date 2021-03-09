
"use strict";

let MasterboardDataMsg = require('./MasterboardDataMsg.js');
let RobotStateRTMsg = require('./RobotStateRTMsg.js');
let IOStates = require('./IOStates.js');
let Digital = require('./Digital.js');
let RobotModeDataMsg = require('./RobotModeDataMsg.js');
let Analog = require('./Analog.js');
let ToolDataMsg = require('./ToolDataMsg.js');

module.exports = {
  MasterboardDataMsg: MasterboardDataMsg,
  RobotStateRTMsg: RobotStateRTMsg,
  IOStates: IOStates,
  Digital: Digital,
  RobotModeDataMsg: RobotModeDataMsg,
  Analog: Analog,
  ToolDataMsg: ToolDataMsg,
};
