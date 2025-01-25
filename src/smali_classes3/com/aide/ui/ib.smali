.class public Lcom/aide/ui/ib;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/ib;

    const-wide v1, -0xfe2d89ab5b35368L  # -1.131548515611858E232

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x1493c91dc1c57e74L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/ib;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/ib;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method static synthetic DW(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, Lcom/aide/ui/ib;->J0(Landroid/app/Activity;)V

    return-void
.end method

.method private static EQ(Landroid/app/Activity;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/s1243808733/aide/MainListener;->onShowCreateProjectDialog(Landroid/app/Activity;)V

    return-void
.end method

.method private static EQ_SOURCE(Landroid/app/Activity;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x91a0d06c26f86c0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x7d675b02ed1d8afL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/ib;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "App init: Showing create project dialog"

    invoke-static {v3}, Labcd/F;->j6(Ljava/lang/String;)V

    new-instance v3, Labcd/uh;

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v4

    invoke-virtual {v4}, Labcd/mk;->DW()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aide/ui/MainActivity;->gW()Z

    move-result v5

    invoke-direct {v3, v4, v5}, Labcd/uh;-><init>(Ljava/lang/String;Z)V

    invoke-static {p0, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/ib;->DW:Z

    if-eqz v4, :cond_33

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v3
.end method

.method static synthetic FH(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, Lcom/aide/ui/ib;->EQ(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic Hw(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, Lcom/aide/ui/ib;->tp(Landroid/app/Activity;)V

    return-void
.end method

.method private static J0(Landroid/app/Activity;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x14e68afd8ac804c1L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x9772f21f35865c8L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/ib;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->j3()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Nk;->u7()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Cl;->j3()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-static {p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    goto :goto_3c

    :cond_35
    invoke-static {p0}, Lcom/aide/ui/ib;->J8(Landroid/app/Activity;)V

    goto :goto_3c

    :cond_39
    invoke-static {p0}, Lcom/aide/ui/ib;->EQ(Landroid/app/Activity;)V

    :goto_3c
    return-void

    :cond_3d
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->aM()Z

    move-result v3

    if-eqz v3, :cond_48

    return-void

    :cond_48
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-static {p0}, Lcom/aide/ui/ib;->u7(Landroid/app/Activity;)V

    goto :goto_58

    :cond_52
    const-string v3, "startup"

    const/4 v4, 0x0

    invoke-static {p0, v4, v3}, Lcom/aide/ui/ib;->j6(Landroid/app/Activity;ZLjava/lang/String;)V
    :try_end_58
    .catchall {:try_start_6 .. :try_end_58} :catchall_59

    :goto_58
    return-void

    :catchall_59
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/ib;->DW:Z

    if-eqz v4, :cond_61

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_61
    throw v3
.end method

.method private static J8(Landroid/app/Activity;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/s1243808733/aide/MainListener;->onShowSelectModeDialog(Landroid/app/Activity;)V

    return-void
.end method

.method private static J8_SOURCE(Landroid/app/Activity;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x33bd083eef4c3410L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x4ea73a6220540fdfL  # 8.015708839329005E70

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/ib;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "App init: Showing select mode dialog"

    invoke-static {v3}, Labcd/F;->j6(Ljava/lang/String;)V

    new-instance v3, Lcom/aide/ui/hb;

    invoke-direct {v3}, Lcom/aide/ui/hb;-><init>()V

    invoke-static {p0, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/ib;->DW:Z

    if-eqz v4, :cond_23

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v3
.end method

.method public static VH(Landroid/app/Activity;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0xc32b930ab6a3c01L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/ib;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Lcom/aide/ui/cb;

    invoke-direct {v3, p0}, Lcom/aide/ui/cb;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v3}, Lcom/aide/ui/trainer/a;->j6(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/ib;->DW:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static Zo(Landroid/app/Activity;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x37412e9ef704dbc0L  # 1.540945197946339E-42

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/ib;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->aM()Z
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/ib;->DW:Z

    if-eqz v4, :cond_1d

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v3
.end method

.method public static gn(Landroid/app/Activity;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x1439b418d093d768L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/ib;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/aide/ui/MainActivity;->Hw(Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    new-instance v3, Lcom/aide/ui/_a;

    invoke-direct {v3, p0}, Lcom/aide/ui/_a;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v3}, Lcom/aide/ui/marketing/WhatsNewDialog;->DW(Landroid/app/Activity;Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_24

    return-void

    :cond_24
    invoke-static {p0}, Lcom/aide/ui/ib;->we(Landroid/app/Activity;)V
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/ib;->DW:Z

    if-eqz v4, :cond_30

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v3
.end method

.method static synthetic j6(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, Lcom/aide/ui/ib;->we(Landroid/app/Activity;)V

    return-void
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ib;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x20c85c02b57ea2a5L  # 9.302058344619459E-151

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ek;->u7()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ek;->Mr()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const-string v2, "GCM notification"

    invoke-virtual {v0, v1, p1, v2}, Labcd/Ek;->DW(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    :cond_2e
    return-void

    :catchall_2f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ib;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, 0x20c85c02b57ea2a5L  # 9.302058344619459E-151

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method private static j6(Landroid/app/Activity;ZLjava/lang/String;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x13dff094ab810fa5L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ib;->j6:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x5ffaf2a35ce76300L  # 2.258193728280327E154

    const/4 v3, 0x0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ek;->U2()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v1

    if-eqz p1, :cond_29

    const/16 v0, 0x10

    const/16 v3, 0x10

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_2b
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Labcd/Ek;->j6(Landroid/app/Activity;ILjava/lang/String;ZZ)V

    goto :goto_38

    :cond_33
    if-eqz p1, :cond_38

    invoke-static {p0}, Lcom/aide/ui/ib;->VH(Landroid/app/Activity;)V
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    :cond_38
    :goto_38
    return-void

    :catchall_39
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ib;->DW:Z

    if-eqz v1, :cond_4f

    const-wide v2, 0x5ffaf2a35ce76300L  # 2.258193728280327E154

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v0
.end method

.method private static tp(Landroid/app/Activity;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2b2b6c53e1ae3de5L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x170caeeb98f50970L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/ib;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "StartupChoice"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Labcd/H;->j6(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v4}, Lcom/aide/ui/U;->j6(Z)V

    const-string v3, "after_selecting_expert_2"

    const/4 v4, 0x1

    invoke-static {p0, v4, v3}, Lcom/aide/ui/ib;->j6(Landroid/app/Activity;ZLjava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/PromoNotificationAlarmReceiver;->j6(Landroid/content/Context;)V
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/ib;->DW:Z

    if-eqz v4, :cond_2c

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v3
.end method

.method public static u7(Landroid/app/Activity;)V
    .registers 11

    const/4 v0, 0x0

    const-wide v1, 0x30cf7238751665f4L  # 1.3904612291975166E-73

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/ib;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Ek;->Mr()Z

    move-result v3

    if-nez v3, :cond_24

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "after_mayShowPrimeSalesDialog"

    const/4 v9, 0x1

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Labcd/Ek;->j6(Landroid/app/Activity;IILjava/lang/String;Z)V
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    :cond_24
    return-void

    :catchall_25
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/ib;->DW:Z

    if-eqz v4, :cond_2d

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v3
.end method

.method public static v5(Landroid/app/Activity;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x166e1a97d282fd70L  # -3.424648745386491E200

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/ib;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Lcom/aide/ui/MainActivity;->FH(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    return-void

    :cond_1a
    invoke-static {}, Lcom/aide/common/ma;->Hw()V

    invoke-static {p0}, Lcom/aide/ui/ib;->tp(Landroid/app/Activity;)V
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/ib;->DW:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method private static we(Landroid/app/Activity;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x4980cb2f6867288L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x6a0c902a81fe0bfL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/ib;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Ek;->gn()Z

    move-result v3

    if-eqz v3, :cond_2f

    new-instance v9, Lcom/aide/ui/ab;

    invoke-direct {v9, p0}, Lcom/aide/ui/ab;-><init>(Landroid/app/Activity;)V

    new-instance v11, Lcom/aide/ui/bb;

    invoke-direct {v11, p0}, Lcom/aide/ui/bb;-><init>(Landroid/app/Activity;)V

    const-string v5, "AIDE Premium key outdated"

    const-string v6, "Your AIDE Premium Key is outdated. Premium features have been disabled. Please upgrade it to the latest version."

    const/4 v7, 0x1

    const-string v8, "Update"

    const-string v10, "Not now"

    move-object v4, p0

    invoke-static/range {v4 .. v11}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_2f
    invoke-static {p0}, Lcom/aide/ui/ib;->J0(Landroid/app/Activity;)V
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/ib;->DW:Z

    if-eqz v4, :cond_3b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v3
.end method
