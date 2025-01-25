.class public abstract Labcd/tI;
.super Labcd/cJ;


# instance fields
.field private final DW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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
    .registers 5

    invoke-virtual {p1}, Labcd/pK;->Zo()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, ".ssh"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "known_hosts"

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_15
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1a} :catch_28
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_26

    :try_start_1a
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/JSch;->j6(Ljava/io/InputStream;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_21

    :try_start_1d
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    goto :goto_29

    :catchall_21
    move-exception p0

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    throw p0
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_26} :catch_28
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_26} :catch_26

    :catch_26
    move-exception p0

    goto :goto_29

    :catch_28
    move-exception p0

    :goto_29
    return-void
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

    move-result-object p2

    if-eqz p4, :cond_f

    invoke-virtual {p2, p4}, Lcom/jcraft/jsch/Session;->v5(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p7}, Labcd/yI$a;->v5()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1a

    const-string p4, "StrictHostKeyChecking"

    invoke-virtual {p2, p4, p3}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {p7}, Labcd/yI$a;->Hw()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_25

    const-string p4, "PreferredAuthentications"

    invoke-virtual {p2, p4, p3}, Lcom/jcraft/jsch/Session;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    if-eqz p1, :cond_3b

    invoke-virtual {p7}, Labcd/yI$a;->VH()Z

    move-result p3

    if-eqz p3, :cond_33

    invoke-virtual {p1}, Labcd/kI;->DW()Z

    move-result p3

    if-nez p3, :cond_3b

    :cond_33
    new-instance p3, Labcd/lI;

    invoke-direct {p3, p2, p1}, Labcd/lI;-><init>(Lcom/jcraft/jsch/Session;Labcd/kI;)V

    invoke-virtual {p2, p3}, Lcom/jcraft/jsch/Session;->j6(Lcom/jcraft/jsch/UserInfo;)V

    :cond_3b
    invoke-virtual {p0, p7, p2}, Labcd/tI;->j6(Labcd/yI$a;Lcom/jcraft/jsch/Session;)V

    return-object p2
.end method

.method private static j6(Lcom/jcraft/jsch/JSch;Labcd/pK;)V
    .registers 4

    invoke-virtual {p1}, Labcd/pK;->Zo()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/io/File;

    const-string v1, ".ssh"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_32

    new-instance p1, Ljava/io/File;

    const-string v1, "identity"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, p1}, Labcd/tI;->j6(Lcom/jcraft/jsch/JSch;Ljava/io/File;)V

    new-instance p1, Ljava/io/File;

    const-string v1, "id_rsa"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, p1}, Labcd/tI;->j6(Lcom/jcraft/jsch/JSch;Ljava/io/File;)V

    new-instance p1, Ljava/io/File;

    const-string v1, "id_dsa"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, p1}, Labcd/tI;->j6(Lcom/jcraft/jsch/JSch;Ljava/io/File;)V

    :cond_32
    return-void
.end method

.method private static j6(Lcom/jcraft/jsch/JSch;Ljava/io/File;)V
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_f

    :try_start_6
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/JSch;->j6(Ljava/lang/String;)V
    :try_end_d
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    move-exception p0

    :cond_f
    :goto_f
    return-void
.end method


# virtual methods
.method public j6(Labcd/HJ;Labcd/kI;Labcd/pK;I)Labcd/ZI;
    .registers 23

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    monitor-enter p0

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Labcd/HJ;->v5()I

    move-result v2
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_c6

    :try_start_17
    iget-object v3, v9, Labcd/tI;->Hw:Labcd/yI;

    if-nez v3, :cond_21

    invoke-static/range {p3 .. p3}, Labcd/yI;->j6(Labcd/pK;)Labcd/yI;

    move-result-object v3

    iput-object v3, v9, Labcd/tI;->Hw:Labcd/yI;

    :cond_21
    iget-object v3, v9, Labcd/tI;->Hw:Labcd/yI;

    invoke-virtual {v3, v1}, Labcd/yI;->j6(Ljava/lang/String;)Labcd/yI$a;

    move-result-object v13

    invoke-virtual {v13}, Labcd/yI$a;->j6()Ljava/lang/String;

    move-result-object v14

    if-gtz v2, :cond_31

    invoke-virtual {v13}, Labcd/yI$a;->FH()I

    move-result v2

    :cond_31
    move v15, v2

    if-nez v0, :cond_38

    invoke-virtual {v13}, Labcd/yI$a;->Zo()Ljava/lang/String;

    move-result-object v0

    :cond_38
    move-object/from16 v16, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v16

    move-object v5, v12

    move-object v6, v14

    move v7, v15

    move-object v8, v13

    invoke-direct/range {v1 .. v8}, Labcd/tI;->j6(Labcd/kI;Labcd/pK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILabcd/yI$a;)Lcom/jcraft/jsch/Session;

    move-result-object v0

    const/4 v1, 0x0

    move-object v1, v0

    const/4 v8, 0x0

    :goto_4d
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->tp()Z

    move-result v0
    :try_end_51
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_17 .. :try_end_51} :catch_99
    .catchall {:try_start_17 .. :try_end_51} :catchall_c6

    if-nez v0, :cond_92

    const/4 v0, 0x3

    if-lt v8, v0, :cond_57

    goto :goto_92

    :cond_57
    move/from16 v7, p4

    :try_start_59
    invoke-virtual {v1, v7}, Lcom/jcraft/jsch/Session;->j6(I)V
    :try_end_5c
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_59 .. :try_end_5c} :catch_5f
    .catchall {:try_start_59 .. :try_end_5c} :catchall_c6

    move/from16 v17, v8

    goto :goto_8e

    :catch_5f
    move-exception v0

    move-object v2, v0

    :try_start_61
    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->j6()V

    if-eqz v11, :cond_91

    invoke-virtual {v2}, Lcom/jcraft/jsch/JSchException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_91

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Auth fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-virtual {v11, v10}, Labcd/kI;->j6(Labcd/HJ;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v16

    move-object v5, v12

    move-object v6, v14

    move v7, v15

    move/from16 v17, v8

    move-object v8, v13

    invoke-direct/range {v1 .. v8}, Labcd/tI;->j6(Labcd/kI;Labcd/pK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILabcd/yI$a;)Lcom/jcraft/jsch/Session;

    move-result-object v0

    move-object v1, v0

    :goto_8e
    add-int/lit8 v8, v17, 0x1

    goto :goto_4d

    :cond_91
    throw v2

    :cond_92
    :goto_92
    new-instance v0, Labcd/vI;

    invoke-direct {v0, v1, v10}, Labcd/vI;-><init>(Lcom/jcraft/jsch/Session;Labcd/HJ;)V
    :try_end_97
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_61 .. :try_end_97} :catch_99
    .catchall {:try_start_61 .. :try_end_97} :catchall_c6

    monitor-exit p0

    return-object v0

    :catch_99
    move-exception v0

    :try_start_9a
    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-nez v2, :cond_ba

    instance-of v2, v1, Ljava/net/ConnectException;

    if-eqz v2, :cond_b0

    new-instance v0, Labcd/yD;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0

    :cond_b0
    new-instance v1, Labcd/yD;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v10, v2, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_ba
    new-instance v0, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unknownHost:Ljava/lang/String;

    invoke-direct {v0, v10, v1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0
    :try_end_c6
    .catchall {:try_start_9a .. :try_end_c6} :catchall_c6

    :catchall_c6
    move-exception v0

    monitor-exit p0

    goto :goto_ca

    :goto_c9
    throw v0

    :goto_ca
    goto :goto_c9
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
    .registers 6

    iget-object v0, p0, Labcd/tI;->FH:Lcom/jcraft/jsch/JSch;

    if-nez v0, :cond_27

    invoke-virtual {p0, p2}, Labcd/tI;->j6(Labcd/pK;)Lcom/jcraft/jsch/JSch;

    move-result-object p2

    iput-object p2, p0, Labcd/tI;->FH:Lcom/jcraft/jsch/JSch;

    invoke-virtual {p2}, Lcom/jcraft/jsch/JSch;->FH()Ljava/util/Vector;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_27

    :cond_19
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Labcd/tI;->DW:Ljava/util/Map;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Labcd/tI;->FH:Lcom/jcraft/jsch/JSch;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_27
    :goto_27
    invoke-virtual {p1}, Labcd/yI$a;->DW()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_30

    iget-object p1, p0, Labcd/tI;->FH:Lcom/jcraft/jsch/JSch;

    return-object p1

    :cond_30
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Labcd/tI;->DW:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jcraft/jsch/JSch;

    if-nez p2, :cond_54

    new-instance p2, Lcom/jcraft/jsch/JSch;

    invoke-direct {p2}, Lcom/jcraft/jsch/JSch;-><init>()V

    iget-object v0, p0, Labcd/tI;->FH:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->DW()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/JSch;->j6(Lcom/jcraft/jsch/HostKeyRepository;)V

    invoke-virtual {p2, p1}, Lcom/jcraft/jsch/JSch;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/tI;->DW:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    return-object p2
.end method

.method protected j6(Labcd/yI$a;Ljava/lang/String;Ljava/lang/String;ILabcd/pK;)Lcom/jcraft/jsch/Session;
    .registers 6

    invoke-virtual {p0, p1, p5}, Labcd/tI;->j6(Labcd/yI$a;Labcd/pK;)Lcom/jcraft/jsch/JSch;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/jcraft/jsch/JSch;->j6(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;

    move-result-object p1

    return-object p1
.end method

.method protected abstract j6(Labcd/yI$a;Lcom/jcraft/jsch/Session;)V
.end method
