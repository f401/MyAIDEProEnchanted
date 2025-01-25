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
    .registers 3

    const-class v0, Labcd/df;

    const-wide v1, 0x4cc66b5eb762ff0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x13beb3cfc5169ef0L  # -2.91160909699755E213

    :try_start_6
    sget-boolean v3, Labcd/df;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/df;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private FH()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x5dd7596712efb34L
    .end annotation

    const-wide v0, -0x136398641363359bL  # -1.529986079174619E215

    :try_start_5
    sget-boolean v2, Labcd/df;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nk;->we()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    new-instance v3, Labcd/bf;

    invoke-direct {v3, p0}, Labcd/bf;-><init>(Labcd/df;)V

    new-instance v4, Labcd/cf;

    invoke-direct {v4, p0}, Labcd/cf;-><init>(Labcd/df;)V

    const v5, 0x7f0d05e7

    const v6, 0x7f0d05e6

    invoke-static {v2, v5, v6, v3, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_31

    :cond_2e
    invoke-direct {p0}, Labcd/df;->Hw()V
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    :goto_31
    return-void

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/df;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method private Hw()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x9a6fd26e9d6f11fL
    .end annotation

    const-wide v0, -0x33e5469494ffb648L

    :try_start_5
    sget-boolean v2, Labcd/df;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->v5()V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->Hw()V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/df;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method static synthetic j6(Labcd/df;)V
    .registers 1

    invoke-direct {p0}, Labcd/df;->Hw()V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 5

    const-wide v0, 0x2d65d5fd4557a4e7L  # 5.359722682966999E-90

    :try_start_5
    sget-boolean v2, Labcd/df;->j6:Z

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

    sget-boolean v3, Labcd/df;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, 0x34abc7123b5440dL

    :try_start_5
    sget-boolean v2, Labcd/df;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f0800f6

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/df;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public run()Z
    .registers 5

    const-wide v0, -0x19f351f321a1d137L  # -3.808243986855272E183

    :try_start_5
    sget-boolean v2, Labcd/df;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Labcd/df;->FH()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_11

    const/4 v0, 0x1

    return v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/df;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method
