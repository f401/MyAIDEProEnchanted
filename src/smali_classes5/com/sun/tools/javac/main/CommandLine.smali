.class public Lcom/sun/tools/javac/main/CommandLine;
.super Ljava/lang/Object;
.source "CommandLine.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadCmdFile(Ljava/lang/String;Lcom/sun/tools/javac/util/ListBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x20

    .line 76
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 77
    new-instance v1, Ljava/io/StreamTokenizer;

    invoke-direct {v1, v0}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 78
    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->resetSyntax()V

    .line 79
    const/16 v2, 0xff

    invoke-virtual {v1, v3, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 80
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 81
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/io/StreamTokenizer;->commentChar(I)V

    .line 82
    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 83
    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 84
    :goto_2c
    invoke-virtual {v1}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_39

    .line 85
    iget-object v2, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_2c

    .line 87
    :cond_39
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 88
    return-void
.end method

.method public static parse([Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x40

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 57
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    move v0, v1

    .line 58
    :goto_a
    array-length v3, p0

    if-ge v0, v3, :cond_33

    .line 59
    aget-object v3, p0, v0

    .line 60
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_2f

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_2f

    .line 61
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_2b

    .line 63
    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 58
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 65
    :cond_2b
    invoke-static {v3, v2}, Lcom/sun/tools/javac/main/CommandLine;->loadCmdFile(Ljava/lang/String;Lcom/sun/tools/javac/util/ListBuffer;)V

    goto :goto_28

    .line 68
    :cond_2f
    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_28

    .line 71
    :cond_33
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
