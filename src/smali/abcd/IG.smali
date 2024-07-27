.class public Labcd/IG;
.super Labcd/UE;


# instance fields
.field private final EQ:Labcd/OE;

.field private J0:Labcd/LG;

.field private final gn:Labcd/FG;

.field private final tp:Labcd/FG;

.field private final u7:Labcd/FG;

.field private final we:Labcd/XG;


# direct methods
.method public constructor <init>(Labcd/bE;)V
    .registers 8

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Labcd/UE;-><init>(Labcd/bE;)V

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    invoke-virtual {p0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Labcd/QK;->j6(Labcd/gE;Labcd/pK;)Labcd/FG;

    move-result-object v0

    iput-object v0, p0, Labcd/IG;->gn:Labcd/FG;

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    iget-object v1, p0, Labcd/IG;->gn:Labcd/FG;

    invoke-virtual {p0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/QK;->DW(Labcd/gE;Labcd/pK;)Labcd/FG;

    move-result-object v0

    iput-object v0, p0, Labcd/IG;->u7:Labcd/FG;

    new-instance v0, Labcd/FG;

    iget-object v1, p0, Labcd/IG;->u7:Labcd/FG;

    invoke-virtual {p0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v2

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v3

    const-string v4, "config"

    invoke-virtual {v2, v3, v4}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Labcd/FG;-><init>(Labcd/gE;Ljava/io/File;Labcd/pK;)V

    iput-object v0, p0, Labcd/IG;->tp:Labcd/FG;

    invoke-direct {p0}, Labcd/IG;->er()V

    invoke-direct {p0}, Labcd/IG;->yS()V

    invoke-direct {p0}, Labcd/IG;->rN()V

    iget-object v0, p0, Labcd/IG;->tp:Labcd/FG;

    new-instance v1, Labcd/HG;

    invoke-direct {v1, p0}, Labcd/HG;-><init>(Labcd/IG;)V

    invoke-virtual {v0, v1}, Labcd/gE;->j6(Labcd/DD;)Labcd/GD;

    new-instance v0, Labcd/nH;

    invoke-direct {v0, p0}, Labcd/nH;-><init>(Labcd/IG;)V

    iput-object v0, p0, Labcd/IG;->EQ:Labcd/OE;

    new-instance v0, Labcd/XG;

    iget-object v1, p0, Labcd/IG;->tp:Labcd/FG;

    invoke-virtual {p1}, Labcd/bE;->VH()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Labcd/bE;->DW()[Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/XG;-><init>(Labcd/gE;Ljava/io/File;[Ljava/io/File;Labcd/pK;)V

    iput-object v0, p0, Labcd/IG;->we:Labcd/XG;

    iget-object v0, p0, Labcd/IG;->we:Labcd/XG;

    invoke-virtual {v0}, Labcd/XG;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/IG;->Zo()Labcd/FG;

    move-result-object v0

    const-string v1, "core"

    const-string v2, "repositoryformatversion"

    invoke-virtual {v0, v1, v5, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Labcd/UE;->QX()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Labcd/UE;->tp()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v0

    iput-object v0, p0, Labcd/IG;->J0:Labcd/LG;

    :cond_1
    return-void

    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->unknownRepositoryFormat2:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    new-instance v0, Labcd/JG;

    invoke-direct {v0}, Labcd/JG;-><init>()V

    invoke-virtual {v0, p1}, Labcd/bE;->FH(Ljava/io/File;)Labcd/bE;

    check-cast v0, Labcd/JG;

    invoke-virtual {v0}, Labcd/bE;->XL()Labcd/bE;

    invoke-direct {p0, v0}, Labcd/IG;-><init>(Labcd/bE;)V

    return-void
.end method

.method private er()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Labcd/IG;->gn:Labcd/FG;

    invoke-virtual {v0}, Labcd/FG;->gn()V
    :try_end_0
    .catch Labcd/XC; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->systemConfigFileInvalid:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Labcd/IG;->gn:Labcd/FG;

    invoke-virtual {v5}, Labcd/FG;->Zo()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method private rN()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/IG;->tp:Labcd/FG;

    invoke-virtual {v0}, Labcd/FG;->gn()V
    :try_end_0
    .catch Labcd/XC; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->unknownRepositoryFormat:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method private yS()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Labcd/IG;->u7:Labcd/FG;

    invoke-virtual {v0}, Labcd/FG;->gn()V
    :try_end_0
    .catch Labcd/XC; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->userConfigFileInvalid:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Labcd/IG;->u7:Labcd/FG;

    invoke-virtual {v5}, Labcd/FG;->Zo()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method


# virtual methods
.method public EQ()Labcd/XG;
    .registers 2

    iget-object v0, p0, Labcd/IG;->we:Labcd/XG;

    return-object v0
.end method

.method public bridge synthetic EQ()Labcd/xE;
    .registers 2

    invoke-virtual {p0}, Labcd/IG;->EQ()Labcd/XG;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Labcd/IG;->we:Labcd/XG;

    invoke-virtual {v0}, Labcd/XG;->tp()[Labcd/GG$a;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    return-object v2

    :cond_0
    aget-object v0, v3, v1

    instance-of v5, v0, Labcd/GG$b;

    if-eqz v5, :cond_2

    check-cast v0, Labcd/GG$b;

    iget-object v5, v0, Labcd/GG$b;->DW:Labcd/IG;

    invoke-virtual {v5}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v5}, Labcd/IG;->Hw()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public Mr()V
    .registers 2

    invoke-virtual {p0}, Labcd/UE;->tp()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v0

    iput-object v0, p0, Labcd/IG;->J0:Labcd/LG;

    new-instance v0, Labcd/ED;

    invoke-direct {v0}, Labcd/ED;-><init>()V

    invoke-virtual {p0, v0}, Labcd/UE;->j6(Labcd/KD;)V

    return-void
.end method

.method public Zo()Labcd/FG;
    .registers 3

    iget-object v0, p0, Labcd/IG;->gn:Labcd/FG;

    invoke-virtual {v0}, Labcd/FG;->VH()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Labcd/IG;->er()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Labcd/IG;->u7:Labcd/FG;

    invoke-virtual {v0}, Labcd/FG;->VH()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-direct {p0}, Labcd/IG;->yS()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    iget-object v0, p0, Labcd/IG;->tp:Labcd/FG;

    invoke-virtual {v0}, Labcd/FG;->VH()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-direct {p0}, Labcd/IG;->rN()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    iget-object v0, p0, Labcd/IG;->tp:Labcd/FG;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic Zo()Labcd/jF;
    .registers 2

    invoke-virtual {p0}, Labcd/IG;->Zo()Labcd/FG;

    move-result-object v0

    return-object v0
.end method

.method public j6(Z)V
    .registers 9

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Labcd/IG;->Zo()Labcd/FG;

    move-result-object v3

    invoke-virtual {v3}, Labcd/FG;->Zo()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v1}, Labcd/zK;->DW(Ljava/io/File;Z)V

    iget-object v0, p0, Labcd/IG;->EQ:Labcd/OE;

    invoke-virtual {v0}, Labcd/OE;->DW()V

    iget-object v0, p0, Labcd/IG;->we:Labcd/XG;

    invoke-virtual {v0}, Labcd/XG;->J0()V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v4

    const-string v5, "branches"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/zK;->DW(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v4

    const-string v5, "hooks"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/zK;->DW(Ljava/io/File;)V

    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/RE;->DW()V

    const-string v4, "refs/heads/master"

    invoke-virtual {v0, v4}, Labcd/RE;->DW(Ljava/lang/String;)Labcd/RE$a;

    invoke-virtual {p0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v0

    invoke-virtual {v0}, Labcd/pK;->v5()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "try"

    const-string v4, "execute"

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v5

    invoke-static {v0, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Labcd/pK;->j6(Ljava/io/File;Z)Z

    invoke-virtual {p0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v4

    invoke-virtual {v4, v0}, Labcd/pK;->j6(Ljava/io/File;)Z

    move-result v4

    invoke-virtual {p0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Labcd/pK;->j6(Ljava/io/File;Z)Z

    invoke-virtual {p0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v5

    invoke-virtual {v5, v0}, Labcd/pK;->j6(Ljava/io/File;)Z

    move-result v5

    invoke-static {v0}, Labcd/zK;->j6(Ljava/io/File;)V

    if-eqz v4, :cond_1

    if-nez v5, :cond_1

    move v0, v1

    :goto_0
    const-string v4, "core"

    const-string v5, "repositoryformatversion"

    invoke-virtual {v3, v4, v6, v5, v2}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "core"

    const-string v5, "filemode"

    invoke-virtual {v3, v4, v6, v5, v0}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const-string v0, "core"

    const-string v4, "bare"

    invoke-virtual {v3, v0, v6, v4, v1}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const-string v0, "core"

    const-string v1, "logallrefupdates"

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v0, v6, v1, v4}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "core"

    const-string v1, "autocrlf"

    invoke-virtual {v3, v0, v6, v1, v2}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3}, Labcd/FG;->v5()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->repositoryAlreadyExists:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public we()Labcd/OE;
    .registers 2

    iget-object v0, p0, Labcd/IG;->EQ:Labcd/OE;

    return-object v0
.end method
