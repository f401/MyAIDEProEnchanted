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
    .registers 4

    const-wide v2, -0xfe2d89ab5b35368L    # -1.131548515611858E232

    const-class v0, Lcom/aide/ui/ib;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x1493c91dc1c57e74L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ib;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1493c91dc1c57e74L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ib;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
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

    const-wide v4, 0x7d675b02ed1d8afL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ib;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7d675b02ed1d8afL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "App init: Showing create project dialog"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    new-instance v0, Labcd/uh;

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/mk;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->gW()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Labcd/uh;-><init>(Ljava/lang/String;Z)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ib;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
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
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x14e68afd8ac804c1L
    .end annotation

    const-wide v4, 0x9772f21f35865c8L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ib;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9772f21f35865c8L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->j3()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nk;->u7()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->j3()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p0}, Lcom/aide/ui/ib;->J8(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ib;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_1
    invoke-static {p0}, Lcom/aide/ui/ib;->EQ(Landroid/app/Activity;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->aM()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/aide/ui/ib;->u7(Landroid/app/Activity;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    const-string v1, "startup"

    invoke-static {p0, v0, v1}, Lcom/aide/ui/ib;->j6(Landroid/app/Activity;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
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
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x33bd083eef4c3410L
    .end annotation

    const-wide v4, 0x4ea73a6220540fdfL    # 8.015708839329005E70

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ib;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4ea73a6220540fdfL    # 8.015708839329005E70

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "App init: Showing select mode dialog"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    new-instance v0, Lcom/aide/ui/hb;

    invoke-direct {v0}, Lcom/aide/ui/hb;-><init>()V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ib;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static VH(Landroid/app/Activity;)V
    .registers 7

    const-wide v4, 0xc32b930ab6a3c01L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ib;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xc32b930ab6a3c01L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/cb;

    invoke-direct {v0, p0}, Lcom/aide/ui/cb;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/aide/ui/trainer/a;->j6(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ib;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static Zo(Landroid/app/Activity;)V
    .registers 7

    const-wide v4, 0x37412e9ef704dbc0L    # 1.540945197946339E-42

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ib;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x37412e9ef704dbc0L    # 1.540945197946339E-42

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->aM()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ib;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static gn(Landroid/app/Activity;)V
    .registers 7

    const-wide v4, -0x1439b418d093d768L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ib;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1439b418d093d768L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aide/ui/MainActivity;->Hw(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/aide/ui/_a;

    invoke-direct {v0, p0}, Lcom/aide/ui/_a;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/aide/ui/marketing/WhatsNewDialog;->DW(Landroid/app/Activity;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/aide/ui/ib;->we(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ib;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic j6(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, Lcom/aide/ui/ib;->we(Landroid/app/Activity;)V

    return-void
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 9

    const-wide v2, 0x20c85c02b57ea2a5L    # 9.302058344619459E-151

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ib;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x20c85c02b57ea2a5L    # 9.302058344619459E-151

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ek;->u7()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ek;->Mr()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const-string v5, "GCM notification"

    invoke-virtual {v0, v1, p1, v5}, Labcd/Ek;->DW(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/ib;->DW:Z

    if-eqz v0, :cond_2

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private static j6(Landroid/app/Activity;ZLjava/lang/String;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x13dff094ab810fa5L
    .end annotation

    const-wide v8, 0x5ffaf2a35ce76300L    # 2.258193728280327E154

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ib;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x5ffaf2a35ce76300L    # 2.258193728280327E154

    const/4 v2, 0x0

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ek;->U2()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    if-eqz p1, :cond_2

    const/16 v2, 0x10

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Labcd/Ek;->j6(Landroid/app/Activity;ILjava/lang/String;ZZ)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v6

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/aide/ui/ib;->VH(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/ib;->DW:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p0

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method private static tp(Landroid/app/Activity;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2b2b6c53e1ae3de5L
    .end annotation

    const-wide v4, 0x170caeeb98f50970L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ib;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x170caeeb98f50970L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "StartupChoice"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Labcd/H;->j6(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Z)V

    const/4 v0, 0x1

    const-string v1, "after_selecting_expert_2"

    invoke-static {p0, v0, v1}, Lcom/aide/ui/ib;->j6(Landroid/app/Activity;ZLjava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/ui/PromoNotificationAlarmReceiver;->j6(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ib;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static u7(Landroid/app/Activity;)V
    .registers 11

    const-wide v8, 0x30cf7238751665f4L    # 1.3904612291975166E-73

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ib;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x30cf7238751665f4L    # 1.3904612291975166E-73

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ek;->Mr()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "after_mayShowPrimeSalesDialog"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Labcd/Ek;->j6(Landroid/app/Activity;IILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ib;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, v6, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public static v5(Landroid/app/Activity;)V
    .registers 7

    const-wide v4, -0x166e1a97d282fd70L    # -3.424648745386491E200

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ib;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x166e1a97d282fd70L    # -3.424648745386491E200

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/aide/ui/MainActivity;->FH(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/aide/common/ma;->Hw()V

    invoke-static {p0}, Lcom/aide/ui/ib;->tp(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ib;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private static we(Landroid/app/Activity;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x4980cb2f6867288L
    .end annotation

    const-wide v10, -0x6a0c902a81fe0bfL

    const/4 v8, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ib;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6a0c902a81fe0bfL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ek;->gn()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v5, Lcom/aide/ui/ab;

    invoke-direct {v5, p0}, Lcom/aide/ui/ab;-><init>(Landroid/app/Activity;)V

    new-instance v7, Lcom/aide/ui/bb;

    invoke-direct {v7, p0}, Lcom/aide/ui/bb;-><init>(Landroid/app/Activity;)V

    const-string v1, "AIDE Premium key outdated"

    const-string v2, "Your AIDE Premium Key is outdated. Premium features have been disabled. Please upgrade it to the latest version."

    const/4 v3, 0x1

    const-string v4, "Update"

    const-string v6, "Not now"

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/aide/ui/ib;->J0(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ib;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v10, v11, v8, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
