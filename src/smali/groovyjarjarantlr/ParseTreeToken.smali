.class public Lgroovyjarjarantlr/ParseTreeToken;
.super Lgroovyjarjarantlr/ParseTree;


# instance fields
.field protected v5:Lgroovyjarjarantlr/Token;


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/ParseTreeToken;->v5:Lgroovyjarjarantlr/Token;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<missing token>"

    goto :goto_0
.end method
