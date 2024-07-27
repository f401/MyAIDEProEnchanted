.class Labcd/hI;
.super Labcd/bI;


# instance fields
.field private final Hw:Labcd/jJ;

.field private VH:Ljava/lang/String;

.field final Zo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
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
    .registers 7

    invoke-direct {p0}, Labcd/bI;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/hI;->Zo:Ljava/util/Map;

    iput-object p1, p0, Labcd/hI;->Hw:Labcd/jJ;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    :try_start_0
    invoke-direct {p0}, Labcd/hI;->tp()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Labcd/hI;->u7()V

    return-void

    :cond_0
    new-instance v0, Labcd/yD;

    iget-object v1, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v1, v1, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->notABundle:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Labcd/yD; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Labcd/hI;->close()V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Labcd/hI;->close()V

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v2, v2, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Labcd/hI;->close()V

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v2, v2, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/nD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    return-object v0
.end method

.method private EQ()V
    .registers 11

    iget-object v0, p0, Labcd/hI;->Zo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Labcd/qG;

    iget-object v0, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v0, v0, Labcd/jJ;->v5:Labcd/UE;

    invoke-direct {v2, v0}, Labcd/qG;-><init>(Labcd/UE;)V

    :try_start_0
    const-string v0, "PREREQ"

    invoke-virtual {v2, v0}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v3

    const-string v0, "SEEN"

    invoke-virtual {v2, v0}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Labcd/hI;->Zo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v0, v0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Labcd/qG;->tp()Labcd/dG;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-nez v1, :cond_4

    :goto_3
    if-lez v0, :cond_6

    :try_start_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iG;

    invoke-virtual {v0, v4}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Labcd/hI;->Zo:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Labcd/qG;->EQ()V

    throw v0

    :cond_4
    :try_start_3
    invoke-virtual {v1, v3}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1, v4}, Labcd/iG;->j6(Labcd/fG;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    goto :goto_3

    :cond_5
    :try_start_4
    new-instance v0, Labcd/eD;

    iget-object v1, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v1, v1, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-direct {v0, v1, v5}, Labcd/eD;-><init>(Labcd/HJ;Ljava/util/Map;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    invoke-virtual {v2}, Labcd/qG;->EQ()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    new-instance v1, Labcd/yD;

    iget-object v3, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v3, v3, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->cannotReadObject:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/qG;->DW(Labcd/dG;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_8
    :try_start_7
    new-instance v0, Labcd/eD;

    iget-object v1, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v1, v1, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-direct {v0, v1, v5}, Labcd/eD;-><init>(Labcd/HJ;Ljava/util/Map;)V

    throw v0

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/yE;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v2, v1}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v8

    invoke-virtual {v8, v3}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8, v3}, Labcd/iG;->j6(Labcd/fG;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Labcd/fD; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v8

    :try_start_9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :catch_3
    move-exception v0

    new-instance v3, Labcd/yD;

    iget-object v4, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v4, v4, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v5

    iget-object v5, v5, Lorg/eclipse/jgit/JGitText;->cannotReadCommit:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private j6([B)Ljava/lang/String;
    .registers 9

    const/16 v6, 0xa

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    iget-object v0, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p1, v0

    if-ne v3, v6, :cond_2

    :cond_0
    iget-object v3, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    iget-object v3, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    if-ge v0, v2, :cond_1

    aget-byte v2, p1, v0

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    const-wide/16 v4, 0x1

    invoke-static {v2, v4, v5}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    :cond_1
    sget-object v2, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-static {v2, p1, v1, v0}, Labcd/IK;->j6(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private tp()I
    .registers 4

    const-string v0, "# v2 git bundle"

    const/16 v1, 0x400

    new-array v1, v1, [B

    invoke-direct {p0, v1}, Labcd/hI;->j6([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
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
    .registers 10

    const/16 v8, 0x2a

    const/16 v7, 0x29

    const/4 v6, 0x0

    const/16 v0, 0x400

    new-array v1, v0, [B

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Labcd/hI;->j6([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Labcd/aI;->j6(Ljava/util/Map;)V

    return-void

    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v3, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_2

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v3, p0, Labcd/hI;->Zo:Ljava/util/Map;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x28

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    new-instance v3, Labcd/BE$c;

    sget-object v5, Labcd/ME$a;->v5:Labcd/ME$a;

    invoke-direct {v3, v5, v4, v0}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    invoke-virtual {v2, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    if-eqz v0, :cond_0

    invoke-direct {p0, v4}, Labcd/hI;->DW(Ljava/lang/String;)Labcd/nD;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected DW(Labcd/LE;Ljava/util/Collection;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Collection",
            "<",
            "Labcd/ME;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Labcd/hI;->EQ()V

    :try_start_0
    iget-object v0, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v0, v0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->aM()Labcd/EE;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Labcd/EE;->j6(Ljava/io/InputStream;)Labcd/AI;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Labcd/AI;->j6(Z)V

    iget-object v2, p0, Labcd/hI;->Hw:Labcd/jJ;

    invoke-virtual {v2}, Labcd/jJ;->EQ()Z

    move-result v2

    invoke-virtual {v0, v2}, Labcd/AI;->v5(Z)V

    iget-object v2, p0, Labcd/hI;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Labcd/AI;->j6(Ljava/lang/String;)V

    sget-object v2, Labcd/vE;->j6:Labcd/vE;

    invoke-virtual {v0, v2}, Labcd/AI;->j6(Labcd/LE;)Labcd/kH;

    move-result-object v0

    iput-object v0, p0, Labcd/hI;->gn:Labcd/kH;

    invoke-virtual {v1}, Labcd/EE;->FH()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Labcd/EE;->Hw()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Labcd/EE;->Hw()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Labcd/hI;->close()V

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v2, v2, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Labcd/hI;->close()V

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/hI;->Hw:Labcd/jJ;

    iget-object v2, v2, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public Hw()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Labcd/kH;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/hI;->gn:Labcd/kH;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public close()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v1, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Labcd/hI;->v5:Ljava/io/InputStream;

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
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
