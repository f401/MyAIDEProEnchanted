.class public Lgroovyjarjarantlr/CommonAST;
.super Lgroovyjarjarantlr/BaseAST;


# instance fields
.field Zo:Ljava/lang/String;

.field v5:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lgroovyjarjarantlr/BaseAST;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgroovyjarjarantlr/CommonAST;->v5:I

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/CommonAST;->Zo:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lgroovyjarjarantlr/CommonAST;->v5:I

    return v0
.end method

.method public j6(ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lgroovyjarjarantlr/CommonAST;->setType(I)V

    invoke-virtual {p0, p2}, Lgroovyjarjarantlr/CommonAST;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Lgroovyjarjarantlr/Token;)V
    .registers 3

    invoke-virtual {p1}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CommonAST;->j6(Ljava/lang/String;)V

    invoke-virtual {p1}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v0

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CommonAST;->setType(I)V

    return-void
.end method

.method public j6(Lgroovyjarjarantlr/collections/AST;)V
    .registers 3

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CommonAST;->j6(Ljava/lang/String;)V

    invoke-interface {p1}, Lgroovyjarjarantlr/collections/AST;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/CommonAST;->setType(I)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lgroovyjarjarantlr/CommonAST;->Zo:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lgroovyjarjarantlr/CommonAST;->v5:I

    return-void
.end method
