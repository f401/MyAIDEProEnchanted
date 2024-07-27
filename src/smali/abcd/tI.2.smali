.class public abstract Labcd/tI;
.super Labcd/cJ;


# instance fields
.field private final DW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jcraft/jsch/JSch;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Lcom/jcraft/jsch/JSch;

.field private Hw:Labcd/yI;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/cJ;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/tI;->DW:Ljava/util/Map;

    return-void
.end method

.method private static DW(Lcom/jcraft/jsch/JSch;Labcd/pK;)V
    .registers 6

    invoke-virtual {p1}, Labcd/pK;->Zo()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, ".ssh"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "known_hosts"

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/JSch;->j6(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private j6(Labcd/kI;Labcd/pK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILabcd/yI$a;)Lcom/jcraft/jsch/Session;
    .registers 14

    move-object v0, p0

    move-object v1, p7

    move-object v2, p3

    move-object v3, p5

    move v4, p6

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Labcd/tI;->j6(Labcd/yI$a;Ljava/lang/String;Ljava/lang/String;ILabcd/pK;)Lcom/jcraft/jsch/Session;

    move-result-object v0

    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Lcom/jcraft/jsch/Session;->v5(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p7}, Labcd/yI$a;->v5()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "StrictHostKeyChecking"

    invoke-virtual {v0, v2, v1}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p7}, Labcd/yI$a;->Hw()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "PreferredAuthentications"

    invoke-virtual {v0, v2, v1}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p7}, Labcd/yI$a;->VH()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Labcd/kI;->DW()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    new-instance v1, Labcd/lI;

    invoke-direct {v1, v0, p1}, Labcd/lI;-><init>(Lcom/jcraft/jsch/Session;Labcd/kI;)V

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/UserInfo;)V

    :cond_4
    invoke-virtual {p0, p7, v0}, Labcd/tI;->j6(Labcd/yI$a;Lcom/jcraft/jsch/Session;)V

    return-object v0
.end method

.method private static j6(Lcom/jcraft/jsch/JSch;Labcd/pK;)V
    .registers 5

    invoke-virtual {p1}, Labcd/pK;->Zo()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, ".ssh"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v2, "identity"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Labcd/tI;->j6(Lcom/jcraft/jsch/JSch;Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    const-string v2, "id_rsa"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Labcd/tI;->j6(Lcom/jcraft/jsch/JSch;Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    const-string v2, "id_dsa"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Labcd/tI;->j6(Lcom/jcraft/jsch/JSch;Ljava/io/File;)V

    goto :goto_0
.end method

.method private static j6(Lcom/jcraft/jsch/JSch;Ljava/io/File;)V
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/JSch;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public j6(Labcd/HJ;Labcd/kI;Labcd/pK;I)Labcd/ZI;
    .registers 14

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Labcd/HJ;->v5()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    :try_start_1
    iget-object v1, p0, Labcd/tI;->Hw:Labcd/yI;

    if-nez v1, :cond_0

    invoke-static {p3}, Labcd/yI;->j6(Labcd/pK;)Labcd/yI;

    move-result-object v1

    iput-object v1, p0, Labcd/tI;->Hw:Labcd/yI;

    :cond_0
    iget-object v1, p0, Labcd/tI;->Hw:Labcd/yI;

    invoke-virtual {v1, v0}, Labcd/yI;->j6(Ljava/lang/String;)Labcd/yI$a;

    move-result-object v7

    invoke-virtual {v7}, Labcd/yI$a;->j6()Ljava/lang/String;

    move-result-object v5

    if-gtz v6, :cond_1

    invoke-virtual {v7}, Labcd/yI$a;->FH()I

    move-result v6

    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v7}, Labcd/yI$a;->Zo()Ljava/lang/String;

    move-result-object v3

    :cond_2
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Labcd/tI;->j6(Labcd/kI;Labcd/pK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILabcd/yI$a;)Lcom/jcraft/jsch/Session;

    move-result-object v0

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->tp()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    if-lt v8, v1, :cond_4

    :cond_3
    new-instance v1, Labcd/vI;

    invoke-direct {v1, v0, p1}, Labcd/vI;-><init>(Lcom/jcraft/jsch/Session;Labcd/HJ;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_4
    :try_start_2
    invoke-virtual {v0, p4}, Lcom/jcraft/jsch/Session;->j6(I)V
    :try_end_2
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->j6()V

    if-eqz p2, :cond_5

    invoke-virtual {v1}, Lcom/jcraft/jsch/JSchException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Auth fail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, p1}, Labcd/kI;->j6(Labcd/HJ;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Labcd/tI;->j6(Labcd/kI;Labcd/pK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILabcd/yI$a;)Lcom/jcraft/jsch/Session;

    move-result-object v0

    goto :goto_1

    :cond_5
    throw v1
    :try_end_3
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-nez v2, :cond_7

    instance-of v2, v1, Ljava/net/ConnectException;

    if-eqz v2, :cond_6

    new-instance v0, Labcd/yD;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_5
    new-instance v1, Labcd/yD;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    new-instance v0, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unknownHost:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method protected j6(Labcd/pK;)Lcom/jcraft/jsch/JSch;
    .registers 3

    new-instance v0, Lcom/jcraft/jsch/JSch;

    invoke-direct {v0}, Lcom/jcraft/jsch/JSch;-><init>()V

    invoke-static {v0, p1}, Labcd/tI;->DW(Lcom/jcraft/jsch/JSch;Labcd/pK;)V

    invoke-static {v0, p1}, Labcd/tI;->j6(Lcom/jcraft/jsch/JSch;Labcd/pK;)V

    return-object v0
.end method

.method protected j6(Labcd/yI$a;Labcd/pK;)Lcom/jcraft/jsch/JSch;
    .registers 7

    iget-object v0, p0, Labcd/tI;->FH:Lcom/jcraft/jsch/JSch;

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Labcd/tI;->j6(Labcd/pK;)Lcom/jcraft/jsch/JSch;

    move-result-object v0

    iput-object v0, p0, Labcd/tI;->FH:Lcom/jcraft/jsch/JSch;

    iget-object v0, p0, Labcd/tI;->FH:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->FH()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Labcd/yI$a;->DW()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Labcd/tI;->FH:Lcom/jcraft/jsch/JSch;

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Labcd/tI;->DW:Ljava/util/Map;

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Labcd/tI;->FH:Lcom/jcraft/jsch/JSch;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Labcd/tI;->DW:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/JSch;

    if-nez v0, :cond_1

    new-instance v0, Lcom/jcraft/jsch/JSch;

    invoke-direct {v0}, Lcom/jcraft/jsch/JSch;-><init>()V

    iget-object v2, p0, Labcd/tI;->FH:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSch;->DW()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/JSch;->j6(Lcom/jcraft/jsch/HostKeyRepository;)V

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/JSch;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/tI;->DW:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected j6(Labcd/yI$a;Ljava/lang/String;Ljava/lang/String;ILabcd/pK;)Lcom/jcraft/jsch/Session;
    .registers 7

    invoke-virtual {p0, p1, p5}, Labcd/tI;->j6(Labcd/yI$a;Labcd/pK;)Lcom/jcraft/jsch/JSch;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/jcraft/jsch/JSch;->j6(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;

    move-result-object v0

    return-object v0
.end method

.method protected abstract j6(Labcd/yI$a;Lcom/jcraft/jsch/Session;)V
.end method
