.class public Labcd/df;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Yl;


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

    const-wide v2, 0x4cc66b5eb762ff0L

    const-class v0, Labcd/df;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x13beb3cfc5169ef0L    # -2.91160909699755E213

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/df;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x13beb3cfc5169ef0L    # -2.91160909699755E213

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/df;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private FH()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x5dd7596712efb34L
    .end annotation

    const-wide v6, -0x136398641363359bL    # -1.529986079174619E215

    :try_start_0
    sget-boolean v0, Labcd/df;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x136398641363359bL    # -1.529986079174619E215

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nk;->we()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    new-instance v1, Labcd/bf;

    invoke-direct {v1, p0}, Labcd/bf;-><init>(Labcd/df;)V

    new-instance v2, Labcd/cf;

    invoke-direct {v2, p0}, Labcd/cf;-><init>(Labcd/df;)V

    const v3, 0x7f0d05e7

    const v4, 0x7f0d05e6

    invoke-static {v0, v3, v4, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Labcd/df;->Hw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/df;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private Hw()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x9a6fd26e9d6f11fL
    .end annotation

    const-wide v2, -0x33e5469494ffb648L

    :try_start_0
    sget-boolean v0, Labcd/df;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x33e5469494ffb648L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->v5()V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mk;->Hw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/df;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Labcd/df;)V
    .registers 1

    invoke-direct {p0}, Labcd/df;->Hw()V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 5

    const-wide v2, 0x2d65d5fd4557a4e7L    # 5.359722682966999E-90

    :try_start_0
    sget-boolean v0, Labcd/df;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2d65d5fd4557a4e7L    # 5.359722682966999E-90

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->j3()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/df;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5

    const-wide v2, 0x34abc7123b5440dL

    :try_start_0
    sget-boolean v0, Labcd/df;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x34abc7123b5440dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const v0, 0x7f0800f6

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/df;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public run()Z
    .registers 5

    const-wide v2, -0x19f351f321a1d137L    # -3.808243986855272E183

    :try_start_0
    sget-boolean v0, Labcd/df;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x19f351f321a1d137L    # -3.808243986855272E183

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/df;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/df;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
