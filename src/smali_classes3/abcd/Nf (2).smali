.class public Labcd/Nf;
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

    const-class v0, Labcd/Nf;

    const-wide v1, -0x20df10de608bbe5L  # -4.724050633845679E298

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x47a2345620abf8dcL  # 1.20989251182611E37

    :try_start_6
    sget-boolean v3, Labcd/Nf;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Nf;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public FH()Lcom/aide/common/u;
    .registers 7

    const-wide v0, 0x2bd1bab3624b95adL  # 1.2969194235456223E-97

    :try_start_5
    sget-boolean v2, Labcd/Nf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/common/u;

    const/16 v3, 0x22

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v5, v4}, Lcom/aide/common/u;-><init>(IZZZ)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Nf;->DW:Z

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

    const v1, 0x7f0d072c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_1a

    :catchall_17
    move-exception v0

    const-string v0, "Format Code"

    .line 20
    :goto_1a
    return-object v0
.end method

.method public isEnabled()Z
    .registers 5

    const-wide v0, 0x1ced10da7f39ac44L

    :try_start_5
    sget-boolean v2, Labcd/Nf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nk;->Zo()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nk;->gn()Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_24

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/Nf;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, -0xf1b9ec561d9a218L  # -6.479873901129383E235

    :try_start_5
    sget-boolean v2, Labcd/Nf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f080086

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Nf;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public run()Z
    .registers 9

    const-wide v0, -0x138fc36598d8fb40L  # -2.1864297386692074E214

    :try_start_5
    sget-boolean v2, Labcd/Nf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->cb()V

    iget v3, v2, Labcd/Tl;->Hw:I

    iget v2, v2, Labcd/Tl;->Zo:I

    const/4 v4, 0x1

    if-ne v3, v2, :cond_33

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileLineCount()I

    move-result v2

    const/4 v3, 0x1

    :cond_33
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v5

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v6

    invoke-virtual {v6}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aide/ui/AIDEEditorPager;->getTabSize()I

    move-result v7

    invoke-virtual {v5, v6, v3, v2, v7}, Labcd/Xj;->j6(Ljava/lang/String;III)V
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_4f

    return v4

    :catchall_4f
    move-exception v2

    sget-boolean v3, Labcd/Nf;->DW:Z

    if-eqz v3, :cond_57

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_57
    throw v2
.end method
