/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_184(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_24(char*, char *);
extern void execute_29(char*, char *);
extern void execute_34(char*, char *);
extern void execute_39(char*, char *);
extern void execute_44(char*, char *);
extern void execute_49(char*, char *);
extern void execute_54(char*, char *);
extern void execute_59(char*, char *);
extern void execute_64(char*, char *);
extern void execute_69(char*, char *);
extern void execute_74(char*, char *);
extern void execute_79(char*, char *);
extern void execute_84(char*, char *);
extern void execute_89(char*, char *);
extern void execute_94(char*, char *);
extern void execute_99(char*, char *);
extern void execute_104(char*, char *);
extern void execute_109(char*, char *);
extern void execute_114(char*, char *);
extern void execute_119(char*, char *);
extern void execute_124(char*, char *);
extern void execute_129(char*, char *);
extern void execute_134(char*, char *);
extern void execute_139(char*, char *);
extern void execute_144(char*, char *);
extern void execute_149(char*, char *);
extern void execute_154(char*, char *);
extern void execute_159(char*, char *);
extern void execute_164(char*, char *);
extern void execute_169(char*, char *);
extern void execute_174(char*, char *);
extern void execute_179(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[47] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_184, (funcp)execute_21, (funcp)execute_22, (funcp)execute_24, (funcp)execute_29, (funcp)execute_34, (funcp)execute_39, (funcp)execute_44, (funcp)execute_49, (funcp)execute_54, (funcp)execute_59, (funcp)execute_64, (funcp)execute_69, (funcp)execute_74, (funcp)execute_79, (funcp)execute_84, (funcp)execute_89, (funcp)execute_94, (funcp)execute_99, (funcp)execute_104, (funcp)execute_109, (funcp)execute_114, (funcp)execute_119, (funcp)execute_124, (funcp)execute_129, (funcp)execute_134, (funcp)execute_139, (funcp)execute_144, (funcp)execute_149, (funcp)execute_154, (funcp)execute_159, (funcp)execute_164, (funcp)execute_169, (funcp)execute_174, (funcp)execute_179, (funcp)execute_26, (funcp)execute_27, (funcp)vlog_transfunc_eventcallback, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 47;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/adder_subtractor_tb_behav/xsim.reloc",  (void **)funcTab, 47);
	iki_vhdl_file_variable_register(dp + 13176);
	iki_vhdl_file_variable_register(dp + 13232);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/adder_subtractor_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/adder_subtractor_tb_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/adder_subtractor_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/adder_subtractor_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/adder_subtractor_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
