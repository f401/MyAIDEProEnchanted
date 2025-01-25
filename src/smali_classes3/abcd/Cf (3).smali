.class public Labcd/Cf;
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

    const-class v0, Labcd/Cf;

    const-wide v1, -0x2bb9118a544bc68bL  # -9.796270085903448E97

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x66b92d79f00277f0L  # 6.846874709119106E186

    :try_start_6
    sget-boolean v3, Labcd/Cf;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Cf;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public FH()Lcom/aide/common/u;
    .registers 7

    const-wide v0, -0x372fb29fa8a78b9bL  # -5.680505506290288E42

    :try_start_5
    sget-boolean v2, Labcd/Cf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/common/u;

    const/16 v3, 0x33

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/aide/common/u;-><init>(IZZZ)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Cf;->DW:Z

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

    const v1, 0x7f0d0725

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_1a

    :catchall_17
    move-exception v0

    const-string v0, "Expand Selection"

    .line 20
    :goto_1a
    return-object v0
.end method

.method public isEnabled()Z
    .registers 5

    const-wide v0, -0x2b05aa45f7394c7cL  # -2.304038531721895E101

    :try_start_5
    sget-boolean v2, Labcd/Cf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nk;->tp()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Cf;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, -0x2d517c78263083a0L  # -1.942427856381589E90

    :try_start_5
    sget-boolean v2, Labcd/Cf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f080078

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Cf;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Z)Z
    .registers 6

    const-wide v0, 0x974822ef0469d00L

    :try_start_5
    sget-boolean v2, Labcd/Cf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    if-nez p1, :cond_16

    invoke-virtual {p0}, Labcd/Cf;->isEnabled()Z

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_18

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1

    :catchall_18
    move-exception v2

    sget-boolean v3, Labcd/Cf;->DW:Z

    if-eqz v3, :cond_25

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public run()Z
    .registers 10

    const-wide v0, 0x182052c8a11310a8L  # 1.788886171531859E-192

    :try_start_5
    sget-boolean v2, Labcd/Cf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->cb()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v3

    iget-object v4, v2, Labcd/Tl;->FH:Ljava/lang/String;

    iget v5, v2, Labcd/Tl;->Hw:I

    iget v6, v2, Labcd/Tl;->v5:I

    iget v7, v2, Labcd/Tl;->Zo:I

    iget v8, v2, Labcd/Tl;->VH:I

    invoke-virtual/range {v3 .. v8}, Labcd/Xj;->FH(Ljava/lang/String;IIII)V
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_32

    const/4 v0, 0x0

    return v0

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/Cf;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    throw v2
.end method
