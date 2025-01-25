.class public Labcd/bB;
.super Labcd/GB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LGB<",
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
            "Ljava/util/List<",
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
    .registers 3

    invoke-direct {p0, p1}, Labcd/GB;-><init>(Labcd/UE;)V

    const-string p1, "origin"

    iput-object p1, p0, Labcd/bB;->Zo:Ljava/lang/String;

    sget-object p1, Labcd/vE;->j6:Labcd/vE;

    iput-object p1, p0, Labcd/bB;->gn:Labcd/LE;

    const/4 p1, 0x1

    iput-boolean p1, p0, Labcd/bB;->we:Z

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Labcd/bB;->VH:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public call()Labcd/qI;
    .registers 7

    invoke-virtual {p0}, Labcd/dB;->j6()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_5
    iget-object v2, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v3, p0, Labcd/bB;->Zo:Ljava/lang/String;

    invoke-static {v2, v3}, Labcd/jJ;->j6(Labcd/UE;Ljava/lang/String;)Labcd/jJ;

    move-result-object v2
    :try_end_d
    .catch Labcd/hD; {:try_start_5 .. :try_end_d} :catch_6d
    .catch Labcd/yD; {:try_start_5 .. :try_end_d} :catch_60
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_d} :catch_49
    .catch Labcd/jD; {:try_start_5 .. :try_end_d} :catch_3c

    :try_start_d
    iget-boolean v3, p0, Labcd/bB;->u7:Z

    invoke-virtual {v2, v3}, Labcd/jJ;->j6(Z)V

    iget-boolean v3, p0, Labcd/bB;->tp:Z

    invoke-virtual {v2, v3}, Labcd/jJ;->v5(Z)V

    iget-boolean v3, p0, Labcd/bB;->EQ:Z

    invoke-virtual {v2, v3}, Labcd/jJ;->DW(Z)V

    iget-object v3, p0, Labcd/bB;->J0:Labcd/eJ;

    if-eqz v3, :cond_23

    invoke-virtual {v2, v3}, Labcd/jJ;->j6(Labcd/eJ;)V

    :cond_23
    iget-boolean v3, p0, Labcd/bB;->we:Z

    invoke-virtual {v2, v3}, Labcd/jJ;->FH(Z)V

    invoke-virtual {p0, v2}, Labcd/GB;->j6(Labcd/jJ;)Labcd/dB;

    iget-object v3, p0, Labcd/bB;->gn:Labcd/LE;

    iget-object v4, p0, Labcd/bB;->VH:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Labcd/jJ;->j6(Labcd/LE;Ljava/util/Collection;)Labcd/qI;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_37

    :try_start_33
    invoke-virtual {v2}, Labcd/jJ;->DW()V

    return-object v3

    :catchall_37
    move-exception v3

    invoke-virtual {v2}, Labcd/jJ;->DW()V

    throw v3
    :try_end_3c
    .catch Labcd/hD; {:try_start_33 .. :try_end_3c} :catch_6d
    .catch Labcd/yD; {:try_start_33 .. :try_end_3c} :catch_60
    .catch Ljava/net/URISyntaxException; {:try_start_33 .. :try_end_3c} :catch_49
    .catch Labcd/jD; {:try_start_33 .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfFetchCommand:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_49
    move-exception v2

    new-instance v2, Labcd/RB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->invalidRemote:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Labcd/bB;->Zo:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v3, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Labcd/RB;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_60
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfFetchCommand:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_6d
    move-exception v2

    new-instance v3, Labcd/RB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->invalidRemote:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Labcd/bB;->Zo:Ljava/lang/String;

    aput-object v5, v1, v0

    invoke-static {v4, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Labcd/RB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
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
            "Ljava/util/List<",
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
