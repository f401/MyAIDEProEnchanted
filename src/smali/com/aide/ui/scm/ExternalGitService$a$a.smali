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
    .registers 4

    const-wide v2, 0x175f8ff9cf3accd0L    # 4.222337374297277E-196

    const-class v0, Lcom/aide/ui/scm/ExternalGitService$a$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/scm/ExternalGitService$a;Lcom/aide/ui/scm/xa;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x597727d0dfec649L
    .end annotation

    const-wide v2, 0x35633388843f5ac0L    # 1.603767559793032E-51

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x35633388843f5ac0L    # 1.603767559793032E-51

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->v5:Lcom/aide/ui/scm/ExternalGitService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->FH:Lcom/aide/ui/scm/xa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a$a;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public isCancelled()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2773164fe45ecc2cL
    .end annotation

    const-wide v2, 0x71c763c0bd0a8d8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x71c763c0bd0a8d8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->v5:Lcom/aide/ui/scm/ExternalGitService$a;

    invoke-static {v0}, Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/ExternalGitService$a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->v5:Lcom/aide/ui/scm/ExternalGitService$a;

    invoke-static {v0}, Lcom/aide/ui/scm/ExternalGitService$a;->DW(Lcom/aide/ui/scm/ExternalGitService$a;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2d7a79267cc18f3fL
    .end annotation

    const-wide v2, -0xc3a051a650af871L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc3a051a650af871L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->FH:Lcom/aide/ui/scm/xa;

    invoke-interface {v0}, Lcom/aide/ui/scm/xa;->AL()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4ef117ad6105790L
    .end annotation

    const-wide v2, 0x3393ee7984d1128L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x3393ee7984d1128L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->Hw:I

    iget-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->FH:Lcom/aide/ui/scm/xa;

    invoke-interface {v0, p1, p2}, Lcom/aide/ui/scm/xa;->v5(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a$a;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public start(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x333ad1e2903c96cL
    .end annotation

    const-wide v2, -0x2eaea616e17a95c8L    # -5.266822257897974E83

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2eaea616e17a95c8L    # -5.266822257897974E83

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->FH:Lcom/aide/ui/scm/xa;

    invoke-interface {v0, p1}, Lcom/aide/ui/scm/xa;->Hw(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public update(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2de9525c37ad681L
    .end annotation

    const-wide v2, -0x51290ce8b80d937L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ExternalGitService$a$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x51290ce8b80d937L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->Hw:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->Hw:I

    iget-object v0, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->FH:Lcom/aide/ui/scm/xa;

    iget v1, p0, Lcom/aide/ui/scm/ExternalGitService$a$a;->Hw:I

    invoke-interface {v0, v1}, Lcom/aide/ui/scm/xa;->v5(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ExternalGitService$a$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
