.class Labcd/xJ$c;
.super Labcd/RJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/xJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final DW:Labcd/xJ;

.field private final j6:Ljava/net/URL;


# direct methods
.method constructor <init>(Labcd/xJ;Ljava/net/URL;)V
    .registers 3

    iput-object p1, p0, Labcd/xJ$c;->DW:Labcd/xJ;

    invoke-direct {p0}, Labcd/RJ;-><init>()V

    iput-object p2, p0, Labcd/xJ$c;->j6:Ljava/net/URL;

    return-void
.end method

.method private gn(Ljava/lang/String;)Labcd/nD;
    .registers 6

    new-instance v0, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->duplicateAdvertisementsOf:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/nD;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private tp(Ljava/lang/String;)Labcd/nD;
    .registers 6

    new-instance v0, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->advertisementOfCameBefore:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/nD;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private u7(Ljava/lang/String;)Labcd/nD;
    .registers 6

    new-instance v0, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidAdvertisementOf:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/nD;-><init>(Ljava/lang/String;)V

    return-object v0
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
    const-string v0, "info/http-alternates"

    invoke-virtual {p0, v0}, Labcd/RJ;->VH(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    :try_start_8
    const-string v0, "info/alternates"

    invoke-virtual {p0, v0}, Labcd/RJ;->VH(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method FH()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    const-string v1, "info/packs"

    invoke-virtual {p0, v1}, Labcd/RJ;->Zo(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_b} :catch_3f

    :goto_b
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_18

    goto :goto_36

    :cond_18
    const-string v3, "P pack-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    const-string v3, ".pack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_31
    invoke-direct {p0, v2}, Labcd/xJ$c;->u7(Ljava/lang/String;)Labcd/nD;

    move-result-object v2

    throw v2
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_3a

    :cond_36
    :goto_36
    :try_start_36
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v2
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception v1

    return-object v0
.end method

.method Hw()Labcd/HJ;
    .registers 3

    new-instance v0, Labcd/HJ;

    iget-object v1, p0, Labcd/xJ$c;->j6:Ljava/net/URL;

    invoke-direct {v0, v1}, Labcd/HJ;-><init>(Ljava/net/URL;)V

    return-object v0
.end method

.method Hw(Ljava/lang/String;)Labcd/RJ$a;
    .registers 6

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Labcd/xJ$c;->j6:Ljava/net/URL;

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iget-object p1, p0, Labcd/xJ$c;->DW:Labcd/xJ;

    invoke-virtual {p1, v0}, Labcd/xJ;->j6(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-static {p1}, Labcd/AK;->j6(Ljava/net/HttpURLConnection;)I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_52

    const/16 v2, 0x194

    if-eq v1, v2, :cond_48

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/AK;->j6(Ljava/net/HttpURLConnection;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_48
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    new-instance v0, Labcd/RJ$a;

    iget-object v1, p0, Labcd/xJ$c;->DW:Labcd/xJ;

    invoke-virtual {v1, p1}, Labcd/xJ;->j6(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    int-to-long v2, p1

    invoke-direct {v0, v1, v2, v3}, Labcd/RJ$a;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method j6(Ljava/io/BufferedReader;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    :goto_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_81

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v1

    const-string v2, "^{}"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/ME;

    if-eqz v4, :cond_67

    invoke-interface {v4}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v5

    if-nez v5, :cond_52

    new-instance v2, Labcd/BE$b;

    sget-object v5, Labcd/ME$a;->v5:Labcd/ME$a;

    invoke-interface {v4}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-direct {v2, v5, v3, v4, v1}, Labcd/BE$b;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;Labcd/yE;)V

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/xJ$c;->gn(Ljava/lang/String;)Labcd/nD;

    move-result-object p1

    throw p1

    :cond_67
    invoke-direct {p0, v3}, Labcd/xJ$c;->tp(Ljava/lang/String;)Labcd/nD;

    move-result-object p1

    throw p1

    :cond_6c
    new-instance v2, Labcd/BE$a;

    sget-object v4, Labcd/ME$a;->v5:Labcd/ME$a;

    invoke-direct {v2, v4, v3, v1}, Labcd/BE$a;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ME;

    if-nez v1, :cond_7c

    goto :goto_5

    :cond_7c
    invoke-direct {p0, v3}, Labcd/xJ$c;->gn(Ljava/lang/String;)Labcd/nD;

    move-result-object p1

    throw p1

    :cond_81
    invoke-direct {p0, v1}, Labcd/xJ$c;->u7(Ljava/lang/String;)Labcd/nD;

    move-result-object p1

    goto :goto_87

    :goto_86
    throw p1

    :goto_87
    goto :goto_86
.end method

.method j6()V
    .registers 1

    return-void
.end method

.method v5(Ljava/lang/String;)Labcd/RJ;
    .registers 6

    new-instance v0, Labcd/xJ$c;

    iget-object v1, p0, Labcd/xJ$c;->DW:Labcd/xJ;

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Labcd/xJ$c;->j6:Ljava/net/URL;

    invoke-direct {v2, v3, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Labcd/xJ$c;-><init>(Labcd/xJ;Ljava/net/URL;)V

    return-object v0
.end method
