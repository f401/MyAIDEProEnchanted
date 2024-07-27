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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/YH;->j6:Labcd/UE;

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    iput-object v0, p0, Labcd/YH;->FH:Labcd/jF;

    new-instance v0, Labcd/YJ;

    invoke-direct {v0, p1}, Labcd/YJ;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/YH;->DW:Labcd/YJ;

    iget-object v0, p0, Labcd/YH;->DW:Labcd/YJ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Z)V

    return-void
.end method

.method public static DW(Labcd/UE;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/16 v8, 0x5c

    const/16 v5, 0x3a

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v2, 0x2f

    const-string v0, "./"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "../"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 v1, 0x0

    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Labcd/ME;->Zo()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Labcd/ME;->v5()Labcd/ME;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v1

    const-string v3, "branch"

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/UE;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "remote"

    invoke-virtual {v1, v3, v0, v4}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "origin"

    :cond_2
    invoke-virtual {p0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v1

    const-string v3, "remote"

    const-string v4, "url"

    invoke-virtual {v1, v3, v0, v4}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-ne v8, v1, :cond_3

    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move v1, v2

    move-object v3, v0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const-string v0, "./"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    const-string v0, "../"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ge v4, v7, :cond_9

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    move v4, v1

    move v0, v5

    :goto_3
    if-lt v4, v7, :cond_8

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move v1, v0

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->submoduleParentRemoteUrlInvalid:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v0, v1

    goto :goto_3

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public static FH(Labcd/UE;Ljava/lang/String;)Labcd/UE;
    .registers 3

    invoke-virtual {p0}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/YH;->j6(Ljava/io/File;Ljava/lang/String;)Labcd/UE;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Ljava/io/File;Ljava/lang/String;)Labcd/UE;
    .registers 6

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Labcd/VE;

    invoke-direct {v0}, Labcd/VE;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Labcd/bE;->j6(Z)Labcd/bE;

    check-cast v0, Labcd/VE;

    sget-object v3, Labcd/pK;->j6:Labcd/pK;

    invoke-virtual {v0, v3}, Labcd/bE;->j6(Labcd/pK;)Labcd/bE;

    check-cast v0, Labcd/VE;

    invoke-virtual {v0, v2}, Labcd/bE;->Zo(Ljava/io/File;)Labcd/bE;

    check-cast v0, Labcd/VE;

    invoke-virtual {v0}, Labcd/bE;->j6()Labcd/UE;
    :try_end_0
    .catch Labcd/pD; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static j6(Labcd/UE;)Labcd/YH;
    .registers 4

    new-instance v0, Labcd/YH;

    invoke-direct {v0, p0}, Labcd/YH;-><init>(Labcd/UE;)V

    new-instance v1, Labcd/RC;

    invoke-virtual {p0}, Labcd/UE;->U2()Labcd/KC;

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/RC;-><init>(Labcd/KC;)V

    invoke-virtual {v0, v1}, Labcd/YH;->j6(Labcd/TJ;)Labcd/YH;

    return-object v0
.end method

.method public static j6(Labcd/UE;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private we()V
    .registers 5

    iget-object v0, p0, Labcd/YH;->Hw:Labcd/FG;

    if-nez v0, :cond_0

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

    :cond_0
    return-void
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Labcd/YH;->FH:Labcd/jF;

    const-string v1, "submodule"

    iget-object v2, p0, Labcd/YH;->v5:Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {v0, v1, v2, v3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public EQ()Z
    .registers 4

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Labcd/YH;->DW:Labcd/YJ;

    invoke-virtual {v1}, Labcd/YJ;->EQ()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/YH;->v5:Ljava/lang/String;

    :goto_0
    return v0

    :cond_1
    sget-object v1, Labcd/rE;->v5:Labcd/rE;

    iget-object v2, p0, Labcd/YH;->DW:Labcd/YJ;

    invoke-virtual {v2, v0}, Labcd/YJ;->j6(I)Labcd/rE;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Labcd/YH;->DW:Labcd/YJ;

    invoke-virtual {v0}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/YH;->v5:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
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

    const-string v1, "submodule"

    iget-object v2, p0, Labcd/YH;->v5:Ljava/lang/String;

    const-string v3, "path"

    invoke-virtual {v0, v1, v2, v3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    const-string v1, "submodule"

    iget-object v2, p0, Labcd/YH;->v5:Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {v0, v1, v2, v3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    const-string v1, "submodule"

    iget-object v2, p0, Labcd/YH;->v5:Ljava/lang/String;

    const-string v3, "update"

    invoke-virtual {v0, v1, v2, v3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    if-eqz v0, :cond_0

    iget-object v1, p0, Labcd/YH;->j6:Labcd/UE;

    invoke-static {v1, v0}, Labcd/YH;->DW(Labcd/UE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Labcd/YH;->we()V

    iget-object v0, p0, Labcd/YH;->Hw:Labcd/FG;

    const-string v1, "submodule"

    iget-object v2, p0, Labcd/YH;->v5:Ljava/lang/String;

    const-string v3, "update"

    invoke-virtual {v0, v1, v2, v3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
