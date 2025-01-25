.class public Labcd/yg;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Wl;
.implements Labcd/Hl;


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

    const-class v0, Labcd/yg;

    const-wide v1, -0x38a143e3de18a78dL  # -6.383369105710665E35

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x923aec2e9dc02ffL

    :try_start_6
    sget-boolean v3, Labcd/yg;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/yg;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x128f5cddcbfdd570L

    :try_start_5
    sget-boolean v2, Labcd/yg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const-string v0, "Redo"

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/yg;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public FH()Lcom/aide/common/u;
    .registers 7

    const-wide v0, -0x60d197722f287e98L

    :try_start_5
    sget-boolean v2, Labcd/yg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/common/u;

    const/16 v3, 0x35

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/aide/common/u;-><init>(IZZZ)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/yg;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public VH()I
    .registers 5

    const-wide v0, -0x39d19e71cd6740b1L  # -1.2035184138915002E30

    :try_start_5
    sget-boolean v2, Labcd/yg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f08010e

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/yg;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 10
    nop

    .line 12
    :try_start_1
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    .line 13
    if-nez v0, :cond_b

    .line 14
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 16
    :cond_b
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0753

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_1a

    :catchall_17
    move-exception v0

    const-string v0, "Redo"

    .line 20
    :goto_1a
    return-object v0
.end method

.method public isEnabled()Z
    .registers 5

    const-wide v0, -0x2486eb0aff43c065L  # -4.450798249727381E132

    :try_start_5
    sget-boolean v2, Labcd/yg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->QX()Z

    move-result v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/yg;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public isVisible()Z
    .registers 5

    const-wide v0, -0x26433f32b65a5c30L  # -1.90074298218456E124

    :try_start_5
    sget-boolean v2, Labcd/yg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->Ws()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/g;->J0(Landroid/content/Context;)Z

    move-result v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2f

    if-nez v0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v0, 0x1

    :goto_2e
    return v0

    :catchall_2f
    move-exception v2

    sget-boolean v3, Labcd/yg;->DW:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method public run()Z
    .registers 5

    const-wide v0, -0x9222782344d7f7bL

    :try_start_5
    sget-boolean v2, Labcd/yg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->rN()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_19

    const/4 v0, 0x0

    return v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/yg;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method
