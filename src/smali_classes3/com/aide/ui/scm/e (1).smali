.class Lcom/aide/ui/scm/e;
.super Labcd/kI;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ExternalGitService$a;->j6(Lcom/aide/ui/scm/xa;)Labcd/kI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final Hw:Lcom/aide/ui/scm/xa;

.field final v5:Lcom/aide/ui/scm/ExternalGitService$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x30707b0814eb66fL

    const-wide v2, 0x281f5cea4f403877L

    const-class v4, Lcom/aide/ui/scm/e;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ExternalGitService$a;Lcom/aide/ui/scm/xa;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/scm/e;->v5:Lcom/aide/ui/scm/ExternalGitService$a;

    iput-object p2, p0, Lcom/aide/ui/scm/e;->Hw:Lcom/aide/ui/scm/xa;

    invoke-direct {p0}, Labcd/kI;-><init>()V

    return-void
.end method

.method private j6(Labcd/HJ;Labcd/jI;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x18c7795dfa7838e9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/e;->DW:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x1a615a8e8cf58635L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v0, p2, Labcd/jI$d;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_9f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    :try_start_12
    iget-object v0, p0, Lcom/aide/ui/scm/e;->Hw:Lcom/aide/ui/scm/xa;

    invoke-virtual {p2}, Labcd/jI;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/aide/ui/scm/xa;->J0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    return v2

    :cond_1f
    move-object v3, p2

    check-cast v3, Labcd/jI$d;

    invoke-virtual {v3, v0}, Labcd/jI$d;->j6(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_25} :catch_26
    .catchall {:try_start_12 .. :try_end_25} :catchall_9f

    return v1

    :catch_26
    move-exception v0

    :try_start_27
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    return v2

    :cond_2b
    instance-of v0, p2, Labcd/jI$a;
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_9f

    if-eqz v0, :cond_4c

    :try_start_2f
    iget-object v0, p0, Lcom/aide/ui/scm/e;->Hw:Lcom/aide/ui/scm/xa;

    invoke-virtual {p2}, Labcd/jI;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/aide/ui/scm/xa;->J0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3c

    return v2

    :cond_3c
    move-object v3, p2

    check-cast v3, Labcd/jI$a;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {v3, v0}, Labcd/jI$a;->j6([C)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_46} :catch_47
    .catchall {:try_start_2f .. :try_end_46} :catchall_9f

    return v1

    :catch_47
    move-exception v0

    :try_start_48
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    return v2

    :cond_4c
    instance-of v0, p2, Labcd/jI$b;
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_9f

    if-eqz v0, :cond_5f

    :try_start_50
    iget-object v0, p0, Lcom/aide/ui/scm/e;->Hw:Lcom/aide/ui/scm/xa;

    invoke-virtual {p2}, Labcd/jI;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/aide/ui/scm/xa;->we(Ljava/lang/String;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_59} :catch_5a
    .catchall {:try_start_50 .. :try_end_59} :catchall_9f

    return v1

    :catch_5a
    move-exception v0

    :try_start_5b
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    return v2

    :cond_5f
    instance-of v0, p2, Labcd/jI$f;
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_9f

    if-eqz v0, :cond_80

    :try_start_63
    iget-object v0, p0, Lcom/aide/ui/scm/e;->Hw:Lcom/aide/ui/scm/xa;

    invoke-virtual {p2}, Labcd/jI;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/aide/ui/scm/xa;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_70

    return v2

    :cond_70
    move-object v3, p2

    check-cast v3, Labcd/jI$f;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Labcd/jI$f;->j6(Z)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_7a} :catch_7b
    .catchall {:try_start_63 .. :try_end_7a} :catchall_9f

    return v1

    :catch_7b
    move-exception v0

    :try_start_7c
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    return v2

    :cond_80
    new-instance v0, Labcd/BD;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported CredentialItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Labcd/BD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0
    :try_end_9f
    .catchall {:try_start_7c .. :try_end_9f} :catchall_9f

    :catchall_9f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/e;->FH:Z

    if-eqz v1, :cond_b0

    const-wide v2, 0x1a615a8e8cf58635L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b0
    throw v0
.end method

.method private j6(Labcd/jI;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2a5123b3889ed70L
    .end annotation

    const-wide v0, -0x59b08d71f4226700L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/e;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Labcd/jI$d;

    if-nez v2, :cond_1f

    instance-of v2, p1, Labcd/jI$a;

    if-nez v2, :cond_1f

    instance-of v2, p1, Labcd/jI$b;

    if-nez v2, :cond_1f

    instance-of p1, p1, Labcd/jI$f;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_21

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    return p1

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/e;->FH:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1e10865ad82155ccL
    .end annotation

    const-wide v0, -0x2cc1f703aecf4c60L  # -9.789212698100511E92

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/e;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/e;->FH:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6(Labcd/HJ;[Labcd/jI;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x497afa9483e7b2c7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/e;->DW:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x3f2b93249e3f5fdL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_e
    array-length v2, p2

    if-ge v1, v2, :cond_1d

    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/aide/ui/scm/e;->j6(Labcd/HJ;Labcd/jI;)Z

    move-result v2
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_1f

    if-nez v2, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1d
    const/4 p1, 0x1

    return p1

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/e;->FH:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x3f2b93249e3f5fdL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    goto :goto_32

    :goto_31
    throw v0

    :goto_32
    goto :goto_31
.end method

.method public j6([Labcd/jI;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x12a2ecb93b03cab9L
    .end annotation

    const-wide v0, 0x6ea3ffd887e508fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/e;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    array-length v4, p1

    if-ge v3, v4, :cond_1d

    aget-object v4, p1, v3

    invoke-direct {p0, v4}, Lcom/aide/ui/scm/e;->j6(Labcd/jI;)Z

    move-result v4
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1f

    if-nez v4, :cond_1a

    return v2

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1d
    const/4 p1, 0x1

    return p1

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/e;->FH:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    goto :goto_29

    :goto_28
    throw v2

    :goto_29
    goto :goto_28
.end method
