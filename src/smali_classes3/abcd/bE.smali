.class public Labcd/bE;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Labcd/bE;",
        "R:",
        "Labcd/UE;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private DW:Ljava/io/File;

.field private FH:Ljava/io/File;

.field private Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/io/File;

.field private gn:Z

.field private j6:Labcd/pK;

.field private tp:Labcd/gE;

.field private u7:Z

.field private v5:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private U2()Ljava/io/File;
    .registers 6

    invoke-virtual {p0}, Labcd/bE;->FH()Labcd/gE;

    move-result-object v0

    const-string v1, "worktree"

    const-string v2, "core"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Labcd/bE;->J8()Labcd/pK;

    move-result-object v0

    invoke-virtual {p0}, Labcd/bE;->v5()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_1c
    const-string v1, "bare"

    invoke-virtual {v0, v2, v3, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_38

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v1, v4}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Labcd/bE;->QX()Labcd/bE;

    return-object v3

    :cond_2f
    invoke-virtual {p0}, Labcd/bE;->v5()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_38
    invoke-virtual {p0}, Labcd/bE;->v5()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".git"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Labcd/bE;->v5()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_51
    invoke-virtual {p0}, Labcd/bE;->QX()Labcd/bE;

    return-object v3
.end method

.method private static j6([B)Z
    .registers 6

    array-length v0, p0

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-ge v0, v1, :cond_7

    return v2

    :cond_7
    aget-byte v0, p0, v2

    const/16 v1, 0x67

    if-ne v0, v1, :cond_3d

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    const/16 v3, 0x69

    if-ne v1, v3, :cond_3d

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    const/16 v4, 0x74

    if-ne v1, v4, :cond_3d

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    const/16 v4, 0x64

    if-ne v1, v4, :cond_3d

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    if-ne v1, v3, :cond_3d

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v3, 0x72

    if-ne v1, v3, :cond_3d

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_3d

    const/4 v1, 0x7

    aget-byte p0, p0, v1

    const/16 v1, 0x20

    if-ne p0, v1, :cond_3d

    return v0

    :cond_3d
    return v2
.end method


# virtual methods
.method public DW(Ljava/io/File;)Labcd/bE;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TB;"
        }
    .end annotation

    if-eqz p1, :cond_12

    iget-object v0, p0, Labcd/bE;->VH:Ljava/util/List;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/bE;->VH:Ljava/util/List;

    :cond_d
    iget-object v0, p0, Labcd/bE;->VH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {p0}, Labcd/bE;->Ws()Labcd/bE;

    return-object p0
.end method

.method public DW()[Ljava/io/File;
    .registers 3

    iget-object v0, p0, Labcd/bE;->Hw:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0
.end method

.method protected EQ()Labcd/gE;
    .registers 7

    invoke-virtual {p0}, Labcd/bE;->v5()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Labcd/bE;->J8()Labcd/pK;

    move-result-object v0

    invoke-virtual {p0}, Labcd/bE;->v5()Ljava/io/File;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v0, v1, v2}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Labcd/FG;

    invoke-virtual {p0}, Labcd/bE;->J8()Labcd/pK;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Labcd/FG;-><init>(Ljava/io/File;Labcd/pK;)V

    :try_start_1d
    invoke-virtual {v1}, Labcd/FG;->gn()V
    :try_end_20
    .catch Labcd/XC; {:try_start_1d .. :try_end_20} :catch_21

    return-object v1

    :catch_21
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->repositoryConfigFileInvalid:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_43
    new-instance v0, Labcd/gE;

    invoke-direct {v0}, Labcd/gE;-><init>()V

    return-object v0
.end method

.method public FH(Ljava/io/File;)Labcd/bE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Labcd/bE;->DW:Ljava/io/File;

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/bE;->tp:Labcd/gE;

    invoke-virtual {p0}, Labcd/bE;->Ws()Labcd/bE;

    return-object p0
.end method

.method protected FH()Labcd/gE;
    .registers 2

    iget-object v0, p0, Labcd/bE;->tp:Labcd/gE;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Labcd/bE;->EQ()Labcd/gE;

    move-result-object v0

    iput-object v0, p0, Labcd/bE;->tp:Labcd/gE;

    :cond_a
    iget-object v0, p0, Labcd/bE;->tp:Labcd/gE;

    return-object v0
.end method

.method public Hw(Ljava/io/File;)Labcd/bE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Labcd/bE;->v5:Ljava/io/File;

    invoke-virtual {p0}, Labcd/bE;->Ws()Labcd/bE;

    return-object p0
.end method

.method public Hw()Labcd/pK;
    .registers 2

    iget-object v0, p0, Labcd/bE;->j6:Labcd/pK;

    return-object v0
.end method

.method protected J0()V
    .registers 3

    invoke-virtual {p0}, Labcd/bE;->v5()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Labcd/bE;->gn()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_19

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->eitherGitDirOrWorkTreeRequired:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_19
    return-void
.end method

.method protected J8()Labcd/pK;
    .registers 2

    invoke-virtual {p0}, Labcd/bE;->Hw()Labcd/pK;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Labcd/bE;->Hw()Labcd/pK;

    move-result-object v0

    goto :goto_d

    :cond_b
    sget-object v0, Labcd/pK;->j6:Labcd/pK;

    :goto_d
    return-object v0
.end method

.method protected Mr()V
    .registers 4

    invoke-virtual {p0}, Labcd/bE;->Hw()Labcd/pK;

    move-result-object v0

    if-nez v0, :cond_b

    sget-object v0, Labcd/pK;->j6:Labcd/pK;

    invoke-virtual {p0, v0}, Labcd/bE;->j6(Labcd/pK;)Labcd/bE;

    :cond_b
    invoke-virtual {p0}, Labcd/bE;->u7()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Labcd/bE;->gn()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1e

    invoke-direct {p0}, Labcd/bE;->U2()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/bE;->Zo(Ljava/io/File;)Labcd/bE;

    :cond_1e
    invoke-virtual {p0}, Labcd/bE;->u7()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {p0}, Labcd/bE;->v5()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Labcd/bE;->gn()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/bE;->FH(Ljava/io/File;)Labcd/bE;

    :cond_35
    invoke-virtual {p0}, Labcd/bE;->Zo()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_49

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/bE;->v5()Ljava/io/File;

    move-result-object v1

    const-string v2, "index"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Labcd/bE;->Hw(Ljava/io/File;)Labcd/bE;

    :cond_49
    return-void
.end method

.method public QX()Labcd/bE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/bE;->Hw(Ljava/io/File;)Labcd/bE;

    invoke-virtual {p0, v0}, Labcd/bE;->Zo(Ljava/io/File;)Labcd/bE;

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/bE;->gn:Z

    invoke-virtual {p0}, Labcd/bE;->Ws()Labcd/bE;

    return-object p0
.end method

.method public VH()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Labcd/bE;->FH:Ljava/io/File;

    return-object v0
.end method

.method protected final Ws()Labcd/bE;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    return-object p0
.end method

.method public XL()Labcd/bE;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/bE;->J0()V

    invoke-virtual {p0}, Labcd/bE;->aM()V

    invoke-virtual {p0}, Labcd/bE;->Mr()V

    invoke-virtual {p0}, Labcd/bE;->j3()V

    invoke-virtual {p0}, Labcd/bE;->Ws()Labcd/bE;

    return-object p0
.end method

.method public Zo(Ljava/io/File;)Labcd/bE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Labcd/bE;->Zo:Ljava/io/File;

    invoke-virtual {p0}, Labcd/bE;->Ws()Labcd/bE;

    return-object p0
.end method

.method public Zo()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Labcd/bE;->v5:Ljava/io/File;

    return-object v0
.end method

.method protected aM()V
    .registers 10

    invoke-virtual {p0}, Labcd/bE;->v5()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_8f

    invoke-virtual {p0}, Labcd/bE;->gn()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8f

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/bE;->gn()Ljava/io/File;

    move-result-object v1

    const-string v2, ".git"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_21

    :goto_1d
    invoke-virtual {p0, v0}, Labcd/bE;->FH(Ljava/io/File;)Labcd/bE;

    goto :goto_8f

    :cond_21
    invoke-static {v0}, Labcd/BK;->j6(Ljava/io/File;)[B

    move-result-object v1

    invoke-static {v1}, Labcd/bE;->j6([B)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_77

    const/16 v2, 0x8

    invoke-static {v1, v2}, Labcd/IK;->Zo([BI)I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    aget-byte v7, v1, v6

    const/16 v8, 0xa

    if-ne v7, v8, :cond_3c

    move v5, v6

    :cond_3c
    if-eq v5, v2, :cond_5f

    invoke-static {v1, v2, v5}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-virtual {p0, v1}, Labcd/bE;->FH(Ljava/io/File;)Labcd/bE;

    goto :goto_8f

    :cond_51
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Labcd/bE;->gn()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    goto :goto_1d

    :cond_5f
    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->invalidGitdirRef:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_77
    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->invalidGitdirRef:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8f
    :goto_8f
    return-void
.end method

.method public gn()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Labcd/bE;->Zo:Ljava/io/File;

    return-object v0
.end method

.method protected j3()V
    .registers 4

    invoke-virtual {p0}, Labcd/bE;->VH()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Labcd/bE;->v5()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Labcd/bE;->J8()Labcd/pK;

    move-result-object v0

    invoke-virtual {p0}, Labcd/bE;->v5()Ljava/io/File;

    move-result-object v1

    const-string v2, "objects"

    invoke-virtual {v0, v1, v2}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/bE;->v5(Ljava/io/File;)Labcd/bE;

    :cond_1d
    return-void
.end method

.method public j6()Labcd/UE;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/bE;->XL()Labcd/bE;

    new-instance v0, Labcd/IG;

    invoke-direct {v0, p0}, Labcd/IG;-><init>(Labcd/bE;)V

    invoke-virtual {p0}, Labcd/bE;->tp()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Labcd/IG;->EQ()Labcd/xE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/xE;->DW()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_23

    :cond_19
    new-instance v0, Labcd/pD;

    invoke-virtual {p0}, Labcd/bE;->v5()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/pD;-><init>(Ljava/io/File;)V

    throw v0

    :cond_23
    :goto_23
    return-object v0
.end method

.method public j6(Labcd/QK;)Labcd/bE;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/QK;",
            ")TB;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/bE;->v5()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v0, "GIT_DIR"

    invoke-virtual {p1, v0}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Labcd/bE;->FH(Ljava/io/File;)Labcd/bE;

    :cond_16
    invoke-virtual {p0}, Labcd/bE;->VH()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2c

    const-string v0, "GIT_OBJECT_DIRECTORY"

    invoke-virtual {p1, v0}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Labcd/bE;->v5(Ljava/io/File;)Labcd/bE;

    :cond_2c
    invoke-virtual {p0}, Labcd/bE;->DW()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_53

    const-string v0, "GIT_ALTERNATE_OBJECT_DIRECTORIES"

    invoke-virtual {p1, v0}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_43
    if-lt v3, v2, :cond_46

    goto :goto_53

    :cond_46
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v3

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Labcd/bE;->j6(Ljava/io/File;)Labcd/bE;

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_53
    :goto_53
    invoke-virtual {p0}, Labcd/bE;->gn()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_69

    const-string v0, "GIT_WORK_TREE"

    invoke-virtual {p1, v0}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_69

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Labcd/bE;->Zo(Ljava/io/File;)Labcd/bE;

    :cond_69
    invoke-virtual {p0}, Labcd/bE;->Zo()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_7f

    const-string v0, "GIT_INDEX_FILE"

    invoke-virtual {p1, v0}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7f

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Labcd/bE;->Hw(Ljava/io/File;)Labcd/bE;

    :cond_7f
    iget-object v0, p0, Labcd/bE;->VH:Ljava/util/List;

    if-nez v0, :cond_a2

    const-string v0, "GIT_CEILING_DIRECTORIES"

    invoke-virtual {p1, v0}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a2

    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    :goto_92
    if-lt v1, v0, :cond_95

    goto :goto_a2

    :cond_95
    new-instance v2, Ljava/io/File;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Labcd/bE;->DW(Ljava/io/File;)Labcd/bE;

    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    :cond_a2
    :goto_a2
    invoke-virtual {p0}, Labcd/bE;->Ws()Labcd/bE;

    return-object p0
.end method

.method public j6(Labcd/pK;)Labcd/bE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/pK;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Labcd/bE;->j6:Labcd/pK;

    invoke-virtual {p0}, Labcd/bE;->Ws()Labcd/bE;

    return-object p0
.end method

.method public j6(Ljava/io/File;)Labcd/bE;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TB;"
        }
    .end annotation

    if-eqz p1, :cond_12

    iget-object v0, p0, Labcd/bE;->Hw:Ljava/util/List;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/bE;->Hw:Ljava/util/List;

    :cond_d
    iget-object v0, p0, Labcd/bE;->Hw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {p0}, Labcd/bE;->Ws()Labcd/bE;

    return-object p0
.end method

.method public j6(Z)Labcd/bE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    iput-boolean p1, p0, Labcd/bE;->u7:Z

    invoke-virtual {p0}, Labcd/bE;->Ws()Labcd/bE;

    return-object p0
.end method

.method public tp()Z
    .registers 2

    iget-boolean v0, p0, Labcd/bE;->u7:Z

    return v0
.end method

.method public u7()Z
    .registers 2

    iget-boolean v0, p0, Labcd/bE;->gn:Z

    return v0
.end method

.method public v5(Ljava/io/File;)Labcd/bE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Labcd/bE;->FH:Ljava/io/File;

    invoke-virtual {p0}, Labcd/bE;->Ws()Labcd/bE;

    return-object p0
.end method

.method public v5()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Labcd/bE;->DW:Ljava/io/File;

    return-object v0
.end method

.method public we()Labcd/bE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/bE;->j6(Labcd/QK;)Labcd/bE;

    return-object p0
.end method
