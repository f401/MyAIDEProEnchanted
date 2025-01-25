.class public Labcd/Pe;
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

    const-class v0, Labcd/Pe;

    const-wide v1, 0x1b91ad57b6b7f600L  # 6.979656387076363E-176

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x377f2dbfb3acb3c8L  # 2.2369624771252628E-41

    :try_start_6
    sget-boolean v3, Labcd/Pe;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Pe;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v0, 0xb3387f866a54b8L

    :try_start_5
    sget-boolean v2, Labcd/Pe;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f0d0023

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Pe;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public Zo()I
    .registers 5

    const-wide v0, 0x12e82c9b423d4079L

    :try_start_5
    sget-boolean v2, Labcd/Pe;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f0700f8

    return v0

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Pe;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(Z)Z
    .registers 6

    const-wide v0, -0xb2ecf8f427a4d99L  # -5.040951583281206E254

    :try_start_5
    sget-boolean v2, Labcd/Pe;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Zk;->tp(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_30

    if-eqz p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    return p1

    :catchall_30
    move-exception v2

    sget-boolean v3, Labcd/Pe;->DW:Z

    if-eqz v3, :cond_3d

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v2
.end method

.method public run()Z
    .registers 2

    invoke-static {}, Lcom/s1243808733/aide/MainListener;->onAddToProject()V

    const/4 v0, 0x1

    return v0
.end method

.method public run_SOURCE()Z
    .registers 8

    const-wide v0, -0x177bea8856b2d041L  # -2.932204977939846E195

    :try_start_5
    sget-boolean v2, Labcd/Pe;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Zk;->tp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f0d0023

    invoke-static {v6, v5}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Labcd/Oe;

    invoke-direct {v6, p0, v2}, Labcd/Oe;-><init>(Labcd/Pe;Ljava/lang/String;)V

    invoke-static {v4, v5, v3, v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_36

    :cond_34
    const/4 v0, 0x1

    return v0

    :catchall_36
    move-exception v2

    sget-boolean v3, Labcd/Pe;->DW:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3e
    throw v2
.end method
