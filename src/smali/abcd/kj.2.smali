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
    .registers 4

    const-wide v2, -0x182ec425c5fbdf90L    # -1.2285653568479417E192

    const-class v0, Labcd/kj;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x4aaf593f7c996bb8L    # 5.8644565423281485E51

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/kj;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4aaf593f7c996bb8L    # 5.8644565423281485E51

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kj;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static DW(Ljava/lang/String;)I
    .registers 7

    const-wide v4, 0x1feef1815ff4eb41L    # 7.212071064053177E-155

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/kj;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1feef1815ff4eb41L    # 7.212071064053177E-155

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const v0, 0x7f07003c

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kj;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static FH(Ljava/lang/String;)I
    .registers 7

    const-wide v4, -0x1771a840567f09f0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/kj;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1771a840567f09f0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const v0, 0x7f0d0021

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kj;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v2, -0xb15ca85da5eda93L    # -1.537216568484723E255

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/kj;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb15ca85da5eda93L    # -1.537216568484723E255

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    new-instance v1, Labcd/jj;

    invoke-direct {v1, p0, p1}, Labcd/jj;-><init>(Ljava/lang/String;Lcom/aide/common/ab;)V

    const v5, 0x7f0d0021

    const v6, 0x7f0d05ca

    const-string v7, ""

    invoke-static {v0, v5, v6, v7, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;IILjava/lang/String;Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/kj;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static j6(Ljava/lang/String;)Z
    .registers 7

    const-wide v4, -0x51ef073f19558570L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/kj;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x51ef073f19558570L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Labcd/EclipseJavaProject;->DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kj;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
