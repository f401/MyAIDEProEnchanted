.class abstract Labcd/RJ;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private j6(Ljava/util/Map;Ljava/io/BufferedReader;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;",
            "Ljava/io/BufferedReader;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_3
    :goto_3
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    return-void

    :cond_a
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_27

    const-string v4, "# pack-refs with:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v2, 0x11

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " peeled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_3

    :cond_27
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5e

    const/4 v6, 0x1

    if-ne v4, v5, :cond_5e

    if-eqz v0, :cond_52

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v3

    new-instance v4, Labcd/BE$b;

    sget-object v5, Labcd/ME$a;->FH:Labcd/ME$a;

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-direct {v4, v5, v6, v0, v3}, Labcd/BE$b;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;Labcd/yE;)V

    invoke-interface {v4}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v4

    goto :goto_3

    :cond_52
    new-instance p1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->peeledLineBeforeRef:Ljava/lang/String;

    invoke-direct {p1, p2}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5e
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_8f

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_7e

    new-instance v3, Labcd/BE$a;

    sget-object v5, Labcd/ME$a;->FH:Labcd/ME$a;

    invoke-direct {v3, v5, v0, v4}, Labcd/BE$a;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    goto :goto_85

    :cond_7e
    new-instance v3, Labcd/BE$c;

    sget-object v5, Labcd/ME$a;->FH:Labcd/ME$a;

    invoke-direct {v3, v5, v0, v4}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    :goto_85
    move-object v0, v3

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_8f
    new-instance p1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->unrecognizedRef:Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-static {p2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Labcd/yD;-><init>(Ljava/lang/String;)V

    goto :goto_a4

    :goto_a3
    throw p1

    :goto_a4
    goto :goto_a3
.end method


# virtual methods
.method abstract DW()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Labcd/RJ;",
            ">;"
        }
    .end annotation
.end method

.method DW(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "../"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/RJ;->j6(Ljava/lang/String;)V

    return-void
.end method

.method abstract FH()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method FH(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "../logs/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/RJ;->j6(Ljava/lang/String;)V

    return-void
.end method

.method abstract Hw()Labcd/HJ;
.end method

.method abstract Hw(Ljava/lang/String;)Labcd/RJ$a;
.end method

.method VH(Ljava/lang/String;)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Labcd/RJ;",
            ">;"
        }
    .end annotation

    const-string v0, "/"

    invoke-virtual {p0, p1}, Labcd/RJ;->Zo(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p1

    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_b
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_33

    if-nez v2, :cond_15

    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :cond_15
    :try_start_15
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2b
    invoke-virtual {p0, v2}, Labcd/RJ;->v5(Ljava/lang/String;)Labcd/RJ;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_33

    goto :goto_b

    :catchall_33
    move-exception v0

    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    goto :goto_39

    :goto_38
    throw v0

    :goto_39
    goto :goto_38
.end method

.method Zo(Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 5

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1}, Labcd/RJ;->Hw(Ljava/lang/String;)Labcd/RJ$a;

    move-result-object p1

    iget-object p1, p1, Labcd/RJ$a;->j6:Ljava/io/InputStream;

    sget-object v2, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method j6(Ljava/lang/String;Labcd/LE;Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 6

    new-instance p2, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p3

    iget-object p3, p3, Lorg/eclipse/jgit/JGitText;->writingNotSupported:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method abstract j6()V
.end method

.method j6(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->deletingNotSupported:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method j6(Ljava/lang/String;Labcd/yE;)V
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {p2, v0}, Labcd/YD;->DW(Ljava/io/OutputStream;)V

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "../"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Labcd/RJ;->j6(Ljava/lang/String;[B)V

    return-void
.end method

.method j6(Ljava/lang/String;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Labcd/RJ;->j6(Ljava/lang/String;Labcd/LE;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_c
    move-exception p2

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw p2
.end method

.method j6(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "info/packs"

    invoke-virtual {p0, v0, p1}, Labcd/RJ;->j6(Ljava/lang/String;[B)V

    return-void

    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "P "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9
.end method

.method protected j6(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "../packed-refs"

    invoke-virtual {p0, v0}, Labcd/RJ;->Zo(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_6} :catch_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_12

    :try_start_6
    invoke-direct {p0, p1, v0}, Labcd/RJ;->j6(Ljava/util/Map;Ljava/io/BufferedReader;)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_24

    :catchall_d
    move-exception p1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw p1
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_12} :catch_23
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    move-exception p1

    new-instance v0, Labcd/yD;

    invoke-virtual {p0}, Labcd/RJ;->Hw()Labcd/HJ;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->errorInPackedRefs:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_23
    move-exception p1

    :goto_24
    return-void
.end method

.method abstract v5(Ljava/lang/String;)Labcd/RJ;
.end method
