.class public Labcd/bB;
.super Labcd/GB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LGB",
        "<",
        "Labcd/bB;",
        "Labcd/qI;",
        ">;"
    }
.end annotation


# instance fields
.field private EQ:Z

.field private J0:Labcd/eJ;

.field private VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/WI;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/lang/String;

.field private gn:Labcd/LE;

.field private tp:Z

.field private u7:Z

.field private we:Z


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 4

    invoke-direct {p0, p1}, Labcd/GB;-><init>(Labcd/UE;)V

    const-string v0, "origin"

    iput-object v0, p0, Labcd/bB;->Zo:Ljava/lang/String;

    sget-object v0, Labcd/vE;->j6:Labcd/vE;

    iput-object v0, p0, Labcd/bB;->gn:Labcd/LE;

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/bB;->we:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/bB;->VH:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public call()Labcd/qI;
    .registers 7

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Labcd/dB;->j6()V

    :try_start_0
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v1, p0, Labcd/bB;->Zo:Ljava/lang/String;

    invoke-static {v0, v1}, Labcd/jJ;->j6(Labcd/UE;Ljava/lang/String;)Labcd/jJ;
    :try_end_0
    .catch Labcd/hD; {:try_start_0 .. :try_end_0} :catch_0
    .catch Labcd/yD; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Labcd/jD; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    iget-boolean v0, p0, Labcd/bB;->u7:Z

    invoke-virtual {v1, v0}, Labcd/jJ;->j6(Z)V

    iget-boolean v0, p0, Labcd/bB;->tp:Z

    invoke-virtual {v1, v0}, Labcd/jJ;->v5(Z)V

    iget-boolean v0, p0, Labcd/bB;->EQ:Z

    invoke-virtual {v1, v0}, Labcd/jJ;->DW(Z)V

    iget-object v0, p0, Labcd/bB;->J0:Labcd/eJ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/bB;->J0:Labcd/eJ;

    invoke-virtual {v1, v0}, Labcd/jJ;->j6(Labcd/eJ;)V

    :cond_0
    iget-boolean v0, p0, Labcd/bB;->we:Z

    invoke-virtual {v1, v0}, Labcd/jJ;->FH(Z)V

    invoke-virtual {p0, v1}, Labcd/GB;->j6(Labcd/jJ;)Labcd/dB;

    iget-object v0, p0, Labcd/bB;->gn:Labcd/LE;

    iget-object v2, p0, Labcd/bB;->VH:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Labcd/jJ;->j6(Labcd/LE;Ljava/util/Collection;)Labcd/qI;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    invoke-virtual {v1}, Labcd/jJ;->DW()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Labcd/jJ;->DW()V

    throw v0
    :try_end_2
    .catch Labcd/hD; {:try_start_2 .. :try_end_2} :catch_0
    .catch Labcd/yD; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Labcd/jD; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Labcd/RB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->invalidRemote:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Labcd/bB;->Zo:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/RB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfFetchCommand:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v0, Labcd/RB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidRemote:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Labcd/bB;->Zo:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/RB;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfFetchCommand:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/bB;->call()Labcd/qI;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/LE;)Labcd/bB;
    .registers 2

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iput-object p1, p0, Labcd/bB;->gn:Labcd/LE;

    return-object p0
.end method

.method public j6(Labcd/eJ;)Labcd/bB;
    .registers 2

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iput-object p1, p0, Labcd/bB;->J0:Labcd/eJ;

    return-object p0
.end method

.method public j6(Ljava/lang/String;)Labcd/bB;
    .registers 2

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iput-object p1, p0, Labcd/bB;->Zo:Ljava/lang/String;

    return-object p0
.end method

.method public j6(Ljava/util/List;)Labcd/bB;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/WI;",
            ">;)",
            "Labcd/bB;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iget-object v0, p0, Labcd/bB;->VH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Labcd/bB;->VH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
