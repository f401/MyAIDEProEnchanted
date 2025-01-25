.class public Labcd/qg;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Jl;


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

    const-class v0, Labcd/qg;

    const-wide v1, -0x1084ba6bc88f4528L  # -1.0336902299146758E229

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x2c246d0683411a21L  # 4.781368117549032E-96

    :try_start_6
    sget-boolean v3, Labcd/qg;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/qg;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private j6(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x4ae42e25a193d810L
    .end annotation

    const-wide v0, 0x10f6247910616a69L

    :try_start_5
    sget-boolean v2, Labcd/qg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nk;->we()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    new-instance v3, Labcd/og;

    invoke-direct {v3, p0, p1}, Labcd/og;-><init>(Labcd/qg;Ljava/lang/String;)V

    new-instance v4, Labcd/pg;

    invoke-direct {v4, p0, p1}, Labcd/pg;-><init>(Labcd/qg;Ljava/lang/String;)V

    const v5, 0x7f0d05e7

    const v6, 0x7f0d05e6

    invoke-static {v2, v5, v6, v3, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_35

    :cond_2e
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/Zk;->er(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    :goto_35
    return-void

    :catchall_36
    move-exception v2

    sget-boolean v3, Labcd/qg;->DW:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v2
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v0, 0x1a31ec141fa9ae4bL

    :try_start_5
    sget-boolean v2, Labcd/qg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Zk;->J0(Ljava/lang/String;)I

    move-result v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/qg;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public Zo()I
    .registers 5

    const-wide v0, -0x303e436c5398325cL  # -1.6045009757698863E76

    :try_start_5
    sget-boolean v2, Labcd/qg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f0700fb

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/qg;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Z)Z
    .registers 6

    const-wide v0, 0xa135ba14dfae800L

    :try_start_5
    sget-boolean v2, Labcd/qg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Zk;->Mr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_30

    if-nez p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    return p1

    :catchall_30
    move-exception v2

    sget-boolean v3, Labcd/qg;->DW:Z

    if-eqz v3, :cond_3d

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v2
.end method

.method public run()Z
    .registers 5

    const-wide v0, -0x20908328e9116ab0L  # -5.153570035486631E151

    :try_start_5
    sget-boolean v2, Labcd/qg;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/qg;->j6(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_19

    const/4 v0, 0x1

    return v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/qg;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method
