.class public Labcd/eB;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Labcd/cB;",
        ">;"
    }
.end annotation


# instance fields
.field private DW:Z

.field private j6:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Labcd/cB;
    .registers 5

    :try_start_0
    new-instance v2, Labcd/VE;

    invoke-direct {v2}, Labcd/VE;-><init>()V

    iget-boolean v0, p0, Labcd/eB;->DW:Z

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Labcd/bE;->QX()Labcd/bE;

    :cond_0
    invoke-virtual {v2}, Labcd/bE;->we()Labcd/bE;

    iget-object v0, p0, Labcd/eB;->j6:Ljava/io/File;

    if-eqz v0, :cond_3

    iget-object v1, p0, Labcd/eB;->j6:Ljava/io/File;

    iget-boolean v0, p0, Labcd/eB;->DW:Z

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/File;

    const-string v3, ".git"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2, v0}, Labcd/bE;->FH(Ljava/io/File;)Labcd/bE;

    :cond_1
    :goto_1
    invoke-virtual {v2}, Labcd/bE;->j6()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/xE;->DW()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Labcd/eB;->DW:Z

    invoke-virtual {v0, v1}, Labcd/UE;->j6(Z)V

    :cond_2
    new-instance v1, Labcd/cB;

    invoke-direct {v1, v0}, Labcd/cB;-><init>(Labcd/UE;)V

    return-object v1

    :cond_3
    invoke-virtual {v2}, Labcd/bE;->v5()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    :cond_4
    iget-boolean v1, p0, Labcd/eB;->DW:Z

    if-nez v1, :cond_5

    new-instance v1, Ljava/io/File;

    const-string v3, ".git"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    invoke-virtual {v2, v0}, Labcd/bE;->FH(Ljava/io/File;)Labcd/bE;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/eB;->call()Labcd/cB;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/io/File;)Labcd/eB;
    .registers 2

    iput-object p1, p0, Labcd/eB;->j6:Ljava/io/File;

    return-object p0
.end method

.method public j6(Z)Labcd/eB;
    .registers 2

    iput-boolean p1, p0, Labcd/eB;->DW:Z

    return-object p0
.end method
