.class public Labcd/FG;
.super Labcd/jF;


# instance fields
.field private final VH:Labcd/pK;

.field private final Zo:Ljava/io/File;

.field private volatile gn:Labcd/LG;

.field private volatile u7:Labcd/yE;


# direct methods
.method public constructor <init>(Labcd/gE;Ljava/io/File;Labcd/pK;)V
    .registers 5

    invoke-direct {p0, p1}, Labcd/jF;-><init>(Labcd/gE;)V

    iput-object p2, p0, Labcd/FG;->Zo:Ljava/io/File;

    iput-object p3, p0, Labcd/FG;->VH:Labcd/pK;

    sget-object v0, Labcd/LG;->j6:Labcd/LG;

    iput-object v0, p0, Labcd/FG;->gn:Labcd/LG;

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v0

    iput-object v0, p0, Labcd/FG;->u7:Labcd/yE;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Labcd/pK;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Labcd/FG;-><init>(Labcd/gE;Ljava/io/File;Labcd/pK;)V

    return-void
.end method

.method private static j6([B)Labcd/yE;
    .registers 2

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected FH()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public VH()Z
    .registers 3

    iget-object v0, p0, Labcd/FG;->gn:Labcd/LG;

    invoke-virtual {p0}, Labcd/FG;->Zo()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/LG;->j6(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public final Zo()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Labcd/FG;->Zo:Ljava/io/File;

    return-object v0
.end method

.method public gn()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Labcd/FG;->gn:Labcd/LG;

    invoke-virtual {p0}, Labcd/FG;->Zo()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Labcd/FG;->Zo()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Labcd/BK;->j6(Ljava/io/File;)[B

    move-result-object v2

    invoke-static {v2}, Labcd/FG;->j6([B)Labcd/yE;

    move-result-object v3

    iget-object v4, p0, Labcd/FG;->u7:Labcd/yE;

    invoke-virtual {v4, v3}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v1}, Labcd/LG;->j6(Labcd/LG;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Labcd/LG;->DW(Labcd/LG;)V

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Labcd/FG;->gn:Labcd/LG;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Labcd/XC; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Labcd/FG;->j6()V

    iput-object v1, p0, Labcd/FG;->gn:Labcd/LG;

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {v2}, Labcd/IK;->j6([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/gE;->j6(Ljava/lang/String;)V

    iput-object v1, p0, Labcd/FG;->gn:Labcd/LG;

    iput-object v3, p0, Labcd/FG;->u7:Labcd/yE;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Labcd/XC; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotReadFile:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Labcd/FG;->Zo()Ljava/io/File;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotReadFile:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Labcd/FG;->Zo()Ljava/io/File;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/XC;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public j6()V
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Labcd/FG;->j6([B)Labcd/yE;

    move-result-object v0

    iput-object v0, p0, Labcd/FG;->u7:Labcd/yE;

    invoke-super {p0}, Labcd/gE;->j6()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/FG;->Zo()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()V
    .registers 7

    invoke-virtual {p0}, Labcd/gE;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Labcd/WG;

    invoke-virtual {p0}, Labcd/FG;->Zo()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Labcd/FG;->VH:Labcd/pK;

    invoke-direct {v1, v2, v3}, Labcd/WG;-><init>(Ljava/io/File;Labcd/pK;)V

    invoke-virtual {v1}, Labcd/WG;->Hw()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Labcd/WG;->DW(Z)V

    invoke-virtual {v1, v0}, Labcd/WG;->j6([B)V

    invoke-virtual {v1}, Labcd/WG;->j6()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Labcd/WG;->v5()V

    invoke-virtual {v1}, Labcd/WG;->DW()Labcd/LG;

    move-result-object v1

    iput-object v1, p0, Labcd/FG;->gn:Labcd/LG;

    invoke-static {v0}, Labcd/FG;->j6([B)Labcd/yE;

    move-result-object v0

    iput-object v0, p0, Labcd/FG;->u7:Labcd/yE;

    invoke-virtual {p0}, Labcd/gE;->DW()V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotCommitWriteTo:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Labcd/FG;->Zo()Ljava/io/File;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Labcd/WG;->v5()V

    throw v0

    :cond_1
    new-instance v0, Labcd/dD;

    invoke-virtual {p0}, Labcd/FG;->Zo()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/dD;-><init>(Ljava/io/File;)V

    throw v0
.end method
