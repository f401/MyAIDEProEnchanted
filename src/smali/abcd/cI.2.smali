.class abstract Labcd/cI;
.super Labcd/aI;


# instance fields
.field protected EQ:Ljava/io/OutputStream;

.field protected final Hw:Labcd/UE;

.field protected J0:Labcd/EI;

.field protected J8:Z

.field private final QX:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected VH:Labcd/_K;

.field protected Ws:Z

.field protected final XL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field protected final Zo:Labcd/jJ;

.field protected gn:Labcd/aL;

.field protected tp:Ljava/io/InputStream;

.field private u7:Labcd/VK;

.field protected final v5:Labcd/HJ;

.field protected we:Labcd/DI;


# direct methods
.method constructor <init>(Labcd/BI;)V
    .registers 4

    invoke-direct {p0}, Labcd/aI;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/cI;->QX:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/cI;->XL:Ljava/util/Set;

    check-cast p1, Labcd/jJ;

    iput-object p1, p0, Labcd/cI;->Zo:Labcd/jJ;

    iget-object v0, p0, Labcd/cI;->Zo:Labcd/jJ;

    iget-object v1, v0, Labcd/jJ;->v5:Labcd/UE;

    iput-object v1, p0, Labcd/cI;->Hw:Labcd/UE;

    iget-object v0, v0, Labcd/jJ;->Zo:Labcd/HJ;

    iput-object v0, p0, Labcd/cI;->v5:Labcd/HJ;

    return-void
.end method

.method private FH(Ljava/lang/String;)Labcd/nD;
    .registers 7

    new-instance v0, Labcd/nD;

    iget-object v1, p0, Labcd/cI;->v5:Labcd/HJ;

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

.method private we()V
    .registers 10

    const/4 v2, 0x0

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Labcd/cI;->we:Labcd/DI;

    invoke-virtual {v0}, Labcd/DI;->DW()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sget-object v1, Labcd/DI;->j6:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v3}, Labcd/aI;->j6(Ljava/util/Map;)V

    return-void

    :cond_1
    const-string v1, "ERR "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v1, v2

    :goto_1
    if-lt v1, v6, :cond_4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/16 v1, 0x29

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "capabilities^{}"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    const/16 v4, 0x28

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v4

    const-string v0, ".have"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Labcd/cI;->XL:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    aget-object v7, v5, v1

    iget-object v8, p0, Labcd/cI;->QX:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "^{}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v5

    if-nez v5, :cond_6

    new-instance v5, Labcd/BE$b;

    sget-object v6, Labcd/ME$a;->v5:Labcd/ME$a;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-direct {v5, v6, v1, v0, v4}, Labcd/BE$b;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;Labcd/yE;)V

    invoke-virtual {v3, v1, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "^{}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/cI;->FH(Ljava/lang/String;)Labcd/nD;

    move-result-object v0

    throw v0

    :cond_7
    new-instance v0, Labcd/nD;

    iget-object v3, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->advertisementCameBefore:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    const/4 v2, 0x1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Labcd/nD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Labcd/BE$a;

    sget-object v5, Labcd/ME$a;->v5:Labcd/ME$a;

    invoke-direct {v0, v5, v1, v4}, Labcd/BE$a;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Labcd/cI;->FH(Ljava/lang/String;)Labcd/nD;

    move-result-object v0

    throw v0

    :cond_9
    new-instance v1, Labcd/oD;

    iget-object v2, p0, Labcd/cI;->v5:Labcd/HJ;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Labcd/oD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Labcd/cI;->tp()Labcd/yD;

    move-result-object v0

    throw v0

    :cond_a
    throw v0
.end method


# virtual methods
.method protected DW(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Labcd/cI;->QX:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected EQ()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Labcd/cI;->we()V
    :try_end_0
    .catch Labcd/yD; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Labcd/cI;->close()V

    new-instance v1, Labcd/yD;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Labcd/cI;->close()V

    new-instance v1, Labcd/yD;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Labcd/cI;->close()V

    throw v0
.end method

.method public close()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    :try_start_0
    iget-boolean v0, p0, Labcd/cI;->J8:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/cI;->J8:Z

    iget-object v0, p0, Labcd/cI;->J0:Labcd/EI;

    invoke-virtual {v0}, Labcd/EI;->j6()V

    :cond_0
    iget-object v0, p0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v1, p0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    iput-object v1, p0, Labcd/cI;->J0:Labcd/EI;

    :cond_1
    iget-object v0, p0, Labcd/cI;->tp:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    iput-object v1, p0, Labcd/cI;->tp:Ljava/io/InputStream;

    iput-object v1, p0, Labcd/cI;->we:Labcd/DI;

    :cond_2
    iget-object v0, p0, Labcd/cI;->u7:Labcd/VK;

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Labcd/VK;->DW()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iput-object v1, p0, Labcd/cI;->u7:Labcd/VK;

    iput-object v1, p0, Labcd/cI;->VH:Labcd/_K;

    iput-object v1, p0, Labcd/cI;->gn:Labcd/aL;

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    iput-object v1, p0, Labcd/cI;->J0:Labcd/EI;

    throw v0

    :catchall_1
    move-exception v0

    iput-object v1, p0, Labcd/cI;->tp:Ljava/io/InputStream;

    iput-object v1, p0, Labcd/cI;->we:Labcd/DI;

    throw v0

    :catchall_2
    move-exception v0

    iput-object v1, p0, Labcd/cI;->u7:Labcd/VK;

    iput-object v1, p0, Labcd/cI;->VH:Labcd/_K;

    iput-object v1, p0, Labcd/cI;->gn:Labcd/aL;

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected final j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6

    iget-object v0, p0, Labcd/cI;->Zo:Labcd/jJ;

    invoke-virtual {v0}, Labcd/jJ;->gn()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-Timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/VK;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Labcd/VK;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Labcd/cI;->u7:Labcd/VK;

    new-instance v1, Labcd/_K;

    iget-object v2, p0, Labcd/cI;->u7:Labcd/VK;

    invoke-direct {v1, p1, v2}, Labcd/_K;-><init>(Ljava/io/InputStream;Labcd/VK;)V

    iput-object v1, p0, Labcd/cI;->VH:Labcd/_K;

    new-instance v1, Labcd/aL;

    iget-object v2, p0, Labcd/cI;->u7:Labcd/VK;

    invoke-direct {v1, p2, v2}, Labcd/aL;-><init>(Ljava/io/OutputStream;Labcd/VK;)V

    iput-object v1, p0, Labcd/cI;->gn:Labcd/aL;

    iget-object v1, p0, Labcd/cI;->VH:Labcd/_K;

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v1, v0}, Labcd/_K;->j6(I)V

    iget-object v1, p0, Labcd/cI;->gn:Labcd/aL;

    invoke-virtual {v1, v0}, Labcd/aL;->j6(I)V

    iget-object p1, p0, Labcd/cI;->VH:Labcd/_K;

    iget-object p2, p0, Labcd/cI;->gn:Labcd/aL;

    :cond_0
    iput-object p1, p0, Labcd/cI;->tp:Ljava/io/InputStream;

    iput-object p2, p0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    new-instance v0, Labcd/DI;

    iget-object v1, p0, Labcd/cI;->tp:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Labcd/DI;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Labcd/cI;->we:Labcd/DI;

    new-instance v0, Labcd/EI;

    iget-object v1, p0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Labcd/EI;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Labcd/cI;->J0:Labcd/EI;

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/cI;->J8:Z

    return-void
.end method

.method protected j6(Ljava/lang/StringBuilder;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0, p2}, Labcd/cI;->DW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected tp()Labcd/yD;
    .registers 4

    new-instance v0, Labcd/hD;

    iget-object v1, p0, Labcd/cI;->v5:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->notFound:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Labcd/hD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    return-object v0
.end method

.method protected u7()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Labcd/cI;->J8:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Labcd/cI;->J8:Z

    iget-object v0, p0, Labcd/cI;->J0:Labcd/EI;

    invoke-virtual {v0}, Labcd/EI;->j6()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iput-object v1, p0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    iput-object v1, p0, Labcd/cI;->J0:Labcd/EI;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Labcd/cI;->EQ:Ljava/io/OutputStream;

    iput-object v1, p0, Labcd/cI;->J0:Labcd/EI;

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
