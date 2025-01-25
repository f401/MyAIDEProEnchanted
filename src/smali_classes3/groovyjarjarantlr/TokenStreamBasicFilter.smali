.class public Lgroovyjarjarantlr/TokenStreamBasicFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lgroovyjarjarantlr/TokenStream;
.implements Lgroovyjarjarantlr/ASdebug/IASDebugStream;


# instance fields
.field protected DW:Lgroovyjarjarantlr/TokenStream;

.field protected j6:Lgroovyjarjarantlr/collections/impl/BitSet;


# virtual methods
.method public nextToken()Lgroovyjarjarantlr/Token;
    .registers 4

    :goto_0
    iget-object v0, p0, Lgroovyjarjarantlr/TokenStreamBasicFilter;->DW:Lgroovyjarjarantlr/TokenStream;

    invoke-interface {v0}, Lgroovyjarjarantlr/TokenStream;->nextToken()Lgroovyjarjarantlr/Token;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v1, p0, Lgroovyjarjarantlr/TokenStreamBasicFilter;->j6:Lgroovyjarjarantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v2

    invoke-virtual {v1, v2}, Lgroovyjarjarantlr/collections/impl/BitSet;->Hw(I)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_0

    :cond_15
    return-object v0
.end method
