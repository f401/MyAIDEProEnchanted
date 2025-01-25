.class Lcom/aide/ui/scm/ExternalGitService$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/LE;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/scm/ExternalGitService$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
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


# instance fields
.field private FH:Lcom/aide/ui/scm/xa;
    .annotation runtime Labcd/ru;
        field = -0x146e89f2c08dc830L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x1395dada7523eb8fL
    .end annotation
.end field

.field final v5:Lcom/aide/ui/scm/ExternalGitService$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/scm/ExternalGitService$a$a;

    const-wide v1, 0x175f8ff9cf3accd0L  # 4.222337374297277E-196

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/scm/ExternalGitService$a;Lcom/aide/ui/scm/xa;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x597727d0dfec649L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x35633388843f5ac0L  # 1.603767559793032E-51

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->v5:Lcom/aide/ui/scm/ExternalGitService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->FH:Lcom/aide/ui/scm/xa;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a$a;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, 0x35633388843f5ac0L  # 1.603767559793032E-51

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method


# virtual methods
.method public isCancelled()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2773164fe45ecc2cL
    .end annotation

    const-wide v0, 0x71c763c0bd0a8d8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ExternalGitService$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->v5:Lcom/aide/ui/scm/ExternalGitService$a;

    invoke-static {v2}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/ExternalGitService$a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_1e

    :try_start_13
    iget-object v3, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->v5:Lcom/aide/ui/scm/ExternalGitService$a;

    invoke-static {v3}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/ExternalGitService$a;)Z

    move-result v3

    monitor-exit v2

    return v3

    :catchall_1b
    move-exception v3

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v3
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ExternalGitService$a$a;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2d7a79267cc18f3fL
    .end annotation

    const-wide v0, -0xc3a051a650af871L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ExternalGitService$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_17

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->FH:Lcom/aide/ui/scm/xa;

    invoke-interface {v2}, Lcom/aide/ui/scm/xa;->AL()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_17

    goto :goto_16

    :catch_12
    move-exception v2

    :try_start_13
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    :goto_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ExternalGitService$a$a;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public j6(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4ef117ad6105790L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a$a;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x3393ee7984d1128L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_1f

    :cond_11
    const/4 v0, 0x0

    :try_start_12
    iput v0, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->Hw:I

    iget-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->FH:Lcom/aide/ui/scm/xa;

    invoke-interface {v0, p1, p2}, Lcom/aide/ui/scm/xa;->v5(Ljava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a
    .catchall {:try_start_12 .. :try_end_19} :catchall_1f

    goto :goto_1e

    :catch_1a
    move-exception v0

    :try_start_1b
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    :goto_1e
    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a$a;->DW:Z

    if-eqz v1, :cond_34

    const-wide v2, 0x3393ee7984d1128L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public start(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x333ad1e2903c96cL
    .end annotation

    const-wide v0, -0x2eaea616e17a95c8L  # -5.266822257897974E83

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ExternalGitService$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_17

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->FH:Lcom/aide/ui/scm/xa;

    invoke-interface {v2, p1}, Lcom/aide/ui/scm/xa;->Hw(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_17

    goto :goto_16

    :catch_12
    move-exception v2

    :try_start_13
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    :goto_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ExternalGitService$a$a;->DW:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public update(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2de9525c37ad681L
    .end annotation

    const-wide v0, -0x51290ce8b80d937L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ExternalGitService$a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1c

    :cond_c
    :try_start_c
    iget v2, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->Hw:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->Hw:I

    iget-object v3, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->FH:Lcom/aide/ui/scm/xa;

    invoke-interface {v3, v2}, Lcom/aide/ui/scm/xa;->v5(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_17
    .catchall {:try_start_c .. :try_end_16} :catchall_1c

    goto :goto_1b

    :catch_17
    move-exception v2

    :try_start_18
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    :goto_1b
    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ExternalGitService$a$a;->DW:Z

    if-eqz v3, :cond_29

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method
