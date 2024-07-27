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
    .registers 5

    const/4 v2, 0x0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Labcd/lJ$a;->DW:Ljava/lang/String;

    :goto_0
    const-string v1, "../"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private j6(Labcd/ME;)Labcd/ME$a;
    .registers 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v0

    sget-object v1, Labcd/ME$a;->FH:Labcd/ME$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Labcd/ME$a;->Hw:Labcd/ME$a;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Labcd/ME$a;->DW:Labcd/ME$a;

    goto :goto_0
.end method

.method private j6(Ljava/util/TreeMap;Ljava/lang/String;)Labcd/ME;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Labcd/ME;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "../"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0, v2}, Labcd/RJ;->Zo(Ljava/lang/String;)Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v3, :cond_4

    const-string v0, "ref: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v2}, Labcd/lJ$a;->j6(Ljava/util/TreeMap;Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Labcd/BE$c;

    sget-object v3, Labcd/ME$a;->j6:Labcd/ME$a;

    invoke-direct {v0, v3, v2, v1}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    :cond_1
    new-instance v1, Labcd/kF;

    invoke-direct {v1, p2, v0}, Labcd/kF;-><init>(Ljava/lang/String;Labcd/ME;)V

    invoke-interface {v1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    invoke-static {v3}, Labcd/yE;->DW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Labcd/BE$c;

    invoke-virtual {p1, p2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-direct {p0, v0}, Labcd/lJ$a;->j6(Labcd/ME;)Labcd/ME$a;

    move-result-object v0

    invoke-static {v3}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v2

    invoke-direct {v1, v0, p2, v2}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    invoke-interface {v1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Labcd/yD;

    invoke-virtual {p0}, Labcd/lJ$a;->Hw()Labcd/HJ;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->transportExceptionBadRef:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v6

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Labcd/yD;

    invoke-virtual {p0}, Labcd/lJ$a;->Hw()Labcd/HJ;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->transportExceptionEmptyRef:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Labcd/yD;

    invoke-virtual {p0}, Labcd/lJ$a;->Hw()Labcd/HJ;

    move-result-object v3

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->transportExceptionReadRef:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private j6(Ljava/util/TreeMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
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

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refs/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/lJ$a;->j6(Ljava/util/TreeMap;Ljava/lang/String;)Labcd/ME;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/yD;

    invoke-virtual {p0}, Labcd/lJ$a;->Hw()Labcd/HJ;

    move-result-object v2

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->cannotListRefs:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method DW()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Labcd/RJ;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "info/alternates"

    invoke-virtual {p0, v0}, Labcd/RJ;->VH(Ljava/lang/String;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method FH()Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v0}, Labcd/lJ;->j6(Labcd/lJ;)Labcd/_H;

    move-result-object v0

    iget-object v2, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v2}, Labcd/lJ;->DW(Labcd/lJ;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pack"

    invoke-direct {p0, v3}, Labcd/lJ$a;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Labcd/_H;->FH(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "pack-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ".pack"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x5

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".idx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
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
    .registers 8

    iget-object v0, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v0}, Labcd/lJ;->j6(Labcd/lJ;)Labcd/_H;

    move-result-object v0

    iget-object v1, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v1}, Labcd/lJ;->DW(Labcd/lJ;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Labcd/lJ$a;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/_H;->DW(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v2}, Labcd/lJ;->j6(Labcd/lJ;)Labcd/_H;

    move-result-object v2

    invoke-virtual {v2, v0}, Labcd/_H;->j6(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    if-ne v1, v2, :cond_0

    :goto_0
    new-instance v1, Labcd/RJ$a;

    int-to-long v4, v0

    invoke-direct {v1, v2, v4, v5}, Labcd/RJ$a;-><init>(Ljava/io/InputStream;J)V

    return-object v1

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method j6(Ljava/lang/String;Labcd/LE;Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 7

    iget-object v0, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v0}, Labcd/lJ;->j6(Labcd/lJ;)Labcd/_H;

    move-result-object v0

    iget-object v1, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v1}, Labcd/lJ;->DW(Labcd/lJ;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Labcd/lJ$a;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2, p3}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;Labcd/LE;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method j6()V
    .registers 1

    return-void
.end method

.method j6(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v0}, Labcd/lJ;->j6(Labcd/lJ;)Labcd/_H;

    move-result-object v0

    iget-object v1, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v1}, Labcd/lJ;->DW(Labcd/lJ;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Labcd/lJ$a;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method j6(Ljava/lang/String;[B)V
    .registers 6

    iget-object v0, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v0}, Labcd/lJ;->j6(Labcd/lJ;)Labcd/_H;

    move-result-object v0

    iget-object v1, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    invoke-static {v1}, Labcd/lJ;->DW(Labcd/lJ;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Labcd/lJ$a;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method v5(Ljava/lang/String;)Labcd/RJ;
    .registers 6

    new-instance v0, Labcd/lJ$a;

    iget-object v1, p0, Labcd/lJ$a;->FH:Labcd/lJ;

    iget-object v2, p0, Labcd/lJ$a;->j6:Ljava/lang/String;

    invoke-direct {p0, p1}, Labcd/lJ$a;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Labcd/lJ$a;-><init>(Labcd/lJ;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method v5()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
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
