.class Lorg/codehaus/groovy/antlr/java/JavaLexer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lgroovyjarjarantlr/TokenStream;


# instance fields
.field final j6:Lorg/codehaus/groovy/antlr/java/JavaLexer;


# virtual methods
.method public nextToken()Lgroovyjarjarantlr/Token;
    .registers 4

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/java/JavaLexer$1;->j6:Lorg/codehaus/groovy/antlr/java/JavaLexer;

    iget v1, v0, Lorg/codehaus/groovy/antlr/java/JavaLexer;->j3:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lorg/codehaus/groovy/antlr/java/JavaLexer;->j3:I

    invoke-virtual {v0}, Lgroovyjarjarantlr/CharScanner;->u7()V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/groovy/antlr/java/JavaLexer$1;->j6:Lorg/codehaus/groovy/antlr/java/JavaLexer;

    invoke-virtual {v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->nextToken()Lgroovyjarjarantlr/Token;

    move-result-object v1

    invoke-virtual {v1}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v0

    iget-object v2, p0, Lorg/codehaus/groovy/antlr/java/JavaLexer$1;->j6:Lorg/codehaus/groovy/antlr/java/JavaLexer;

    invoke-static {v2}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->j6(Lorg/codehaus/groovy/antlr/java/JavaLexer;)Z

    move-result v2

    if-eqz v2, :cond_1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/codehaus/groovy/antlr/java/JavaLexer$1;->j6:Lorg/codehaus/groovy/antlr/java/JavaLexer;

    iput v0, v2, Lorg/codehaus/groovy/antlr/java/JavaLexer;->Mr:I

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/groovy/antlr/java/JavaLexer$1;->j6:Lorg/codehaus/groovy/antlr/java/JavaLexer;

    iget v0, v0, Lorg/codehaus/groovy/antlr/java/JavaLexer;->Mr:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa5
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
