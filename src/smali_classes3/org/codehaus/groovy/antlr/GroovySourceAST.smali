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

    :goto_4
    if-eqz v0, :cond_14

    invoke-interface {v0}, Lgroovyjarjarantlr/collections/AST;->getType()I

    move-result v1

    if-ne v1, p1, :cond_f

    check-cast v0, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    return-object v0

    :cond_f
    invoke-interface {v0}, Lgroovyjarjarantlr/collections/AST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    goto :goto_4

    :cond_14
    const/4 p1, 0x0

    return-object p1
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

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lgroovyjarjarantlr/collections/AST;

    if-nez v1, :cond_9

    return v0

    :cond_9
    check-cast p1, Lgroovyjarjarantlr/collections/AST;

    invoke-virtual {p0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->aM()I

    move-result v1

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_17

    return v3

    :cond_17
    invoke-virtual {p0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->aM()I

    move-result v1

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->aM()I

    move-result v2

    const/4 v4, 0x1

    if-le v1, v2, :cond_23

    return v4

    :cond_23
    invoke-virtual {p0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j3()I

    move-result v1

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->j3()I

    move-result v2

    if-ge v1, v2, :cond_2e

    return v3

    :cond_2e
    invoke-virtual {p0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->j3()I

    move-result v1

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->j3()I

    move-result p1

    if-le v1, p1, :cond_39

    return v4

    :cond_39
    return v0
.end method

.method public j3()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->gn:I

    return v0
.end method

.method public j6(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lgroovyjarjarantlr/BaseAST;->getFirstChild()Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    :goto_9
    if-eqz v1, :cond_13

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Lgroovyjarjarantlr/collections/AST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object v1

    goto :goto_9

    :cond_13
    :try_start_13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codehaus/groovy/antlr/GroovySourceAST;
    :try_end_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p1

    const/4 p1, 0x0

    return-object p1
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

    if-eqz v0, :cond_21

    check-cast p1, Lorg/codehaus/groovy/antlr/SourceInfo;

    invoke-interface {p1}, Lorg/codehaus/groovy/antlr/SourceInfo;->Mr()I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->u7:I

    invoke-interface {p1}, Lorg/codehaus/groovy/antlr/SourceInfo;->U2()I

    move-result p1

    iput p1, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->tp:I

    :cond_21
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

    if-eqz v0, :cond_21

    check-cast p1, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->Mr()I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->u7:I

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->U2()I

    move-result p1

    iput p1, p0, Lorg/codehaus/groovy/antlr/GroovySourceAST;->tp:I

    :cond_21
    return-void
.end method
