.class public Lorg/codehaus/groovy/antlr/GroovySourceAST;
.super Lgroovyjarjarantlr/CommonAST;

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/codehaus/groovy/antlr/SourceInfo;


# instance fields
.field private VH:I

.field private gn:I

.field private tp:I

.field private u7:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgroovyjarjarantlr/CommonAST;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;
    .registers 4

    invoke-virtual {p0}, Lgroovyjarjarantlr/BaseAST;->getFirstChild()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lgroovyjarjarantlr/collections/AST;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    check-cast v0, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lgroovyjarjarantlr/collections/AST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public FH(I)V
    .registers 2

    iput p1, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->tp:I

    return-void
.end method

.method public Hw(I)V
    .registers 2

    iput p1, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->u7:I

    return-void
.end method

.method public Mr()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->u7:I

    return v0
.end method

.method public U2()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->tp:I

    return v0
.end method

.method public aM()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->VH:I

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 7

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v3, p1, Lgroovyjarjarantlr/collections/AST;

    if-eqz v3, :cond_0

    check-cast p1, Lgroovyjarjarantlr/collections/AST;

    invoke-virtual {p0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->aM()I

    move-result v3

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v4

    if-ge v3, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->aM()I

    move-result v3

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v4

    if-le v3, v4, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j3()I

    move-result v3

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->j3()I

    move-result v4

    if-ge v3, v4, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j3()I

    move-result v1

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->j3()I

    move-result v3

    if-le v1, v3, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method public j3()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->gn:I

    return v0
.end method

.method public j6(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;
    .registers 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lgroovyjarjarantlr/BaseAST;->getFirstChild()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lgroovyjarjarantlr/collections/AST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/antlr/GroovySourceAST;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public j6(Lgroovyjarjarantlr/Token;)V
    .registers 3

    invoke-super {p0, p1}, Lgroovyjarjarantlr/CommonAST;->j6(Lgroovyjarjarantlr/Token;)V

    invoke-virtual {p1}, Lgroovyjarjarantlr/Token;->aM()I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->VH:I

    invoke-virtual {p1}, Lgroovyjarjarantlr/Token;->j3()I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->gn:I

    instance-of v0, p1, Lorg/codehaus/groovy/antlr/SourceInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/codehaus/groovy/antlr/SourceInfo;

    invoke-interface {p1}, Lorg/codehaus/groovy/antlr/SourceInfo;->Mr()I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->u7:I

    invoke-interface {p1}, Lorg/codehaus/groovy/antlr/SourceInfo;->U2()I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->tp:I

    :cond_0
    return-void
.end method

.method public j6(Lgroovyjarjarantlr/collections/AST;)V
    .registers 3

    invoke-super {p0, p1}, Lgroovyjarjarantlr/CommonAST;->j6(Lgroovyjarjarantlr/collections/AST;)V

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->VH:I

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->j3()I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->gn:I

    instance-of v0, p1, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->Mr()I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->u7:I

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->U2()I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->tp:I

    :cond_0
    return-void
.end method
