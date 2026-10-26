.class public Lorg/codehaus/groovy/antlr/java/Java2GroovyConverter;
.super Lorg/codehaus/groovy/antlr/treewalker/VisitorAdapter;


# instance fields
.field private j6:[I


# direct methods
.method private DW(Ljava/lang/String;)Z
    .locals 4

    const/16 v3, 0x27

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private j6(Ljava/lang/String;)Z
    .locals 4

    const/16 v3, 0x22

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public ji(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .locals 3

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/java/Java2GroovyConverter;->j6:[I

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lgroovyjarjarantlr/CommonAST;->setType(I)V

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    const/16 v1, 0x58

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/antlr/java/Java2GroovyConverter;->DW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgroovyjarjarantlr/CommonAST;->j6(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lorg/codehaus/groovy/antlr/java/Java2GroovyConverter;->j6(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
