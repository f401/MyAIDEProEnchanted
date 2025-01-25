.class public Labcd/cg;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Yl;
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

    const-class v0, Labcd/cg;

    const-wide v1, -0x9ca75079603f9e8L  # -2.649838901892672E261

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x435f2b2d44a59b28L  # 3.5092790813027488E16

    :try_start_6
    sget-boolean v3, Labcd/cg;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/cg;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public FH()Lcom/aide/common/u;
    .registers 7

    const-wide v0, -0x3b27463ceac819f8L  # -4.670540017831231E23

    :try_start_5
    sget-boolean v2, Labcd/cg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/common/u;

    const/16 v3, 0x23

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/aide/common/u;-><init>(IZZZ)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/cg;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
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

    const v1, 0x7f0d0734

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_1a

    :catchall_17
    move-exception v0

    const-string v0, "GoTo Symbol"

    .line 20
    :goto_1a
    return-object v0
.end method

.method public isEnabled()Z
    .registers 5

    const-wide v0, -0xe9141f1751e46dL

    :try_start_5
    sget-boolean v2, Labcd/cg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->j3()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/cg;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, -0x3479729fa2836dbbL  # -6.91224502292177E55

    :try_start_5
    sget-boolean v2, Labcd/cg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f0800ff

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/cg;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public run()Z
    .registers 6

    const-wide v0, -0xed0aec46168d367L  # -1.5932030860564994E237

    :try_start_5
    sget-boolean v2, Labcd/cg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6(Landroid/app/Activity;ZI)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return v4

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/cg;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method
