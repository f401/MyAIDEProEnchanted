.class Labcd/hI;
.super Labcd/bI;


# instance fields
.field private final Hw:Labcd/jJ;

.field private VH:Ljava/lang/String;

.field final Zo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Labcd/yE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Labcd/kH;

.field v5:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Labcd/jJ;Ljava/io/InputStream;)V
    .registers 5

    invoke-direct {p0}, Labcd/bI;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/hI;->Zo:Ljava/util/Map;

    iput-object p1, p0, Labcd/hI;->Hw:Labcd/jJ;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    :try_start_13
    invoke-direct {p0}, Labcd/hI;->tp()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1e

    invoke-direct {p0}, Labcd/hI;->u7()V

    return-void

    :cond_1e
    new-instance p2, Labcd/yD;

    iget-object p1, p1, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->notABundle:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw p2
    :try_end_2c
    .catch Labcd/yD; {:try_start_13 .. :try_end_2c} :catch_50
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2c} :catch_3e
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception p1

    invoke-virtual {p0}, Labcd/hI;->close()V

    new-instance p2, Labcd/yD;

    iget-object v0, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v0, v0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3e
    move-exception p1

    invoke-virtual {p0}, Labcd/hI;->close()V

    new-instance p2, Labcd/yD;

    iget-object v0, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v0, v0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_50
    move-exception p1

    invoke-virtual {p0}, Labcd/hI;->close()V

    throw p1
.end method

.method private DW(Ljava/lang/String;)Labcd/nD;
    .registers 7

    new-instance v0, Labcd/nD;

    iget-object v1, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v1, v1, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->duplicateAdvertisementsOf:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Labcd/nD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    return-object v0
.end method

.method private EQ()V
    .registers 11

    iget-object v0, p0, Labcd/hI;->Zo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Labcd/qG;

    iget-object v1, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v1, v1, Labcd/jJ;->v5:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/qG;-><init>(Labcd/UE;)V

    :try_start_12
    const-string v1, "PREREQ"

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v1

    const-string v2, "SEEN"

    invoke-virtual {v0, v2}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Labcd/hI;->Zo:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_32
    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_cd

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c3

    iget-object v5, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v5, v5, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v5}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_af

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5
    :try_end_58
    .catchall {:try_start_12 .. :try_end_58} :catchall_116

    :cond_58
    :try_start_58
    invoke-virtual {v0}, Labcd/qG;->tp()Labcd/dG;

    move-result-object v6

    if-nez v6, :cond_5f

    goto :goto_6c

    :cond_5f
    invoke-virtual {v6, v1}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v7

    if-eqz v7, :cond_58

    invoke-virtual {v6, v2}, Labcd/iG;->j6(Labcd/fG;)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_68} :catch_9e
    .catchall {:try_start_58 .. :try_end_68} :catchall_116

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_58

    :goto_6c
    if-lez v5, :cond_9a

    :try_start_6e
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_72
    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/iG;

    invoke-virtual {v4, v2}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v5

    if-nez v5, :cond_72

    iget-object v5, p0, Labcd/hI;->Zo:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    :cond_90
    new-instance v1, Labcd/eD;

    iget-object v2, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v2, v2, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-direct {v1, v2, v3}, Labcd/eD;-><init>(Labcd/HJ;Ljava/util/Map;)V

    throw v1
    :try_end_9a
    .catchall {:try_start_6e .. :try_end_9a} :catchall_116

    :cond_9a
    invoke-virtual {v0}, Labcd/qG;->EQ()V

    return-void

    :catch_9e
    move-exception v1

    :try_start_9f
    new-instance v2, Labcd/yD;

    iget-object v3, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v3, v3, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->cannotReadObject:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_af
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/ME;
    :try_end_b5
    .catchall {:try_start_9f .. :try_end_b5} :catchall_116

    :try_start_b5
    invoke-interface {v6}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v6

    invoke-virtual {v0, v6}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v6

    invoke-virtual {v0, v6}, Labcd/qG;->DW(Labcd/dG;)V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_c0} :catch_c1
    .catchall {:try_start_b5 .. :try_end_c0} :catchall_116

    goto :goto_4e

    :catch_c1
    move-exception v6

    goto :goto_4e

    :cond_c3
    :try_start_c3
    new-instance v1, Labcd/eD;

    iget-object v2, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v2, v2, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-direct {v1, v2, v3}, Labcd/eD;-><init>(Labcd/HJ;Ljava/util/Map;)V

    throw v1

    :cond_cd
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/yE;
    :try_end_d9
    .catchall {:try_start_c3 .. :try_end_d9} :catchall_116

    :try_start_d9
    invoke-virtual {v0, v7}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v8

    invoke-virtual {v8, v1}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v9

    if-nez v9, :cond_32

    invoke-virtual {v8, v1}, Labcd/iG;->j6(Labcd/fG;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e9
    .catch Labcd/fD; {:try_start_d9 .. :try_end_e9} :catch_10a
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_e9} :catch_eb
    .catchall {:try_start_d9 .. :try_end_e9} :catchall_116

    goto/16 :goto_32

    :catch_eb
    move-exception v1

    :try_start_ec
    new-instance v2, Labcd/yD;

    iget-object v3, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v3, v3, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->cannotReadCommit:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v7}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_10a
    move-exception v8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_114
    .catchall {:try_start_ec .. :try_end_114} :catchall_116

    goto/16 :goto_32

    :catchall_116
    move-exception v1

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    goto :goto_11c

    :goto_11b
    throw v1

    :goto_11c
    goto :goto_11b
.end method

.method private j6([B)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    iget-object v0, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    const/16 v3, 0xa

    if-ge v2, v0, :cond_1a

    aget-byte v4, p1, v2

    if-ne v4, v3, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1a
    :goto_1a
    iget-object v4, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    iget-object v4, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    if-ge v2, v0, :cond_32

    aget-byte v0, p1, v2

    if-ne v0, v3, :cond_32

    iget-object v0, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    const-wide/16 v3, 0x1

    invoke-static {v0, v3, v4}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    :cond_32
    sget-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {v0, p1, v1, v2}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private tp()I
    .registers 4

    const/16 v0, 0x400

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Labcd/hI;->j6([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "# v2 git bundle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x2

    return v0

    :cond_12
    new-instance v0, Labcd/yD;

    iget-object v1, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v1, v1, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->notABundle:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0
.end method

.method private u7()V
    .registers 8

    const/16 v0, 0x400

    new-array v0, v0, [B

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_9
    invoke-direct {p0, v0}, Labcd/hI;->j6([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {p0, v1}, Labcd/aI;->j6(Ljava/util/Map;)V

    return-void

    :cond_17
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    const/16 v6, 0x29

    if-ne v4, v5, :cond_3f

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x2a

    if-le v4, v5, :cond_38

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    iget-object v4, p0, Labcd/hI;->Zo:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_3f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x28

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v2

    new-instance v3, Labcd/BE$c;

    sget-object v5, Labcd/ME$a;->v5:Labcd/ME$a;

    invoke-direct {v3, v5, v4, v2}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/ME;

    if-nez v2, :cond_61

    goto :goto_9

    :cond_61
    invoke-direct {p0, v4}, Labcd/hI;->DW(Ljava/lang/String;)Labcd/nD;

    move-result-object v0

    goto :goto_67

    :goto_66
    throw v0

    :goto_67
    goto :goto_66
.end method


# virtual methods
.method protected DW(Labcd/LE;Ljava/util/Collection;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Collection<",
            "Labcd/ME;",
            ">;",
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Labcd/hI;->EQ()V

    :try_start_3
    iget-object p1, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object p1, p1, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {p1}, Labcd/UE;->aM()Labcd/EE;

    move-result-object p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_49
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_b} :catch_37

    :try_start_b
    iget-object p2, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    invoke-virtual {p1, p2}, Labcd/EE;->j6(Ljava/io/InputStream;)Labcd/AI;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Labcd/AI;->j6(Z)V

    iget-object p3, p0, Labcd/hI;->Hw:Labcd/jJ;

    invoke-virtual {p3}, Labcd/jJ;->EQ()Z

    move-result p3

    invoke-virtual {p2, p3}, Labcd/AI;->v5(Z)V

    iget-object p3, p0, Labcd/hI;->VH:Ljava/lang/String;

    invoke-virtual {p2, p3}, Labcd/AI;->j6(Ljava/lang/String;)V

    sget-object p3, Labcd/vE;->j6:Labcd/vE;

    invoke-virtual {p2, p3}, Labcd/AI;->j6(Labcd/LE;)Labcd/kH;

    move-result-object p2

    iput-object p2, p0, Labcd/hI;->gn:Labcd/kH;

    invoke-virtual {p1}, Labcd/EE;->FH()V
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_32

    :try_start_2e
    invoke-virtual {p1}, Labcd/EE;->Hw()V

    return-void

    :catchall_32
    move-exception p2

    invoke-virtual {p1}, Labcd/EE;->Hw()V

    throw p2
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_37} :catch_49
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_37} :catch_37

    :catch_37
    move-exception p1

    invoke-virtual {p0}, Labcd/hI;->close()V

    new-instance p2, Labcd/yD;

    iget-object p3, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object p3, p3, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_49
    move-exception p1

    invoke-virtual {p0}, Labcd/hI;->close()V

    new-instance p2, Labcd/yD;

    iget-object p3, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object p3, p3, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public Hw()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Labcd/kH;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/hI;->gn:Labcd/kH;

    if-eqz v0, :cond_9

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception v0

    iput-object v1, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    throw v0

    :catch_d
    move-exception v0

    :goto_e
    iput-object v1, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    :cond_10
    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Labcd/hI;->VH:Ljava/lang/String;

    return-void
.end method

.method public v5()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
