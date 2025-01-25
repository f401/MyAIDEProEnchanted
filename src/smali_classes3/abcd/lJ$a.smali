.class Labcd/lJ$a;
.super Labcd/RJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/lJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final DW:Ljava/lang/String;

.field final FH:Labcd/lJ;

.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Labcd/lJ;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-direct {p0}, Labcd/RJ;-><init>()V

    iput-object p2, p0, Labcd/lJ$a;->j6:Ljava/lang/String;

    iput-object p3, p0, Labcd/lJ$a;->DW:Ljava/lang/String;

    return-void
.end method

.method private gn(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_13
    iget-object v1, p0, Labcd/lJ$a;->DW:Ljava/lang/String;

    :goto_15
    const-string v3, "../"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_31
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_15
.end method

.method private j6(Labcd/ME;)Labcd/ME$a;
    .registers 3

    if-eqz p1, :cond_d

    invoke-interface {p1}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object p1

    sget-object v0, Labcd/ME$a;->FH:Labcd/ME$a;

    if-ne p1, v0, :cond_d

    sget-object p1, Labcd/ME$a;->Hw:Labcd/ME$a;

    return-object p1

    :cond_d
    sget-object p1, Labcd/ME$a;->DW:Labcd/ME$a;

    return-object p1
.end method

.method private j6(Ljava/util/TreeMap;Ljava/lang/String;)Labcd/ME;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Labcd/ME;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "../"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_11
    invoke-virtual {p0, v0}, Labcd/RJ;->Zo(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v4
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_15} :catch_b8
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_9f

    :try_start_15
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_9a

    :try_start_19
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_1c} :catch_b8
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_9f

    if-eqz v5, :cond_82

    const-string v0, "ref: "

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x5

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/ME;

    if-nez v2, :cond_37

    invoke-direct {p0, p1, v0}, Labcd/lJ$a;->j6(Ljava/util/TreeMap;Ljava/lang/String;)Labcd/ME;

    move-result-object v2

    :cond_37
    if-nez v2, :cond_40

    new-instance v2, Labcd/BE$c;

    sget-object v3, Labcd/ME$a;->j6:Labcd/ME$a;

    invoke-direct {v2, v3, v0, v1}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    :cond_40
    new-instance v0, Labcd/kF;

    invoke-direct {v0, p2, v2}, Labcd/kF;-><init>(Ljava/lang/String;Labcd/ME;)V

    :goto_45
    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_4d
    invoke-static {v5}, Labcd/yE;->DW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    new-instance v0, Labcd/BE$c;

    invoke-virtual {p1, p2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ME;

    invoke-direct {p0, v1}, Labcd/lJ$a;->j6(Labcd/ME;)Labcd/ME$a;

    move-result-object v1

    invoke-static {v5}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    goto :goto_45

    :cond_67
    new-instance p1, Labcd/yD;

    invoke-virtual {p0}, Labcd/lJ$a;->Hw()Labcd/HJ;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->transportExceptionBadRef:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v2

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw p1

    :cond_82
    new-instance p1, Labcd/yD;

    invoke-virtual {p0}, Labcd/lJ$a;->Hw()Labcd/HJ;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->transportExceptionEmptyRef:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw p1

    :catchall_9a
    move-exception p1

    :try_start_9b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    throw p1
    :try_end_9f
    .catch Ljava/io/FileNotFoundException; {:try_start_9b .. :try_end_9f} :catch_b8
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9f} :catch_9f

    :catch_9f
    move-exception p1

    new-instance p2, Labcd/yD;

    invoke-virtual {p0}, Labcd/lJ$a;->Hw()Labcd/HJ;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->transportExceptionReadRef:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v1, v0, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_b8
    move-exception p1

    return-object v1
.end method

.method private j6(Ljava/util/TreeMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v0}, Labcd/lJ;->j6(Labcd/lJ;)Labcd/_H;

    move-result-object v0

    iget-object v1, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v1}, Labcd/lJ;->DW(Labcd/lJ;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "../refs"

    invoke-direct {p0, v2}, Labcd/lJ$a;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/_H;->FH(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_21

    return-void

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refs/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Labcd/lJ$a;->j6(Ljava/util/TreeMap;Ljava/lang/String;)Labcd/ME;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_1a

    :catch_39
    move-exception p1

    new-instance v0, Labcd/yD;

    invoke-virtual {p0}, Labcd/lJ$a;->Hw()Labcd/HJ;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotListRefs:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4b

    :goto_4a
    throw v0

    :goto_4b
    goto :goto_4a
.end method


# virtual methods
.method DW()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Labcd/RJ;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "info/alternates"

    invoke-virtual {p0, v0}, Labcd/RJ;->VH(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method FH()Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v1}, Labcd/lJ;->j6(Labcd/lJ;)Labcd/_H;

    move-result-object v1

    iget-object v2, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v2}, Labcd/lJ;->DW(Labcd/lJ;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pack"

    invoke-direct {p0, v3}, Labcd/lJ$a;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Labcd/_H;->FH(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2e

    return-object v1

    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "pack-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    const-string v4, ".pack"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_45

    goto :goto_27

    :cond_45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".idx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27
.end method

.method Hw()Labcd/HJ;
    .registers 4

    new-instance v0, Labcd/HJ;

    invoke-direct {v0}, Labcd/HJ;-><init>()V

    const-string v1, "amazon-s3"

    invoke-virtual {v0, v1}, Labcd/HJ;->Hw(Ljava/lang/String;)Labcd/HJ;

    move-result-object v0

    iget-object v1, p0, Labcd/lJ$a;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Labcd/HJ;->j6(Ljava/lang/String;)Labcd/HJ;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/lJ$a;->DW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/HJ;->FH(Ljava/lang/String;)Labcd/HJ;

    move-result-object v0

    return-object v0
.end method

.method Hw(Ljava/lang/String;)Labcd/RJ$a;
    .registers 6

    iget-object v0, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v0}, Labcd/lJ;->j6(Labcd/lJ;)Labcd/_H;

    move-result-object v0

    iget-object v1, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v1}, Labcd/lJ;->DW(Labcd/lJ;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Labcd/lJ$a;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Labcd/_H;->DW(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v1}, Labcd/lJ;->j6(Labcd/lJ;)Labcd/_H;

    move-result-object v1

    invoke-virtual {v1, p1}, Labcd/_H;->j6(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result p1

    if-ne v0, v1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 p1, -0x1

    :goto_2a
    new-instance v0, Labcd/RJ$a;

    int-to-long v2, p1

    invoke-direct {v0, v1, v2, v3}, Labcd/RJ$a;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method j6(Ljava/lang/String;Labcd/LE;Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 6

    iget-object v0, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v0}, Labcd/lJ;->j6(Labcd/lJ;)Labcd/_H;

    move-result-object v0

    iget-object v1, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v1}, Labcd/lJ;->DW(Labcd/lJ;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Labcd/lJ$a;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;Labcd/LE;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method j6()V
    .registers 1

    return-void
.end method

.method j6(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v0}, Labcd/lJ;->j6(Labcd/lJ;)Labcd/_H;

    move-result-object v0

    iget-object v1, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v1}, Labcd/lJ;->DW(Labcd/lJ;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Labcd/lJ$a;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method j6(Ljava/lang/String;[B)V
    .registers 5

    iget-object v0, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v0}, Labcd/lJ;->j6(Labcd/lJ;)Labcd/_H;

    move-result-object v0

    iget-object v1, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v1}, Labcd/lJ;->DW(Labcd/lJ;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Labcd/lJ$a;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method v5(Ljava/lang/String;)Labcd/RJ;
    .registers 5

    new-instance v0, Labcd/lJ$a;

    iget-object v1, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    iget-object v2, p0, Labcd/lJ$a;->j6:Ljava/lang/String;

    invoke-direct {p0, p1}, Labcd/lJ$a;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Labcd/lJ$a;-><init>(Labcd/lJ;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method v5()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0, v0}, Labcd/RJ;->j6(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Labcd/lJ$a;->j6(Ljava/util/TreeMap;)V

    const-string v1, "HEAD"

    invoke-direct {p0, v0, v1}, Labcd/lJ$a;->j6(Ljava/util/TreeMap;Ljava/lang/String;)Labcd/ME;

    return-object v0
.end method
