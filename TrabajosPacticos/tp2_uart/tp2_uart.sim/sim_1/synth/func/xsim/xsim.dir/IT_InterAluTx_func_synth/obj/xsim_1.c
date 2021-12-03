/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
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
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
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
IKI_DLLESPEC extern void execute_750(char*, char *);
IKI_DLLESPEC extern void execute_751(char*, char *);
IKI_DLLESPEC extern void execute_752(char*, char *);
IKI_DLLESPEC extern void execute_1297(char*, char *);
IKI_DLLESPEC extern void execute_1298(char*, char *);
IKI_DLLESPEC extern void execute_1299(char*, char *);
IKI_DLLESPEC extern void execute_1300(char*, char *);
IKI_DLLESPEC extern void execute_758(char*, char *);
IKI_DLLESPEC extern void execute_5(char*, char *);
IKI_DLLESPEC extern void execute_759(char*, char *);
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_788(char*, char *);
IKI_DLLESPEC extern void execute_768(char*, char *);
IKI_DLLESPEC extern void execute_769(char*, char *);
IKI_DLLESPEC extern void execute_770(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_773(char*, char *);
IKI_DLLESPEC extern void execute_774(char*, char *);
IKI_DLLESPEC extern void execute_775(char*, char *);
IKI_DLLESPEC extern void execute_776(char*, char *);
IKI_DLLESPEC extern void execute_28(char*, char *);
IKI_DLLESPEC extern void execute_790(char*, char *);
IKI_DLLESPEC extern void execute_791(char*, char *);
IKI_DLLESPEC extern void execute_792(char*, char *);
IKI_DLLESPEC extern void execute_793(char*, char *);
IKI_DLLESPEC extern void execute_789(char*, char *);
IKI_DLLESPEC extern void execute_31(char*, char *);
IKI_DLLESPEC extern void execute_795(char*, char *);
IKI_DLLESPEC extern void execute_796(char*, char *);
IKI_DLLESPEC extern void execute_797(char*, char *);
IKI_DLLESPEC extern void execute_798(char*, char *);
IKI_DLLESPEC extern void execute_799(char*, char *);
IKI_DLLESPEC extern void execute_800(char*, char *);
IKI_DLLESPEC extern void execute_801(char*, char *);
IKI_DLLESPEC extern void execute_802(char*, char *);
IKI_DLLESPEC extern void execute_794(char*, char *);
IKI_DLLESPEC extern void execute_34(char*, char *);
IKI_DLLESPEC extern void execute_35(char*, char *);
IKI_DLLESPEC extern void execute_39(char*, char *);
IKI_DLLESPEC extern void execute_40(char*, char *);
IKI_DLLESPEC extern void execute_43(char*, char *);
IKI_DLLESPEC extern void execute_44(char*, char *);
IKI_DLLESPEC extern void execute_74(char*, char *);
IKI_DLLESPEC extern void execute_75(char*, char *);
IKI_DLLESPEC extern void execute_76(char*, char *);
IKI_DLLESPEC extern void execute_829(char*, char *);
IKI_DLLESPEC extern void execute_830(char*, char *);
IKI_DLLESPEC extern void execute_831(char*, char *);
IKI_DLLESPEC extern void execute_142(char*, char *);
IKI_DLLESPEC extern void execute_143(char*, char *);
IKI_DLLESPEC extern void execute_144(char*, char *);
IKI_DLLESPEC extern void execute_893(char*, char *);
IKI_DLLESPEC extern void execute_894(char*, char *);
IKI_DLLESPEC extern void execute_895(char*, char *);
IKI_DLLESPEC extern void execute_212(char*, char *);
IKI_DLLESPEC extern void execute_991(char*, char *);
IKI_DLLESPEC extern void execute_992(char*, char *);
IKI_DLLESPEC extern void execute_990(char*, char *);
IKI_DLLESPEC extern void execute_729(char*, char *);
IKI_DLLESPEC extern void execute_1268(char*, char *);
IKI_DLLESPEC extern void execute_1269(char*, char *);
IKI_DLLESPEC extern void execute_1270(char*, char *);
IKI_DLLESPEC extern void execute_754(char*, char *);
IKI_DLLESPEC extern void execute_755(char*, char *);
IKI_DLLESPEC extern void execute_756(char*, char *);
IKI_DLLESPEC extern void execute_757(char*, char *);
IKI_DLLESPEC extern void execute_1301(char*, char *);
IKI_DLLESPEC extern void execute_1302(char*, char *);
IKI_DLLESPEC extern void execute_1303(char*, char *);
IKI_DLLESPEC extern void execute_1304(char*, char *);
IKI_DLLESPEC extern void execute_1305(char*, char *);
IKI_DLLESPEC extern void execute_1306(char*, char *);
IKI_DLLESPEC extern void transaction_15(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_23(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_24(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_25(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_26(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_28(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_29(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_30(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_31(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_172(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_176(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_180(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_184(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_188(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_192(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_196(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_200(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_217(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_330(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_334(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_338(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_342(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_346(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_377(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_386(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_642(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_646(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_650(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_654(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_658(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_662(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_666(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_670(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_679(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_683(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_687(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_691(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_695(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_699(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_703(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_707(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_716(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_720(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_724(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_728(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_732(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_736(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_836(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_840(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_844(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_848(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_852(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_919(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_923(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_927(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_969(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_973(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_977(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_981(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1031(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1035(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1039(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1043(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1047(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1056(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1060(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1064(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1068(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1072(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1084(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1093(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1124(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[154] = {(funcp)execute_750, (funcp)execute_751, (funcp)execute_752, (funcp)execute_1297, (funcp)execute_1298, (funcp)execute_1299, (funcp)execute_1300, (funcp)execute_758, (funcp)execute_5, (funcp)execute_759, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_788, (funcp)execute_768, (funcp)execute_769, (funcp)execute_770, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_773, (funcp)execute_774, (funcp)execute_775, (funcp)execute_776, (funcp)execute_28, (funcp)execute_790, (funcp)execute_791, (funcp)execute_792, (funcp)execute_793, (funcp)execute_789, (funcp)execute_31, (funcp)execute_795, (funcp)execute_796, (funcp)execute_797, (funcp)execute_798, (funcp)execute_799, (funcp)execute_800, (funcp)execute_801, (funcp)execute_802, (funcp)execute_794, (funcp)execute_34, (funcp)execute_35, (funcp)execute_39, (funcp)execute_40, (funcp)execute_43, (funcp)execute_44, (funcp)execute_74, (funcp)execute_75, (funcp)execute_76, (funcp)execute_829, (funcp)execute_830, (funcp)execute_831, (funcp)execute_142, (funcp)execute_143, (funcp)execute_144, (funcp)execute_893, (funcp)execute_894, (funcp)execute_895, (funcp)execute_212, (funcp)execute_991, (funcp)execute_992, (funcp)execute_990, (funcp)execute_729, (funcp)execute_1268, (funcp)execute_1269, (funcp)execute_1270, (funcp)execute_754, (funcp)execute_755, (funcp)execute_756, (funcp)execute_757, (funcp)execute_1301, (funcp)execute_1302, (funcp)execute_1303, (funcp)execute_1304, (funcp)execute_1305, (funcp)execute_1306, (funcp)transaction_15, (funcp)transaction_23, (funcp)transaction_24, (funcp)transaction_25, (funcp)transaction_26, (funcp)transaction_28, (funcp)transaction_29, (funcp)transaction_30, (funcp)transaction_31, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_34, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_172, (funcp)transaction_176, (funcp)transaction_180, (funcp)transaction_184, (funcp)transaction_188, (funcp)transaction_192, (funcp)transaction_196, (funcp)transaction_200, (funcp)transaction_217, (funcp)transaction_330, (funcp)transaction_334, (funcp)transaction_338, (funcp)transaction_342, (funcp)transaction_346, (funcp)transaction_377, (funcp)transaction_386, (funcp)transaction_642, (funcp)transaction_646, (funcp)transaction_650, (funcp)transaction_654, (funcp)transaction_658, (funcp)transaction_662, (funcp)transaction_666, (funcp)transaction_670, (funcp)transaction_679, (funcp)transaction_683, (funcp)transaction_687, (funcp)transaction_691, (funcp)transaction_695, (funcp)transaction_699, (funcp)transaction_703, (funcp)transaction_707, (funcp)transaction_716, (funcp)transaction_720, (funcp)transaction_724, (funcp)transaction_728, (funcp)transaction_732, (funcp)transaction_736, (funcp)transaction_836, (funcp)transaction_840, (funcp)transaction_844, (funcp)transaction_848, (funcp)transaction_852, (funcp)transaction_919, (funcp)transaction_923, (funcp)transaction_927, (funcp)transaction_969, (funcp)transaction_973, (funcp)transaction_977, (funcp)transaction_981, (funcp)transaction_1031, (funcp)transaction_1035, (funcp)transaction_1039, (funcp)transaction_1043, (funcp)transaction_1047, (funcp)transaction_1056, (funcp)transaction_1060, (funcp)transaction_1064, (funcp)transaction_1068, (funcp)transaction_1072, (funcp)transaction_1084, (funcp)transaction_1093, (funcp)transaction_1124};
const int NumRelocateId= 154;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/IT_InterAluTx_func_synth/xsim.reloc",  (void **)funcTab, 154);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/IT_InterAluTx_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/IT_InterAluTx_func_synth/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/IT_InterAluTx_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/IT_InterAluTx_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/IT_InterAluTx_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
