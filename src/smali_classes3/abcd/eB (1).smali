.class public Labcd/eB;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
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
    new-instance v0, Labcd/VE;

    invoke-direct {v0}, Labcd/VE;-><init>()V

    iget-boolean v1, p0, Labcd/eB;->DW:Z

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Labcd/bE;->QX()Labcd/bE;

    :cond_c
    invoke-virtual {v0}, Labcd/bE;->we()Labcd/bE;

    iget-object v1, p0, Labcd/eB;->j6:Ljava/io/File;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_5e

    const-string v2, ".git"

    if-eqz v1, :cond_23

    :try_start_15
    iget-boolean v3, p0, Labcd/eB;->DW:Z

    if-nez v3, :cond_1f

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    :cond_1f
    :goto_1f
    invoke-virtual {v0, v1}, Labcd/bE;->FH(Ljava/io/File;)Labcd/bE;

    goto :goto_45

    :cond_23
    invoke-virtual {v0}, Labcd/bE;->v5()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_45

    new-instance v1, Ljava/io/File;

    const-string v3, "."

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3a

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    :cond_3a
    iget-boolean v3, p0, Labcd/eB;->DW:Z

    if-nez v3, :cond_1f

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_1f

    :cond_45
    :goto_45
    invoke-virtual {v0}, Labcd/bE;->j6()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/xE;->DW()Z

    move-result v1

    if-nez v1, :cond_58

    iget-boolean v1, p0, Labcd/eB;->DW:Z

    invoke-virtual {v0, v1}, Labcd/UE;->j6(Z)V

    :cond_58
    new-instance v1, Labcd/cB;

    invoke-direct {v1, v0}, Labcd/cB;-><init>(Labcd/UE;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_5d} :catch_5e

    return-object v1

    :catch_5e
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a

    :goto_69
    throw v1

    :goto_6a
    goto :goto_69
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
