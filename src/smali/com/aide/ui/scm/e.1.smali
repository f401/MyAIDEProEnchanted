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
    .registers 6

    const-class v0, Lcom/aide/ui/scm/e;

    const-wide v2, 0x30707b0814eb66fL

    const-wide v4, 0x281f5cea4f403877L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x18c7795dfa7838e9L
    .end annotation

    const-wide v4, 0x1a615a8e8cf58635L

    const/4 v6, 0x1

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/scm/e;->DW:Z

    if-eqz v2, :cond_0

    const-wide v8, 0x1a615a8e8cf58635L

    invoke-static {v8, v9, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v2, p2, Labcd/jI$d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/aide/ui/scm/e;->Hw:Lcom/aide/ui/scm/xa;

    invoke-virtual {p2}, Labcd/jI;->j6()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/aide/ui/scm/xa;->J0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    move v2, v3

    :goto_0
    return v2

    :cond_1
    move-object v0, p2

    check-cast v0, Labcd/jI$d;

    move-object v2, v0

    invoke-virtual {v2, v7}, Labcd/jI$d;->j6(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move v2, v6

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    move v2, v3

    goto :goto_0

    :cond_2
    instance-of v2, p2, Labcd/jI$a;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v2, :cond_4

    :try_start_3
    iget-object v2, p0, Lcom/aide/ui/scm/e;->Hw:Lcom/aide/ui/scm/xa;

    invoke-virtual {p2}, Labcd/jI;->j6()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/aide/ui/scm/xa;->J0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move-object v0, p2

    check-cast v0, Labcd/jI$a;

    move-object v2, v0

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v2, v7}, Labcd/jI$a;->j6([C)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    move v2, v6

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_4
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    move v2, v3

    goto :goto_0

    :cond_4
    instance-of v2, p2, Labcd/jI$b;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v2, :cond_5

    :try_start_5
    iget-object v2, p0, Lcom/aide/ui/scm/e;->Hw:Lcom/aide/ui/scm/xa;

    invoke-virtual {p2}, Labcd/jI;->j6()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/aide/ui/scm/xa;->we(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    move v2, v6

    goto :goto_0

    :catch_2
    move-exception v2

    :try_start_6
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    move v2, v3

    goto :goto_0

    :cond_5
    instance-of v2, p2, Labcd/jI$f;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v2, :cond_7

    :try_start_7
    iget-object v2, p0, Lcom/aide/ui/scm/e;->Hw:Lcom/aide/ui/scm/xa;

    invoke-virtual {p2}, Labcd/jI;->j6()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/aide/ui/scm/xa;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    move v2, v3

    goto :goto_0

    :cond_6
    move-object v0, p2

    check-cast v0, Labcd/jI$f;

    move-object v2, v0

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v2, v7}, Labcd/jI$f;->j6(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    move v2, v6

    goto :goto_0

    :catch_3
    move-exception v2

    :try_start_8
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    move v2, v3

    goto :goto_0

    :cond_7
    new-instance v2, Labcd/BD;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported CredentialItem: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Labcd/BD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception v3

    sget-boolean v2, Lcom/aide/ui/scm/e;->FH:Z

    if-eqz v2, :cond_8

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v3
.end method

.method private j6(Labcd/jI;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2a5123b3889ed70L
    .end annotation

    const-wide v2, -0x59b08d71f4226700L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/e;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x59b08d71f4226700L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v0, p1, Labcd/jI$d;

    if-nez v0, :cond_1

    instance-of v0, p1, Labcd/jI$a;

    if-nez v0, :cond_1

    instance-of v0, p1, Labcd/jI$b;

    if-nez v0, :cond_1

    instance-of v0, p1, Labcd/jI$f;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/e;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method


# virtual methods
.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1e10865ad82155ccL
    .end annotation

    const-wide v2, -0x2cc1f703aecf4c60L    # -9.789212698100511E92

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/e;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2cc1f703aecf4c60L    # -9.789212698100511E92

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/e;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/HJ;[Labcd/jI;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x497afa9483e7b2c7L
    .end annotation

    const-wide v2, -0x3f2b93249e3f5fdL

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/scm/e;->DW:Z

    if-eqz v1, :cond_0

    const-wide v4, -0x3f2b93249e3f5fdL

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move v1, v0

    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_2

    aget-object v4, p2, v1

    invoke-direct {p0, p1, v4}, Lcom/aide/ui/scm/e;->j6(Labcd/HJ;Labcd/jI;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/e;->FH:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public j6([Labcd/jI;)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x12a2ecb93b03cab9L
    .end annotation

    const-wide v4, 0x6ea3ffd887e508fL

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/scm/e;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x6ea3ffd887e508fL

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/aide/ui/scm/e;->j6(Labcd/jI;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/e;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method
