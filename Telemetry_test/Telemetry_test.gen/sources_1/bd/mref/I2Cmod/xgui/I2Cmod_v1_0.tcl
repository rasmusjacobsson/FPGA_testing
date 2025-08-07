# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "Bus_Clockfrequency" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Sys_Clockfrequency" -parent ${Page_0}


}

proc update_PARAM_VALUE.Bus_Clockfrequency { PARAM_VALUE.Bus_Clockfrequency } {
	# Procedure called to update Bus_Clockfrequency when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Bus_Clockfrequency { PARAM_VALUE.Bus_Clockfrequency } {
	# Procedure called to validate Bus_Clockfrequency
	return true
}

proc update_PARAM_VALUE.Sys_Clockfrequency { PARAM_VALUE.Sys_Clockfrequency } {
	# Procedure called to update Sys_Clockfrequency when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Sys_Clockfrequency { PARAM_VALUE.Sys_Clockfrequency } {
	# Procedure called to validate Sys_Clockfrequency
	return true
}


proc update_MODELPARAM_VALUE.Sys_Clockfrequency { MODELPARAM_VALUE.Sys_Clockfrequency PARAM_VALUE.Sys_Clockfrequency } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Sys_Clockfrequency}] ${MODELPARAM_VALUE.Sys_Clockfrequency}
}

proc update_MODELPARAM_VALUE.Bus_Clockfrequency { MODELPARAM_VALUE.Bus_Clockfrequency PARAM_VALUE.Bus_Clockfrequency } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Bus_Clockfrequency}] ${MODELPARAM_VALUE.Bus_Clockfrequency}
}

