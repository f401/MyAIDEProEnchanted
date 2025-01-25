.class public Lgroovyjarjarantlr/ParseTreeToken;
.super Lgroovyjarjarantlr/ParseTree;


# instance fields
.field protected v5:Lgroovyjarjarantlr/Token;


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/ParseTreeToken;->v5:Lgroovyjarjarantlr/Token;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lgroovyjarjarantlr/Token;->j6()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "<missing token>"

    return-object v0
.end method
