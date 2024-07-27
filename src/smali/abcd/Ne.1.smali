.class public Labcd/Ne;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/_l;


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

    const-wide v2, 0x73ae5a9c13b53cbL

    const-class v0, Labcd/Ne;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x4a9e05b7fb19bdb0L    # -1.5015643445720202E-51

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ne;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4a9e05b7fb19bdb0L    # -1.5015643445720202E-51

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ne;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public isEnabled()Z
    .registers 5

    const-wide v2, -0x1460f531b25eba80L    # -2.551347587289385E210

    :try_start_0
    sget-boolean v0, Labcd/Ne;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1460f531b25eba80L    # -2.551347587289385E210

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/Ne;->j6(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ne;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5

    const-wide v2, 0x36fa67eaf4892ff0L    # 7.400517518315714E-44

    :try_start_0
    sget-boolean v0, Labcd/Ne;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x36fa67eaf4892ff0L    # 7.400517518315714E-44

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const v0, 0x7f0800a9

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ne;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Z)Z
    .registers 6

    const-wide v2, -0x989186d3f599578L

    :try_start_0
    sget-boolean v0, Labcd/Ne;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x989186d3f599578L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mk;->FH()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/Zk;->Hw(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ne;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public run()Z
    .registers 11

    const-wide v8, -0x5829406c0af8cc0L    # -1.068131650032186E282

    const/4 v7, 0x1

    :try_start_0
    sget-boolean v0, Labcd/Ne;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5829406c0af8cc0L    # -1.068131650032186E282

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mk;->FH()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const v2, 0x7f0d0020

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d05b5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v6

    invoke-virtual {v6}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/aide/ui/U;->j6(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Labcd/Me;

    invoke-direct {v4, p0, v0}, Labcd/Me;-><init>(Labcd/Ne;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ne;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
