.class public Labcd/nf;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/_l;
.implements Labcd/Jl;


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

    const-wide v2, -0x1b55675cf6824fa8L

    const-class v0, Labcd/nf;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x101b98b90da5e9dL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/nf;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x101b98b90da5e9dL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nf;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v2, 0xee02e41fd90cdf5L    # 4.969704630427024E-237

    :try_start_0
    sget-boolean v0, Labcd/nf;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xee02e41fd90cdf5L    # 4.969704630427024E-237

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const v0, 0x7f0d0028

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nf;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()I
    .registers 5

    const-wide v2, 0xbcd11ed7425bfb8L

    :try_start_0
    sget-boolean v0, Labcd/nf;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xbcd11ed7425bfb8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const v0, 0x7f0700f8

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nf;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public isEnabled()Z
    .registers 5

    const-wide v2, -0x354f4216eb068000L    # -6.26386517856194E51

    :try_start_0
    sget-boolean v0, Labcd/nf;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x354f4216eb068000L    # -6.26386517856194E51

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/nf;->j6(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nf;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5

    const-wide v2, -0xe8e62024d6aced8L    # -2.867954742579131E238

    :try_start_0
    sget-boolean v0, Labcd/nf;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe8e62024d6aced8L    # -2.867954742579131E238

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const v0, 0x7f0800b0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nf;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Z)Z
    .registers 3

    invoke-static {p0}, Lcom/s1243808733/aide/filebrowser/FileItemManager;->isCreateProjectItemVisible(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j6_(Z)Z
    .registers 6

    const-wide v2, -0x1783a2ab10a33e64L    # -2.070587189946628E195

    :try_start_0
    sget-boolean v0, Labcd/nf;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1783a2ab10a33e64L    # -2.070587189946628E195

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mk;->FH()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->gW()Labcd/Sk;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/mk;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Sk;->DW(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nf;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public run()Z
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/aide/MainListener;->onShowCreateDialog(Labcd/nf;)V

    const/4 v0, 0x1

    return v0
.end method

.method public run_SOURCE()Z
    .registers 7

    const-wide v4, -0x1d7b4b570ea97df8L    # -3.815553934498657E166

    :try_start_0
    sget-boolean v0, Labcd/nf;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1d7b4b570ea97df8L    # -3.815553934498657E166

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    new-instance v1, Labcd/uh;

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->j6()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Labcd/uh;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nf;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
