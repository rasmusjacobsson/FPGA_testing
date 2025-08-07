# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "Baud_Rate" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Clockfrequency" -parent ${Page_0}


}

proc update_PARAM_VALUE.Baud_Rate { PARAM_VALUE.Baud_Rate } {
	# Procedure called to update Baud_Rate when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Baud_Rate { PARAM_VALUE.Baud_Rate } {
	# Procedure called to validate Baud_Rate
	return true
}

proc update_PARAM_VALUE.Clockfrequency { PARAM_VALUE.Clockfrequency } {
	# Procedure called to update Clockfrequency when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Clockfrequency { PARAM_VALUE.Clockfrequency } {
	# Procedure called to validate Clockfrequency
	return true
}


proc update_MODELPARAM_VALUE.Clockfrequency { MODELPARAM_VALUE.Clockfrequency PARAM_VALUE.Clockfrequency } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Clockfrequency}] ${MODELPARAM_VALUE.Clockfrequency}
}

proc update_MODELPARAM_VALUE.Baud_Rate { MODELPARAM_VALUE.Baud_Rate PARAM_VALUE.Baud_Rate } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Baud_Rate}] ${MODELPARAM_VALUE.Baud_Rate}
}

