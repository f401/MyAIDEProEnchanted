.class public Lgroovyjarjarantlr/ASTNULLType;
.super Ljava/lang/Object;

# interfaces
.implements Lgroovyjarjarantlr/collections/AST;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Lgroovyjarjarantlr/collections/AST;)V
    .registers 2

    return-void
.end method

.method public FH(Lgroovyjarjarantlr/collections/AST;)V
    .registers 2

    return-void
.end method

.method public Hw(Lgroovyjarjarantlr/collections/AST;)V
    .registers 2

    return-void
.end method

.method public aM()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFirstChild()Lgroovyjarjarantlr/collections/AST;
    .registers 1

    return-object p0
.end method

.method public getNextSibling()Lgroovyjarjarantlr/collections/AST;
    .registers 1

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    const-string v0, "<ASTNULL>"

    return-object v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public j3()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j6(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public j6(Lgroovyjarjarantlr/Token;)V
    .registers 2

    return-void
.end method

.method public j6(Lgroovyjarjarantlr/collections/AST;)V
    .registers 2

    return-void
.end method

.method public setType(I)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lgroovyjarjarantlr/ASTNULLType;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
