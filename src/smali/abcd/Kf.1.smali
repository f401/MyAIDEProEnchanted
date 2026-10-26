.class public Labcd/Kf;
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
    .locals 4

    const-wide v2, -0x3f9505fd8a02c3d3L    # -215.81280040225957

    const-class v0, Labcd/Kf;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide v4, 0xdb289b92e59f054L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Kf;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xdb289b92e59f054L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/Kf;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public FH()Lcom/aide/common/u;
    .locals 8

    const-wide v6, -0x35d1ae38d4f85c35L    # -2.2155959484543158E49

    :try_start_0
    sget-boolean v0, Labcd/Kf;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x35d1ae38d4f85c35L    # -2.2155959484543158E49

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/common/u;

    const/16 v1, 0x23

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/common/u;-><init>(IZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/Kf;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 10
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d072a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 20
    :goto_0
    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    const-string v0, "Find Extended Usages"

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 4

    const-wide v2, -0x21ab3d4019914a8L

    :try_start_0
    sget-boolean v0, Labcd/Kf;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x21ab3d4019914a8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nk;->Zo()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Tl;->DW()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/Kf;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()I
    .locals 4

    const-wide v2, -0x1c397548685a0e4L

    :try_start_0
    sget-boolean v0, Labcd/Kf;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1c397548685a0e4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const v0, 0x7f08007b

    return v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/Kf;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public run()Z
    .locals 8

    const-wide v6, 0x7c08e6a6f820d4L

    :try_start_0
    sget-boolean v0, Labcd/Kf;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7c08e6a6f820d4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v5

    invoke-static {}, Lcom/aide/ui/U;->nw()Labcd/ul;

    move-result-object v0

    iget-object v1, v5, Labcd/Tl;->FH:Ljava/lang/String;

    iget v2, v5, Labcd/Tl;->Hw:I

    iget v3, v5, Labcd/Tl;->v5:I

    iget v4, v5, Labcd/Tl;->Zo:I

    iget v5, v5, Labcd/Tl;->VH:I

    invoke-virtual/range {v0 .. v5}, Labcd/ul;->j6(Ljava/lang/String;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/Kf;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
