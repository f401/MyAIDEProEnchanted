.class public Lcom/aide/ui/Ha;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static final j6:Ljava/util/GregorianCalendar;
    .annotation runtime Labcd/ru;
        field = -0x1ef0d08590260980L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1885d903e219c79dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x30d6290d4fc2abb0L  # 1.9597373311645413E-73

    :try_start_6
    const-class v3, Lcom/aide/ui/Ha;

    const-wide v4, 0x15700bfd820a3210L  # 1.9992744059302907E-205

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Ljava/util/GregorianCalendar;

    const/16 v4, 0xb

    const/16 v5, 0x1f

    const/16 v6, 0x7de

    invoke-direct {v3, v6, v4, v5}, Ljava/util/GregorianCalendar;-><init>(III)V

    sput-object v3, Lcom/aide/ui/Ha;->j6:Ljava/util/GregorianCalendar;
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v4, :cond_2d

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0xfc085cbc76a2ad0L  # 8.31443645496112E-233

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW()Ljava/util/GregorianCalendar;
    .registers 8

    const/4 v0, 0x0

    const-wide v1, -0x137764380a8dbbebL  # -6.627540935591116E214

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    const-string v3, "PrimeYearlyPromoAIDE3"

    invoke-static {v3}, Lcom/aide/ui/Ha;->j6(Ljava/lang/String;)J

    move-result-wide v3

    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    const-wide/32 v6, 0xa4cb800

    add-long/2addr v3, v6

    invoke-virtual {v5, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v5, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v3, 0xd

    invoke-virtual {v5, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v3, 0xe

    invoke-virtual {v5, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_35

    return-object v5

    :catchall_35
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v4, :cond_3d

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3d
    throw v3
.end method

.method private static DW(Ljava/util/GregorianCalendar;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x289ce057e4f5e33cL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1fed1a96a3d0d5f0L  # -6.333895030570487E154

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/GregorianCalendar;

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/GregorianCalendar;->add(II)V

    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result p0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_22

    return p0

    :catchall_22
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v4, :cond_2a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v3
.end method

.method public static FH()Ljava/util/GregorianCalendar;
    .registers 8

    const/4 v0, 0x0

    const-wide v1, 0x622dd92ed7d088c8L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/MainActivity;->XL()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_22

    return-object v3

    :catchall_22
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v4, :cond_2a

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v3
.end method

.method public static Hw()Ljava/util/GregorianCalendar;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x69c2980fe5f907L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v0, Lcom/aide/ui/Ha;->j6:Ljava/util/GregorianCalendar;
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_10

    return-object v0

    :catchall_10
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v4, :cond_18

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v3
.end method

.method public static VH()Z
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x5ef5395942a0f270L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :catchall_f
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v4, :cond_17

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v3
.end method

.method public static Zo()Z
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x9c733ea7a2776d7L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v4, "com.aide.ui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_19

    return v4

    :cond_19
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Ek;->VH()Z

    move-result v3

    if-nez v3, :cond_37

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Ek;->we()Z

    move-result v3

    if-nez v3, :cond_37

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Ek;->v5()Z

    move-result v0
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_39

    if-eqz v0, :cond_38

    :cond_37
    const/4 v4, 0x1

    :cond_38
    return v4

    :catchall_39
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v4, :cond_41

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_41
    throw v3
.end method

.method public static gn()Z
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0x1cba34bdc05cb123L  # 2.712461216455794E-170

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v4, "com.aide.ui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    sget-object v3, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v4, "com.aide.web"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_21
    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-static {}, Lcom/aide/ui/Ha;->DW()Ljava/util/GregorianCalendar;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/Ha;->j6(Ljava/util/GregorianCalendar;)Z

    move-result v0
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_32

    return v0

    :cond_30
    const/4 v0, 0x0

    return v0

    :catchall_32
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v4, :cond_3a

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    throw v3
.end method

.method private static j6(Ljava/lang/String;)J
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4c67ef28e09d5560L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x349be11b072b0138L  # 2.8425162913522336E-55

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    const-string v4, "StartTimes"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v3, p0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-nez v8, :cond_31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, p0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_32

    :cond_31
    return-wide v6

    :catchall_32
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v4, :cond_3a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v3
.end method

.method public static j6()Ljava/util/GregorianCalendar;
    .registers 9

    const/4 v0, 0x0

    const-wide v1, -0x5163f750c4ad4f80L  # -3.6076559335716185E-84

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Ek;->DW()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_24
    invoke-virtual {v3, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/GregorianCalendar;->add(II)V
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2d

    return-object v3

    :catchall_2d
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v4, :cond_35

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v3
.end method

.method private static j6(Ljava/util/GregorianCalendar;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x197fe597de5d2958L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2adf3e5be8e31a98L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/GregorianCalendar;

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/GregorianCalendar;->add(II)V

    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result p0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_22

    return p0

    :catchall_22
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v4, :cond_2a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v3
.end method

.method public static u7()Z
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0x1597aaaf1f9527e3L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v4, "com.aide.ui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v3

    if-nez v3, :cond_26

    invoke-static {}, Lcom/aide/ui/Ha;->Hw()Ljava/util/GregorianCalendar;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/Ha;->j6(Ljava/util/GregorianCalendar;)Z

    move-result v0
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_28

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0

    :catchall_28
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v4, :cond_30

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v3
.end method

.method public static v5()Z
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x5c1aab60a781610L  # -6.88261741257352E280

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/Ha;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/Ha;->j6()Ljava/util/GregorianCalendar;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/Ha;->DW(Ljava/util/GregorianCalendar;)Z

    move-result v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return v0

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Ha;->FH:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method
