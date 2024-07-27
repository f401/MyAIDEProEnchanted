.class public Labcd/wg;
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
    .registers 4

    const-wide v2, 0x179bfea36bc33681L    # 5.992090211926388E-195

    const-class v0, Labcd/wg;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x80e825ae6d8d214L    # -5.775183889138127E269

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/wg;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x80e825ae6d8d214L    # -5.775183889138127E269

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wg;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public FH()Lcom/aide/common/u;
    .registers 9

    const-wide v6, -0x610ae4838bc2258bL    # -1.501330764344788E-159

    :try_start_0
    sget-boolean v0, Labcd/wg;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x610ae4838bc2258bL    # -1.501330764344788E-159

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/common/u;

    const/16 v1, 0x2c

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/common/u;-><init>(IZZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wg;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 10
    const-string v0, "LogCat - Pause"

    .line 12
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v1

    .line 16
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d073f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 20
    :goto_0
    return-object v0

    .line 16
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isEnabled()Z
    .registers 5

    const-wide v2, 0x2b1b31e0efbebee4L

    :try_start_0
    sget-boolean v0, Labcd/wg;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2b1b31e0efbebee4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/wg;->j6(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wg;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5

    const-wide v2, -0xd21ac2caba446b0L

    :try_start_0
    sget-boolean v0, Labcd/wg;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd21ac2caba446b0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const v0, 0x7f0800e9

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wg;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Z)Z
    .registers 6

    const-wide v2, 0x7e87045d4839ec0L

    :try_start_0
    sget-boolean v0, Labcd/wg;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7e87045d4839ec0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->Mr()Lcom/aide/ui/browsers/LogCatBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/LogCatBrowser;->J0()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wg;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public run()Z
    .registers 5

    const-wide v2, 0x185b8ae0509ef4b8L

    :try_start_0
    sget-boolean v0, Labcd/wg;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x185b8ae0509ef4b8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->Mr()Lcom/aide/ui/browsers/LogCatBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/LogCatBrowser;->J8()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/wg;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
