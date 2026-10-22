/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/mini_cpu/pc_tb.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;
extern char *STD_STANDARD;

unsigned char ieee_p_1242562249_sub_3307759752501503797_1035706684(char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2544820825_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int64 t10;
    int64 t11;

LAB0:    t1 = (t0 + 2784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(19, ng0);

LAB4:    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (!(t4));
    if (t5 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(23, ng0);

LAB18:    *((char **)t1) = &&LAB19;

LAB1:    return;
LAB5:    xsi_set_current_line(20, ng0);
    t2 = (t0 + 3464);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(20, ng0);
    t2 = (t0 + 1808U);
    t3 = *((char **)t2);
    t10 = *((int64 *)t3);
    t11 = (t10 / 2);
    t2 = (t0 + 2592);
    xsi_process_wait(t2, t11);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:;
LAB8:    xsi_set_current_line(21, ng0);
    t2 = (t0 + 3464);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(21, ng0);
    t2 = (t0 + 1808U);
    t3 = *((char **)t2);
    t10 = *((int64 *)t3);
    t11 = (t10 / 2);
    t2 = (t0 + 2592);
    xsi_process_wait(t2, t11);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB4;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    goto LAB2;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

}

static void work_a_2544820825_3212880686_p_1(char *t0)
{
    char t15[16];
    char t19[16];
    char t21[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    int64 t8;
    unsigned int t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    int t14;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;

LAB0:    t1 = (t0 + 3032U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(29, ng0);

LAB6:    t2 = (t0 + 3352);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t4 = (t0 + 3352);
    *((int *)t4) = 0;
    xsi_set_current_line(30, ng0);
    t8 = (1 * 1000LL);
    t2 = (t0 + 2840);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5336);
    t7 = 1;
    if (4U == 4U)
        goto LAB14;

LAB15:    t7 = 0;

LAB16:    if (t7 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(34, ng0);
    t2 = (t0 + 5360);
    *((int *)t2) = 1;
    t3 = (t0 + 5364);
    *((int *)t3) = 17;
    t12 = 1;
    t13 = 17;

LAB20:    if (t12 <= t13)
        goto LAB21;

LAB23:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(42, ng0);

LAB37:    t2 = (t0 + 3384);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB38;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t10 = (t0 + 5340);
    xsi_report(t10, 20U, (unsigned char)2);
    goto LAB13;

LAB14:    t9 = 0;

LAB17:    if (t9 < 4U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB15;

LAB19:    t9 = (t9 + 1);
    goto LAB17;

LAB21:    xsi_set_current_line(35, ng0);

LAB26:    t4 = (t0 + 3368);
    *((int *)t4) = 1;
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB22:    t2 = (t0 + 5360);
    t12 = *((int *)t2);
    t3 = (t0 + 5364);
    t13 = *((int *)t3);
    if (t12 == t13)
        goto LAB23;

LAB34:    t14 = (t12 + 1);
    t12 = t14;
    t4 = (t0 + 5360);
    *((int *)t4) = t12;
    goto LAB20;

LAB24:    t6 = (t0 + 3368);
    *((int *)t6) = 0;
    xsi_set_current_line(36, ng0);
    t8 = (1 * 1000LL);
    t2 = (t0 + 2840);
    xsi_process_wait(t2, t8);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    t5 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t5, 0U, 0U);
    if (t7 == 1)
        goto LAB24;
    else
        goto LAB26;

LAB27:    goto LAB25;

LAB28:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5296U);
    t4 = (t0 + 5360);
    t14 = xsi_vhdl_mod(*((int *)t4), 16);
    t7 = ieee_p_1242562249_sub_3307759752501503797_1035706684(IEEE_P_1242562249, t3, t2, t14);
    if (t7 == 0)
        goto LAB32;

LAB33:    goto LAB22;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    t5 = (t0 + 5368);
    t10 = ((STD_STANDARD) + 384);
    t11 = (t0 + 5360);
    t16 = xsi_int_to_mem(*((int *)t11));
    t17 = xsi_string_variable_get_image(t15, t10, t16);
    t20 = ((STD_STANDARD) + 984);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 1;
    t23 = (t22 + 4U);
    *((int *)t23) = 17;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (17 - 1);
    t9 = (t24 * 1);
    t9 = (t9 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t9;
    t18 = xsi_base_array_concat(t18, t19, t20, (char)97, t5, t21, (char)97, t17, t15, (char)101);
    t23 = (t15 + 12U);
    t9 = *((unsigned int *)t23);
    t25 = (17U + t9);
    xsi_report(t18, t25, (unsigned char)2);
    goto LAB33;

LAB35:    t4 = (t0 + 3384);
    *((int *)t4) = 0;
    xsi_set_current_line(43, ng0);
    t8 = (1 * 1000LL);
    t2 = (t0 + 2840);
    xsi_process_wait(t2, t8);

LAB41:    *((char **)t1) = &&LAB42;
    goto LAB1;

LAB36:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB35;
    else
        goto LAB37;

LAB38:    goto LAB36;

LAB39:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5385);
    t7 = 1;
    if (4U == 4U)
        goto LAB45;

LAB46:    t7 = 0;

LAB47:    if (t7 == 0)
        goto LAB43;

LAB44:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 5416);
    xsi_report(t2, 14U, (unsigned char)0);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 3592);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(48, ng0);

LAB53:    *((char **)t1) = &&LAB54;
    goto LAB1;

LAB40:    goto LAB39;

LAB42:    goto LAB40;

LAB43:    t10 = (t0 + 5389);
    xsi_report(t10, 27U, (unsigned char)2);
    goto LAB44;

LAB45:    t9 = 0;

LAB48:    if (t9 < 4U)
        goto LAB49;
    else
        goto LAB47;

LAB49:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB46;

LAB50:    t9 = (t9 + 1);
    goto LAB48;

LAB51:    goto LAB2;

LAB52:    goto LAB51;

LAB54:    goto LAB52;

}


extern void work_a_2544820825_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2544820825_3212880686_p_0,(void *)work_a_2544820825_3212880686_p_1};
	xsi_register_didat("work_a_2544820825_3212880686", "isim/pc_tb_isim_beh.exe.sim/work/a_2544820825_3212880686.didat");
	xsi_register_executes(pe);
}
