.class public Labcd/kj;
.super Ljava/lang/Object;


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

    const-class v0, Labcd/kj;

    const-wide v1, -0x182ec425c5fbdf90L  # -1.2285653568479417E192

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x4aaf593f7c996bb8L  # 5.8644565423281485E51

    :try_start_6
    sget-boolean v3, Labcd/kj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/kj;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x1feef1815ff4eb41L  # 7.212071064053177E-155

    :try_start_6
    sget-boolean v3, Labcd/kj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_11

    :cond_d
    const p0, 0x7f07003c

    return p0

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/kj;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static FH(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x1771a840567f09f0L

    :try_start_6
    sget-boolean v3, Labcd/kj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_11

    :cond_d
    const p0, 0x7f0d0021

    return p0

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/kj;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/kj;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0xb15ca85da5eda93L  # -1.537216568484723E255

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    new-instance v1, Labcd/jj;

    invoke-direct {v1, p0, p1}, Labcd/jj;-><init>(Ljava/lang/String;Lcom/aide/common/ab;)V

    const-string v2, ""

    const v3, 0x7f0d0021

    const v4, 0x7f0d05ca

    invoke-static {v0, v3, v4, v2, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;IILjava/lang/String;Lcom/aide/common/ab;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Labcd/kj;->DW:Z

    if-eqz v1, :cond_33

    const-wide v2, -0xb15ca85da5eda93L  # -1.537216568484723E255

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method

.method public static j6(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x51ef073f19558570L

    :try_start_6
    sget-boolean v3, Labcd/kj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Labcd/EclipseJavaProject;->DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1f

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0

    :catchall_1f
    move-exception v3

    sget-boolean v4, Labcd/kj;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v3
.end method
