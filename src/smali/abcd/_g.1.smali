.class public Labcd/_g;
.super Ljava/lang/Object;

# interfaces
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

    const-wide v2, 0x43285ebf521c3c21L    # 3.4297876252011685E15

    const-class v0, Labcd/_g;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide v4, 0x265438015ac07c55L    # 4.778994617747861E-124

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/_g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x265438015ac07c55L    # 4.778994617747861E-124

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/_g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public FH()Lcom/aide/common/u;
    .locals 8

    const-wide v6, -0x1626e7d2460fe6e0L

    :try_start_0
    sget-boolean v0, Labcd/_g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1626e7d2460fe6e0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/common/u;

    const/16 v1, 0x3d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/common/u;-><init>(IZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/_g;->DW:Z

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

    const v1, 0x7f0d071b

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

    const-string v0, "Code Completion"

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 4

    const-wide v2, 0x2aaffa9058da154fL

    :try_start_0
    sget-boolean v0, Labcd/_g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2aaffa9058da154fL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nk;->tp()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/_g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public run()Z
    .locals 4

    const-wide v2, -0x1a7b72205caa6bbfL    # -1.0661243343129782E181

    :try_start_0
    sget-boolean v0, Labcd/_g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1a7b72205caa6bbfL    # -1.0661243343129782E181

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->gW()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/_g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
