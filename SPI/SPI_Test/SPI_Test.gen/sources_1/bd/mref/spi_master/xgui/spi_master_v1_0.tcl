# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "addr" -parent ${Page_0}
  ipgui::add_param $IPINST -name "clk_div" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cpha" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cpol" -parent ${Page_0}
  ipgui::add_param $IPINST -name "d_width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "slaves" -parent ${Page_0}


}

proc update_PARAM_VALUE.addr { PARAM_VALUE.addr } {
	# Procedure called to update addr when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.addr { PARAM_VALUE.addr } {
	# Procedure called to validate addr
	return true
}

proc update_PARAM_VALUE.clk_div { PARAM_VALUE.clk_div } {
	# Procedure called to update clk_div when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.clk_div { PARAM_VALUE.clk_div } {
	# Procedure called to validate clk_div
	return true
}

proc update_PARAM_VALUE.cpha { PARAM_VALUE.cpha } {
	# Procedure called to update cpha when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cpha { PARAM_VALUE.cpha } {
	# Procedure called to validate cpha
	return true
}

proc update_PARAM_VALUE.cpol { PARAM_VALUE.cpol } {
	# Procedure called to update cpol when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cpol { PARAM_VALUE.cpol } {
	# Procedure called to validate cpol
	return true
}

proc update_PARAM_VALUE.d_width { PARAM_VALUE.d_width } {
	# Procedure called to update d_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.d_width { PARAM_VALUE.d_width } {
	# Procedure called to validate d_width
	return true
}

proc update_PARAM_VALUE.slaves { PARAM_VALUE.slaves } {
	# Procedure called to update slaves when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.slaves { PARAM_VALUE.slaves } {
	# Procedure called to validate slaves
	return true
}


proc update_MODELPARAM_VALUE.slaves { MODELPARAM_VALUE.slaves PARAM_VALUE.slaves } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.slaves}] ${MODELPARAM_VALUE.slaves}
}

proc update_MODELPARAM_VALUE.d_width { MODELPARAM_VALUE.d_width PARAM_VALUE.d_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.d_width}] ${MODELPARAM_VALUE.d_width}
}

proc update_MODELPARAM_VALUE.addr { MODELPARAM_VALUE.addr PARAM_VALUE.addr } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.addr}] ${MODELPARAM_VALUE.addr}
}

proc update_MODELPARAM_VALUE.clk_div { MODELPARAM_VALUE.clk_div PARAM_VALUE.clk_div } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.clk_div}] ${MODELPARAM_VALUE.clk_div}
}

proc update_MODELPARAM_VALUE.cpol { MODELPARAM_VALUE.cpol PARAM_VALUE.cpol } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cpol}] ${MODELPARAM_VALUE.cpol}
}

proc update_MODELPARAM_VALUE.cpha { MODELPARAM_VALUE.cpha PARAM_VALUE.cpha } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cpha}] ${MODELPARAM_VALUE.cpha}
}

