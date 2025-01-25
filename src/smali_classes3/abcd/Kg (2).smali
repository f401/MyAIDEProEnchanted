.class public Labcd/Kg;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Zl;
.implements Labcd/am;
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

    const-class v0, Labcd/Kg;

    const-wide v1, -0xf9f411dce312c80L  # -2.079832595595653E233

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x249db3549a8d1a7bL  # -1.623630149503211E132

    :try_start_6
    sget-boolean v3, Labcd/Kg;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Kg;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x8bc1a0230e64bb7L

    :try_start_5
    sget-boolean v2, Labcd/Kg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Cl;->we()Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1d

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    return-object v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/Kg;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public FH()Lcom/aide/common/u;
    .registers 7

    const-wide v0, -0x5fadae35fa9029d5L  # -5.465319594425684E-153

    :try_start_5
    sget-boolean v2, Labcd/Kg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/common/u;

    const/16 v3, 0x21

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/aide/common/u;-><init>(IZZZ)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Kg;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public Hw()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/common/u;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x7b8e60d6b251865L

    :try_start_5
    sget-boolean v2, Labcd/Kg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/common/u;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4, v4}, Lcom/aide/common/u;-><init>(IZZZ)V

    new-instance v3, Lcom/aide/common/u;

    const/16 v5, 0x55

    invoke-direct {v3, v5, v4, v4, v4}, Lcom/aide/common/u;-><init>(IZZZ)V

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/aide/common/u;

    aput-object v2, v5, v4

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    return-object v0

    :catchall_28
    move-exception v2

    sget-boolean v3, Labcd/Kg;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public VH()I
    .registers 5

    const-wide v0, 0xc7630c1be849dbcL

    :try_start_5
    sget-boolean v2, Labcd/Kg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Kg;->j6()I

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/Kg;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
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

    const v1, 0x7f0d0757

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_1a

    :catchall_17
    move-exception v0

    const-string v0, "Run"

    .line 20
    :goto_1a
    return-object v0
.end method

.method public isEnabled()Z
    .registers 5

    const-wide v0, -0x2347522ea3bbb8c8L  # -4.592034640353067E138

    :try_start_5
    sget-boolean v2, Labcd/Kg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/debugger/Debugger;->tp()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->FH()Z

    move-result v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return v0

    :catchall_27
    move-exception v2

    sget-boolean v3, Labcd/Kg;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public isVisible()Z
    .registers 5

    const-wide v0, -0x24fed08611ffb2b5L  # -2.3824794088578106E130

    :try_start_5
    sget-boolean v2, Labcd/Kg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/Kg;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, 0x19dddda2a1990700L

    :try_start_5
    sget-boolean v2, Labcd/Kg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f08010f

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Kg;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public run()Z
    .registers 5

    const-wide v0, -0x1231877e8d73f700L  # -8.604975332873867E220

    :try_start_5
    sget-boolean v2, Labcd/Kg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Cl;->BT()V

    goto :goto_34

    :cond_1a
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/debugger/Debugger;->tp()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/debugger/Debugger;->J8()V

    goto :goto_34

    :cond_2c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Labcd/Zk;->j6(Z)V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_36

    :goto_34
    const/4 v0, 0x1

    return v0

    :catchall_36
    move-exception v2

    sget-boolean v3, Labcd/Kg;->DW:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3e
    throw v2
.end method
