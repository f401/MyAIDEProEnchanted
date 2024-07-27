.class public Labcd/XA;
.super Labcd/GB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LGB",
        "<",
        "Labcd/XA;",
        "Labcd/cB;",
        ">;"
    }
.end annotation


# instance fields
.field private EQ:Labcd/LE;

.field private J0:Z

.field private J8:Z

.field private VH:Ljava/io/File;

.field private Ws:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/lang/String;

.field private gn:Z

.field private tp:Ljava/lang/String;

.field private u7:Ljava/lang/String;

.field private we:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Labcd/GB;-><init>(Labcd/UE;)V

    const-string v0, "origin"

    iput-object v0, p0, Labcd/XA;->u7:Ljava/lang/String;

    const-string v0, "HEAD"

    iput-object v0, p0, Labcd/XA;->tp:Ljava/lang/String;

    sget-object v0, Labcd/vE;->j6:Labcd/vE;

    iput-object v0, p0, Labcd/XA;->EQ:Labcd/LE;

    return-void
.end method

.method private DW(Labcd/UE;Labcd/ME;)Labcd/dG;
    .registers 5

    new-instance v1, Labcd/qG;

    invoke-direct {v1, p1}, Labcd/qG;-><init>(Labcd/UE;)V

    :try_start_0
    invoke-interface {p2}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Labcd/qG;->EQ()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Labcd/qG;->EQ()V

    throw v0
.end method

.method private DW(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/WI;",
            ">;"
        }
    .end annotation

    new-instance v0, Labcd/WI;

    invoke-direct {v0}, Labcd/WI;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/WI;->j6(Z)Labcd/WI;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "refs/heads/*"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Labcd/WI;->j6(Ljava/lang/String;Ljava/lang/String;)Labcd/WI;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p0, Labcd/XA;->we:Z

    if-eqz v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v2

    :cond_1
    iget-object v0, p0, Labcd/XA;->Ws:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Labcd/XA;->Ws:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Labcd/WI;->v5(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v0}, Labcd/WI;->DW(Ljava/lang/String;)Labcd/WI;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private j6(Labcd/qI;)Labcd/ME;
    .registers 8

    const/4 v1, 0x0

    const-string v0, "HEAD"

    invoke-virtual {p1, v0}, Labcd/zI;->DW(Ljava/lang/String;)Labcd/ME;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const-string v0, "refs/heads/master"

    invoke-virtual {p1, v0}, Labcd/zI;->DW(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    invoke-interface {v2}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Labcd/zI;->j6()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "refs/heads/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-interface {v2}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v5

    invoke-virtual {v4, v5}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1
.end method

.method private j6(Labcd/HJ;)Labcd/UE;
    .registers 7

    invoke-static {}, Labcd/cB;->tp()Labcd/eB;

    move-result-object v0

    iget-boolean v1, p0, Labcd/XA;->gn:Z

    invoke-virtual {v0, v1}, Labcd/eB;->j6(Z)Labcd/eB;

    iget-object v1, p0, Labcd/XA;->VH:Ljava/io/File;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Labcd/HJ;->DW()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".git"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Labcd/XA;->VH:Ljava/io/File;

    :cond_0
    iget-object v1, p0, Labcd/XA;->VH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/XA;->VH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Labcd/XA;->VH:Ljava/io/File;

    invoke-virtual {v0, v1}, Labcd/eB;->j6(Ljava/io/File;)Labcd/eB;

    invoke-virtual {v0}, Labcd/eB;->call()Labcd/cB;

    move-result-object v0

    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cloneNonEmptyDirectory:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/XA;->VH:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Labcd/UE;Labcd/HJ;)Labcd/qI;
    .registers 8

    new-instance v1, Labcd/XI;

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    iget-object v2, p0, Labcd/XA;->u7:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Labcd/XI;-><init>(Labcd/gE;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Labcd/XI;->j6(Labcd/HJ;)Z

    iget-boolean v0, p0, Labcd/XA;->gn:Z

    if-eqz v0, :cond_0

    const-string v0, "refs/heads/"

    :goto_0
    new-instance v2, Labcd/WI;

    invoke-direct {v2}, Labcd/WI;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Labcd/WI;->j6(Z)Labcd/WI;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "refs/heads/*"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Labcd/WI;->j6(Ljava/lang/String;Ljava/lang/String;)Labcd/WI;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/XI;->j6(Labcd/WI;)Z

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/XI;->j6(Labcd/gE;)V

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v1

    invoke-virtual {v1}, Labcd/jF;->v5()V

    new-instance v1, Labcd/bB;

    invoke-direct {v1, p1}, Labcd/bB;-><init>(Labcd/UE;)V

    iget-object v2, p0, Labcd/XA;->u7:Ljava/lang/String;

    invoke-virtual {v1, v2}, Labcd/bB;->j6(Ljava/lang/String;)Labcd/bB;

    iget-object v2, p0, Labcd/XA;->EQ:Labcd/LE;

    invoke-virtual {v1, v2}, Labcd/bB;->j6(Labcd/LE;)Labcd/bB;

    sget-object v2, Labcd/eJ;->FH:Labcd/eJ;

    invoke-virtual {v1, v2}, Labcd/bB;->j6(Labcd/eJ;)Labcd/bB;

    invoke-virtual {p0, v1}, Labcd/GB;->j6(Labcd/GB;)Labcd/dB;

    invoke-direct {p0, v0}, Labcd/XA;->DW(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/bB;->j6(Ljava/util/List;)Labcd/bB;

    invoke-virtual {v1}, Labcd/bB;->call()Labcd/qI;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "refs/remotes/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private j6(Labcd/UE;)V
    .registers 4

    new-instance v0, Labcd/DB;

    invoke-direct {v0, p1}, Labcd/DB;-><init>(Labcd/UE;)V

    invoke-virtual {v0}, Labcd/DB;->call()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Labcd/FB;

    invoke-direct {v0, p1}, Labcd/FB;-><init>(Labcd/UE;)V

    invoke-virtual {p0, v0}, Labcd/GB;->j6(Labcd/GB;)Labcd/dB;

    iget-object v1, p0, Labcd/XA;->EQ:Labcd/LE;

    invoke-virtual {v0, v1}, Labcd/FB;->j6(Labcd/LE;)Labcd/FB;

    invoke-virtual {v0}, Labcd/FB;->call()Ljava/util/Collection;

    goto :goto_0
.end method

.method private j6(Labcd/UE;Labcd/ME;)V
    .registers 8

    invoke-interface {p2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/UE;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v1

    const-string v2, "branch"

    const-string v3, "remote"

    iget-object v4, p0, Labcd/XA;->u7:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v1

    const-string v2, "branch"

    const-string v3, "merge"

    invoke-interface {p2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    invoke-virtual {v0}, Labcd/jF;->v5()V

    return-void
.end method

.method private j6(Labcd/UE;Labcd/qI;)V
    .registers 7

    iget-object v0, p0, Labcd/XA;->tp:Ljava/lang/String;

    invoke-virtual {p2, v0}, Labcd/zI;->DW(Ljava/lang/String;)Labcd/ME;

    move-result-object v1

    iget-object v0, p0, Labcd/XA;->tp:Ljava/lang/String;

    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Labcd/XA;->j6(Labcd/qI;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "refs/heads/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HEAD"

    invoke-virtual {p1, v1}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/RE;->DW()V

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/RE;->DW(Ljava/lang/String;)Labcd/RE$a;

    invoke-direct {p0, p1, v0}, Labcd/XA;->j6(Labcd/UE;Labcd/ME;)V

    :cond_3
    invoke-direct {p0, p1, v0}, Labcd/XA;->DW(Labcd/UE;Labcd/ME;)Labcd/dG;

    move-result-object v1

    const-string v2, "HEAD"

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "refs/heads/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v2, v0}, Labcd/UE;->j6(Ljava/lang/String;Z)Labcd/RE;

    move-result-object v0

    invoke-virtual {v1}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v0, v1}, Labcd/RE;->DW(Labcd/YD;)V

    invoke-virtual {v0}, Labcd/RE;->FH()Labcd/RE$a;

    iget-boolean v0, p0, Labcd/XA;->gn:Z

    if-nez v0, :cond_0

    new-instance v0, Labcd/NC;

    invoke-virtual {p1}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v2

    invoke-virtual {v1}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Labcd/NC;-><init>(Labcd/UE;Labcd/KC;Labcd/yE;)V

    invoke-virtual {v0}, Labcd/NC;->j6()Z

    iget-boolean v0, p0, Labcd/XA;->J0:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Labcd/XA;->j6(Labcd/UE;)V

    goto :goto_1
.end method


# virtual methods
.method public DW(Z)Labcd/XA;
    .registers 2

    iput-boolean p1, p0, Labcd/XA;->we:Z

    return-object p0
.end method

.method public call()Labcd/cB;
    .registers 4

    :try_start_0
    new-instance v0, Labcd/HJ;

    iget-object v1, p0, Labcd/XA;->Zo:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/HJ;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Labcd/XA;->j6(Labcd/HJ;)Labcd/UE;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Labcd/XA;->j6(Labcd/UE;Labcd/HJ;)Labcd/qI;

    move-result-object v0

    iget-boolean v2, p0, Labcd/XA;->J8:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v1, v0}, Labcd/XA;->j6(Labcd/UE;Labcd/qI;)V

    :cond_0
    new-instance v0, Labcd/cB;

    invoke-direct {v0, v1}, Labcd/cB;-><init>(Labcd/UE;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Labcd/RB; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/XA;->call()Labcd/cB;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/LE;)Labcd/XA;
    .registers 2

    iput-object p1, p0, Labcd/XA;->EQ:Labcd/LE;

    return-object p0
.end method

.method public j6(Ljava/io/File;)Labcd/XA;
    .registers 2

    iput-object p1, p0, Labcd/XA;->VH:Ljava/io/File;

    return-object p0
.end method

.method public j6(Ljava/lang/String;)Labcd/XA;
    .registers 2

    iput-object p1, p0, Labcd/XA;->Zo:Ljava/lang/String;

    return-object p0
.end method
