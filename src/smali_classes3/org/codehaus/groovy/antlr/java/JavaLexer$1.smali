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

    if-lt v1, v2, :cond_e

    const/4 v1, 0x0

    iput v1, v0, Lorg/codehaus/groovy/antlr/java/JavaLexer;->j3:I

    invoke-virtual {v0}, Lgroovyjarjarantlr/CharScanner;->u7()V

    :cond_e
    iget-object v0, p0, Lorg/codehaus/groovy/antlr/java/JavaLexer$1;->j6:Lorg/codehaus/groovy/antlr/java/JavaLexer;

    invoke-virtual {v0}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->nextToken()Lgroovyjarjarantlr/Token;

    move-result-object v0

    invoke-virtual {v0}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v1

    iget-object v2, p0, Lorg/codehaus/groovy/antlr/java/JavaLexer$1;->j6:Lorg/codehaus/groovy/antlr/java/JavaLexer;

    invoke-static {v2}, Lorg/codehaus/groovy/antlr/java/JavaLexer;->j6(Lorg/codehaus/groovy/antlr/java/JavaLexer;)Z

    move-result v2

    if-eqz v2, :cond_28

    packed-switch v1, :pswitch_data_2e

    goto :goto_28

    :pswitch_24  #0xa5, 0xa6, 0xa7
    iget-object v1, p0, Lorg/codehaus/groovy/antlr/java/JavaLexer$1;->j6:Lorg/codehaus/groovy/antlr/java/JavaLexer;

    iget v1, v1, Lorg/codehaus/groovy/antlr/java/JavaLexer;->Mr:I

    :cond_28
    :goto_28
    iget-object v2, p0, Lorg/codehaus/groovy/antlr/java/JavaLexer$1;->j6:Lorg/codehaus/groovy/antlr/java/JavaLexer;

    iput v1, v2, Lorg/codehaus/groovy/antlr/java/JavaLexer;->Mr:I

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0xa5
        :pswitch_24  #000000a5
        :pswitch_24  #000000a6
        :pswitch_24  #000000a7
    .end packed-switch
.end method
