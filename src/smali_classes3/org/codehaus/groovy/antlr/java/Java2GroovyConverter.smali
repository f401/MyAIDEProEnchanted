.class public Lorg/codehaus/groovy/antlr/java/Java2GroovyConverter;
.super Lorg/codehaus/groovy/antlr/treewalker/VisitorAdapter;


# instance fields
.field private j6:[I


# direct methods
.method private DW(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1f

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x27

    if-ne v1, v2, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v2, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0
.end method

.method private j6(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1f

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v2, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0
.end method


# virtual methods
.method public ji(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_34

    iget-object p2, p0, Lorg/codehaus/groovy/antlr/java/Java2GroovyConverter;->j6:[I

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v1

    aget p2, p2, v1

    invoke-virtual {p1, p2}, Lgroovyjarjarantlr/CommonAST;->setType(I)V

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result p2

    const/16 v1, 0x58

    if-ne p2, v1, :cond_34

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/codehaus/groovy/antlr/java/Java2GroovyConverter;->DW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    :goto_20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgroovyjarjarantlr/CommonAST;->j6(Ljava/lang/String;)V

    goto :goto_34

    :cond_2d
    invoke-direct {p0, p2}, Lorg/codehaus/groovy/antlr/java/Java2GroovyConverter;->j6(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_20

    :cond_34
    :goto_34
    return-void
.end method
