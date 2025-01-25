.class public Labcd/Fg;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/_l;
.implements Labcd/Wl;


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

    const-class v0, Labcd/Fg;

    const-wide v1, 0x8e769c07900c709L  # 9.07637916822672E-266

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x60c29829f0f3f0ffL  # 1.2764672477314945E158

    :try_start_6
    sget-boolean v3, Labcd/Fg;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Fg;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public FH()Lcom/aide/common/u;
    .registers 7

    const-wide v0, -0x3c58af54cfa44734L  # -8.4001544259740621E17

    :try_start_5
    sget-boolean v2, Labcd/Fg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/common/u;

    const/16 v3, 0x2e

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/aide/common/u;-><init>(IZZZ)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Fg;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x622d8779353ef0dL

    :try_start_5
    sget-boolean v2, Labcd/Fg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const-string v0, "Files - Rename"

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Fg;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public isEnabled()Z
    .registers 5

    const-wide v0, 0x190e16d89368b5a1L

    :try_start_5
    sget-boolean v2, Labcd/Fg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Labcd/Fg;->j6(Z)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return v0

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Fg;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, 0x42a555d12c8bd3bL

    :try_start_5
    sget-boolean v2, Labcd/Fg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f0800b2

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Fg;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Z)Z
    .registers 6

    .line 93
    const-wide v0, 0xb5e04a1361f629fL

    :try_start_5
    sget-boolean v2, Labcd/Fg;->j6:Z

    if-eqz v2, :cond_c

    .line 94
    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    .line 96
    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->FH()Ljava/lang/String;

    move-result-object v2

    .line 98
    if-eqz v2, :cond_22

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_23

    if-eqz v0, :cond_22

    .line 99
    const/4 p1, 0x1

    .line 101
    :cond_22
    return p1

    :catchall_23
    move-exception v2

    .line 103
    sget-boolean v3, Labcd/Fg;->DW:Z

    if-eqz v3, :cond_30

    .line 104
    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 106
    :cond_30
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public run()Z
    .registers 8

    const-wide v0, 0x14d252f5adcf5bbfL

    :try_start_5
    sget-boolean v2, Labcd/Fg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    new-instance v5, Labcd/Eg;

    invoke-direct {v5, p0, v2}, Labcd/Eg;-><init>(Labcd/Fg;Ljava/lang/String;)V

    const v2, 0x7f0d05e0

    const v6, 0x7f0d05de

    invoke-static {v4, v2, v6, v3, v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;IILjava/lang/String;Lcom/aide/common/ab;)V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2c

    const/4 v0, 0x1

    return v0

    :catchall_2c
    move-exception v2

    sget-boolean v3, Labcd/Fg;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v2
.end method
