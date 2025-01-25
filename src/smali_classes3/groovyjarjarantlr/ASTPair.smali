.class public Lgroovyjarjarantlr/ASTPair;
.super Ljava/lang/Object;


# instance fields
.field public DW:Lgroovyjarjarantlr/collections/AST;

.field public j6:Lgroovyjarjarantlr/collections/AST;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6()V
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/ASTPair;->DW:Lgroovyjarjarantlr/collections/AST;

    if-eqz v0, :cond_15

    :goto_4
    iget-object v0, p0, Lgroovyjarjarantlr/ASTPair;->DW:Lgroovyjarjarantlr/collections/AST;

    invoke-interface {v0}, Lgroovyjarjarantlr/collections/AST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lgroovyjarjarantlr/ASTPair;->DW:Lgroovyjarjarantlr/collections/AST;

    invoke-interface {v0}, Lgroovyjarjarantlr/collections/AST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    iput-object v0, p0, Lgroovyjarjarantlr/ASTPair;->DW:Lgroovyjarjarantlr/collections/AST;

    goto :goto_4

    :cond_15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lgroovyjarjarantlr/ASTPair;->j6:Lgroovyjarjarantlr/collections/AST;

    const-string v1, "null"

    if-nez v0, :cond_8

    move-object v0, v1

    goto :goto_c

    :cond_8
    invoke-interface {v0}, Lgroovyjarjarantlr/collections/AST;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_c
    iget-object v2, p0, Lgroovyjarjarantlr/ASTPair;->DW:Lgroovyjarjarantlr/collections/AST;

    if-nez v2, :cond_11

    goto :goto_15

    :cond_11
    invoke-interface {v2}, Lgroovyjarjarantlr/collections/AST;->getText()Ljava/lang/String;

    move-result-object v1

    :goto_15
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
