.class public Labcd/YH;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/YJ;

.field private FH:Labcd/jF;

.field private Hw:Labcd/FG;

.field private final j6:Labcd/UE;

.field private v5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Labcd/UE;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/YH;->j6:Labcd/UE;

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    iput-object v0, p0, Labcd/YH;->FH:Labcd/jF;

    new-instance v0, Labcd/YJ;

    invoke-direct {v0, p1}, Labcd/YJ;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/YH;->DW:Labcd/YJ;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Labcd/YJ;->j6(Z)V

    return-void
.end method

.method public static DW(Labcd/UE;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "./"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "../"

    if-nez v1, :cond_11

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    return-object p1

    :cond_11
    const-string v1, "HEAD"

    invoke-virtual {p0, v1}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v1

    const-string v3, "remote"

    if-eqz v1, :cond_38

    invoke-interface {v1}, Labcd/ME;->Zo()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1}, Labcd/ME;->v5()Labcd/ME;

    move-result-object v1

    :cond_25
    invoke-virtual {p0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v4

    invoke-interface {v1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/UE;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "branch"

    invoke-virtual {v4, v5, v1, v3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    if-nez v1, :cond_3d

    const-string v1, "origin"

    :cond_3d
    invoke-virtual {p0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v3, v1, v5}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2f

    if-nez v1, :cond_5d

    invoke-virtual {p0}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-char p0, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x5c

    if-ne v4, p0, :cond_5d

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :cond_5d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v4, 0x1

    sub-int/2addr p0, v4

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/4 v5, 0x0

    if-ne p0, v3, :cond_73

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v1, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_73
    const/16 p0, 0x2f

    :goto_75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_7c

    goto :goto_b6

    :cond_7c
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_88

    const/4 v6, 0x2

    :goto_83
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_75

    :cond_88
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b6

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ge v6, v4, :cond_9a

    const/16 p0, 0x3a

    invoke-virtual {v1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    :cond_9a
    if-lt v6, v4, :cond_a2

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x3

    goto :goto_83

    :cond_a2
    new-instance p0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->submoduleParentRemoteUrlInvalid:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v5

    invoke-static {p1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b6
    :goto_b6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static FH(Labcd/UE;Ljava/lang/String;)Labcd/UE;
    .registers 2

    invoke-virtual {p0}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Labcd/YH;->j6(Ljava/io/File;Ljava/lang/String;)Labcd/UE;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/io/File;Ljava/lang/String;)Labcd/UE;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_12
    new-instance p0, Labcd/VE;

    invoke-direct {p0}, Labcd/VE;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Labcd/bE;->j6(Z)Labcd/bE;

    move-object p1, p0

    check-cast p1, Labcd/VE;

    sget-object p1, Labcd/pK;->j6:Labcd/pK;

    invoke-virtual {p0, p1}, Labcd/bE;->j6(Labcd/pK;)Labcd/bE;

    move-object p1, p0

    check-cast p1, Labcd/VE;

    invoke-virtual {p0, v0}, Labcd/bE;->Zo(Ljava/io/File;)Labcd/bE;

    move-object p1, p0

    check-cast p1, Labcd/VE;

    invoke-virtual {p0}, Labcd/bE;->j6()Labcd/UE;

    move-result-object p0
    :try_end_30
    .catch Labcd/pD; {:try_start_12 .. :try_end_30} :catch_31

    return-object p0

    :catch_31
    move-exception p0

    return-object v1
.end method

.method public static j6(Labcd/UE;)Labcd/YH;
    .registers 3

    new-instance v0, Labcd/YH;

    invoke-direct {v0, p0}, Labcd/YH;-><init>(Labcd/UE;)V

    new-instance v1, Labcd/RC;

    invoke-virtual {p0}, Labcd/UE;->U2()Labcd/KC;

    move-result-object p0

    invoke-direct {v1, p0}, Labcd/RC;-><init>(Labcd/KC;)V

    invoke-virtual {v0, v1}, Labcd/YH;->j6(Labcd/TJ;)Labcd/YH;

    return-object v0
.end method

.method public static j6(Labcd/UE;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private we()V
    .registers 5

    iget-object v0, p0, Labcd/YH;->Hw:Labcd/FG;

    if-nez v0, :cond_21

    new-instance v0, Labcd/FG;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Labcd/YH;->j6:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v2

    const-string v3, ".gitmodules"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Labcd/YH;->j6:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/FG;-><init>(Ljava/io/File;Labcd/pK;)V

    invoke-virtual {v0}, Labcd/FG;->gn()V

    iput-object v0, p0, Labcd/YH;->Hw:Labcd/FG;

    :cond_21
    return-void
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Labcd/YH;->FH:Labcd/jF;

    iget-object v1, p0, Labcd/YH;->v5:Ljava/lang/String;

    const-string v2, "url"

    const-string v3, "submodule"

    invoke-virtual {v0, v3, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public EQ()Z
    .registers 4

    :goto_0
    iget-object v0, p0, Labcd/YH;->DW:Labcd/YJ;

    invoke-virtual {v0}, Labcd/YJ;->EQ()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/YH;->v5:Ljava/lang/String;

    return v1

    :cond_d
    sget-object v0, Labcd/rE;->v5:Labcd/rE;

    iget-object v2, p0, Labcd/YH;->DW:Labcd/YJ;

    invoke-virtual {v2, v1}, Labcd/YJ;->j6(I)Labcd/rE;

    move-result-object v1

    if-eq v0, v1, :cond_18

    goto :goto_0

    :cond_18
    iget-object v0, p0, Labcd/YH;->DW:Labcd/YJ;

    invoke-virtual {v0}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/YH;->v5:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public FH()Ljava/io/File;
    .registers 3

    iget-object v0, p0, Labcd/YH;->j6:Labcd/UE;

    iget-object v1, p0, Labcd/YH;->v5:Ljava/lang/String;

    invoke-static {v0, v1}, Labcd/YH;->j6(Labcd/UE;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Labcd/YH;->we()V

    iget-object v0, p0, Labcd/YH;->Hw:Labcd/FG;

    iget-object v1, p0, Labcd/YH;->v5:Ljava/lang/String;

    const-string v2, "path"

    const-string v3, "submodule"

    invoke-virtual {v0, v3, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public VH()Labcd/yE;
    .registers 3

    iget-object v0, p0, Labcd/YH;->DW:Labcd/YJ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/YJ;->DW(I)Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Labcd/YH;->we()V

    iget-object v0, p0, Labcd/YH;->Hw:Labcd/FG;

    iget-object v1, p0, Labcd/YH;->v5:Ljava/lang/String;

    const-string v2, "url"

    const-string v3, "submodule"

    invoke-virtual {v0, v3, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/YH;->v5:Ljava/lang/String;

    return-object v0
.end method

.method public j6(Labcd/TJ;)Labcd/YH;
    .registers 3

    iget-object v0, p0, Labcd/YH;->DW:Labcd/YJ;

    invoke-virtual {v0, p1}, Labcd/YJ;->j6(Labcd/TJ;)I

    return-object p0
.end method

.method public j6(Labcd/jK;)Labcd/YH;
    .registers 3

    iget-object v0, p0, Labcd/YH;->DW:Labcd/YJ;

    invoke-virtual {v0, p1}, Labcd/YJ;->j6(Labcd/jK;)V

    return-object p0
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Labcd/YH;->FH:Labcd/jF;

    iget-object v1, p0, Labcd/YH;->v5:Ljava/lang/String;

    const-string v2, "update"

    const-string v3, "submodule"

    invoke-virtual {v0, v3, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()Labcd/UE;
    .registers 3

    iget-object v0, p0, Labcd/YH;->j6:Labcd/UE;

    iget-object v1, p0, Labcd/YH;->v5:Ljava/lang/String;

    invoke-static {v0, v1}, Labcd/YH;->FH(Labcd/UE;Ljava/lang/String;)Labcd/UE;

    move-result-object v0

    return-object v0
.end method

.method public u7()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Labcd/YH;->Zo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Labcd/YH;->j6:Labcd/UE;

    invoke-static {v1, v0}, Labcd/YH;->DW(Labcd/UE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Labcd/YH;->we()V

    iget-object v0, p0, Labcd/YH;->Hw:Labcd/FG;

    iget-object v1, p0, Labcd/YH;->v5:Ljava/lang/String;

    const-string v2, "update"

    const-string v3, "submodule"

    invoke-virtual {v0, v3, v1, v2}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
