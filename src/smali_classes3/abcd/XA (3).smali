.class public Labcd/XA;
.super Labcd/GB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LGB<",
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
            "Ljava/util/Collection<",
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
    .registers 4

    new-instance v0, Labcd/qG;

    invoke-direct {v0, p1}, Labcd/qG;-><init>(Labcd/UE;)V

    :try_start_5
    invoke-interface {p2}, Labcd/ME;->DW()Labcd/yE;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    return-object p1

    :catchall_11
    move-exception p1

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    throw p1
.end method

.method private DW(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
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

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "/*"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "refs/heads/*"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Labcd/WI;->j6(Ljava/lang/String;Ljava/lang/String;)Labcd/WI;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Labcd/XA;->we:Z

    if-eqz v1, :cond_2f

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_2f
    iget-object v1, p0, Labcd/XA;->Ws:Ljava/util/Collection;

    if-eqz v1, :cond_5a

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_5a

    iget-object v1, p0, Labcd/XA;->Ws:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3f
    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_46

    goto :goto_5a

    :cond_46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Labcd/WI;->v5(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-virtual {p1, v2}, Labcd/WI;->DW(Ljava/lang/String;)Labcd/WI;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_5a
    :goto_5a
    return-object v0
.end method

.method private j6(Labcd/qI;)Labcd/ME;
    .registers 7

    const-string v0, "HEAD"

    invoke-virtual {p1, v0}, Labcd/zI;->DW(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    const-string v2, "refs/heads/master"

    invoke-virtual {p1, v2}, Labcd/zI;->DW(Ljava/lang/String;)Labcd/ME;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-interface {v2}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v3

    if-eqz v3, :cond_21

    return-object v2

    :cond_21
    invoke-virtual {p1}, Labcd/zI;->j6()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_29
    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_52

    :cond_30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/ME;

    invoke-interface {v2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "refs/heads/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_43

    goto :goto_29

    :cond_43
    invoke-interface {v2}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v3

    if-eqz v3, :cond_29

    move-object v1, v2

    :goto_52
    return-object v1
.end method

.method private j6(Labcd/HJ;)Labcd/UE;
    .registers 6

    invoke-static {}, Labcd/cB;->tp()Labcd/eB;

    move-result-object v0

    iget-boolean v1, p0, Labcd/XA;->gn:Z

    invoke-virtual {v0, v1}, Labcd/eB;->j6(Z)Labcd/eB;

    iget-object v1, p0, Labcd/XA;->VH:Ljava/io/File;

    if-nez v1, :cond_1a

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Labcd/HJ;->DW()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".git"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Labcd/XA;->VH:Ljava/io/File;

    :cond_1a
    iget-object p1, p0, Labcd/XA;->VH:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Labcd/XA;->VH:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_2c

    goto :goto_48

    :cond_2c
    new-instance p1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->cloneNonEmptyDirectory:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Labcd/XA;->VH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/SB;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_48
    :goto_48
    iget-object p1, p0, Labcd/XA;->VH:Ljava/io/File;

    invoke-virtual {v0, p1}, Labcd/eB;->j6(Ljava/io/File;)Labcd/eB;

    invoke-virtual {v0}, Labcd/eB;->call()Labcd/cB;

    move-result-object p1

    invoke-virtual {p1}, Labcd/cB;->u7()Labcd/UE;

    move-result-object p1

    return-object p1
.end method

.method private j6(Labcd/UE;Labcd/HJ;)Labcd/qI;
    .registers 7

    new-instance v0, Labcd/XI;

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v1

    iget-object v2, p0, Labcd/XA;->u7:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Labcd/XI;-><init>(Labcd/gE;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Labcd/XI;->j6(Labcd/HJ;)Z

    iget-boolean p2, p0, Labcd/XA;->gn:Z

    if-eqz p2, :cond_15

    const-string p2, "refs/heads/"

    goto :goto_27

    :cond_15
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "refs/remotes/"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_27
    new-instance v1, Labcd/WI;

    invoke-direct {v1}, Labcd/WI;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Labcd/WI;->j6(Z)Labcd/WI;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "refs/heads/*"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Labcd/WI;->j6(Ljava/lang/String;Ljava/lang/String;)Labcd/WI;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/XI;->j6(Labcd/WI;)Z

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/XI;->j6(Labcd/gE;)V

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    invoke-virtual {v0}, Labcd/jF;->v5()V

    new-instance v0, Labcd/bB;

    invoke-direct {v0, p1}, Labcd/bB;-><init>(Labcd/UE;)V

    iget-object p1, p0, Labcd/XA;->u7:Ljava/lang/String;

    invoke-virtual {v0, p1}, Labcd/bB;->j6(Ljava/lang/String;)Labcd/bB;

    iget-object p1, p0, Labcd/XA;->EQ:Labcd/LE;

    invoke-virtual {v0, p1}, Labcd/bB;->j6(Labcd/LE;)Labcd/bB;

    sget-object p1, Labcd/eJ;->FH:Labcd/eJ;

    invoke-virtual {v0, p1}, Labcd/bB;->j6(Labcd/eJ;)Labcd/bB;

    invoke-virtual {p0, v0}, Labcd/GB;->j6(Labcd/GB;)Labcd/dB;

    invoke-direct {p0, p2}, Labcd/XA;->DW(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/bB;->j6(Ljava/util/List;)Labcd/bB;

    invoke-virtual {v0}, Labcd/bB;->call()Labcd/qI;

    move-result-object p1

    return-object p1
.end method

.method private j6(Labcd/UE;)V
    .registers 3

    new-instance v0, Labcd/DB;

    invoke-direct {v0, p1}, Labcd/DB;-><init>(Labcd/UE;)V

    invoke-virtual {v0}, Labcd/DB;->call()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    new-instance v0, Labcd/FB;

    invoke-direct {v0, p1}, Labcd/FB;-><init>(Labcd/UE;)V

    invoke-virtual {p0, v0}, Labcd/GB;->j6(Labcd/GB;)Labcd/dB;

    iget-object p1, p0, Labcd/XA;->EQ:Labcd/LE;

    invoke-virtual {v0, p1}, Labcd/FB;->j6(Labcd/LE;)Labcd/FB;

    invoke-virtual {v0}, Labcd/FB;->call()Ljava/util/Collection;

    return-void
.end method

.method private j6(Labcd/UE;Labcd/ME;)V
    .registers 8

    invoke-interface {p2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/UE;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v1

    const-string v2, "remote"

    iget-object v3, p0, Labcd/XA;->u7:Ljava/lang/String;

    const-string v4, "branch"

    invoke-virtual {v1, v4, v0, v2, v3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v1

    const-string v2, "merge"

    invoke-interface {p2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v4, v0, v2, p2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object p1

    invoke-virtual {p1}, Labcd/jF;->v5()V

    return-void
.end method

.method private j6(Labcd/UE;Labcd/qI;)V
    .registers 7

    iget-object v0, p0, Labcd/XA;->tp:Ljava/lang/String;

    invoke-virtual {p2, v0}, Labcd/zI;->DW(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    iget-object v1, p0, Labcd/XA;->tp:Ljava/lang/String;

    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0, p2}, Labcd/XA;->j6(Labcd/qI;)Labcd/ME;

    move-result-object p2

    if-eqz p2, :cond_17

    move-object v0, p2

    :cond_17
    if-eqz v0, :cond_73

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object p2

    if-nez p2, :cond_20

    goto :goto_73

    :cond_20
    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "refs/heads/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3d

    invoke-virtual {p1, v2}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object p2

    invoke-virtual {p2}, Labcd/RE;->DW()V

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Labcd/RE;->DW(Ljava/lang/String;)Labcd/RE$a;

    invoke-direct {p0, p1, v0}, Labcd/XA;->j6(Labcd/UE;Labcd/ME;)V

    :cond_3d
    invoke-direct {p0, p1, v0}, Labcd/XA;->DW(Labcd/UE;Labcd/ME;)Labcd/dG;

    move-result-object p2

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v2, v0}, Labcd/UE;->j6(Ljava/lang/String;Z)Labcd/RE;

    move-result-object v0

    invoke-virtual {p2}, Labcd/iG;->getId()Labcd/yE;

    invoke-virtual {v0, p2}, Labcd/RE;->DW(Labcd/YD;)V

    invoke-virtual {v0}, Labcd/RE;->FH()Labcd/RE$a;

    iget-boolean v0, p0, Labcd/XA;->gn:Z

    if-nez v0, :cond_73

    new-instance v0, Labcd/NC;

    invoke-virtual {p1}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v1

    invoke-virtual {p2}, Labcd/dG;->yS()Labcd/mG;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Labcd/NC;-><init>(Labcd/UE;Labcd/KC;Labcd/yE;)V

    invoke-virtual {v0}, Labcd/NC;->j6()Z

    iget-boolean p2, p0, Labcd/XA;->J0:Z

    if-eqz p2, :cond_73

    invoke-direct {p0, p1}, Labcd/XA;->j6(Labcd/UE;)V

    :cond_73
    :goto_73
    return-void
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

    if-nez v2, :cond_16

    invoke-direct {p0, v1, v0}, Labcd/XA;->j6(Labcd/UE;Labcd/qI;)V

    :cond_16
    new-instance v0, Labcd/cB;

    invoke-direct {v0, v1}, Labcd/cB;-><init>(Labcd/UE;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_32
    .catch Labcd/RB; {:try_start_0 .. :try_end_1b} :catch_27
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v0

    :catch_1c
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_27
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_32
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
