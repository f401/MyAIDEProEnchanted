.class Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lgroovyjarjarantlr/TokenStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->QX()Lgroovyjarjarantlr/TokenStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;


# direct methods
.method constructor <init>(Lorg/codehaus/groovy/antlr/parser/GroovyLexer;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextToken()Lgroovyjarjarantlr/Token;
    .registers 6

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    iget v1, v0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->KD:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_6a

    const/4 v2, 0x3

    and-int/2addr v1, v2

    const/4 v3, 0x0

    iput v3, v0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->KD:I

    invoke-virtual {v0}, Lgroovyjarjarantlr/CharScanner;->u7()V

    const/4 v0, 0x1

    if-eqz v1, :cond_32

    if-eq v1, v0, :cond_2c

    const/4 v4, 0x2

    if-eq v1, v4, :cond_26

    if-ne v1, v2, :cond_20

    :try_start_1a
    iget-object v1, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->j6(ZZ)I

    goto :goto_37

    :cond_20
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Z)V

    throw v0

    :cond_26
    iget-object v1, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    invoke-virtual {v1, v0, v3}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->FH(ZZ)I

    goto :goto_37

    :cond_2c
    iget-object v1, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    invoke-virtual {v1, v0, v3, v0}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->j6(ZZZ)I

    goto :goto_37

    :cond_32
    iget-object v1, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    invoke-virtual {v1, v0, v3, v3}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->j6(ZZZ)I

    :goto_37
    iget-object v0, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    invoke-static {v0}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->j6(Lorg/codehaus/groovy/antlr/parser/GroovyLexer;)Lgroovyjarjarantlr/Token;

    move-result-object v1

    invoke-virtual {v1}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v1

    iput v1, v0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->cn:I

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    invoke-static {v0}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->DW(Lorg/codehaus/groovy/antlr/parser/GroovyLexer;)Lgroovyjarjarantlr/Token;

    move-result-object v0
    :try_end_49
    .catch Lgroovyjarjarantlr/RecognitionException; {:try_start_1a .. :try_end_49} :catch_63
    .catch Lgroovyjarjarantlr/CharStreamException; {:try_start_1a .. :try_end_49} :catch_4a

    return-object v0

    :catch_4a
    move-exception v0

    instance-of v1, v0, Lgroovyjarjarantlr/CharStreamIOException;

    if-eqz v1, :cond_59

    new-instance v1, Lgroovyjarjarantlr/TokenStreamIOException;

    check-cast v0, Lgroovyjarjarantlr/CharStreamIOException;

    iget-object v0, v0, Lgroovyjarjarantlr/CharStreamIOException;->j6:Ljava/io/IOException;

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_59
    new-instance v1, Lgroovyjarjarantlr/TokenStreamException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_63
    move-exception v0

    new-instance v1, Lgroovyjarjarantlr/TokenStreamRecognitionException;

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamRecognitionException;-><init>(Lgroovyjarjarantlr/RecognitionException;)V

    throw v1

    :cond_6a
    invoke-virtual {v0}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->nextToken()Lgroovyjarjarantlr/Token;

    move-result-object v0

    invoke-virtual {v0}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v1

    iget-object v2, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    invoke-static {v2}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->FH(Lorg/codehaus/groovy/antlr/parser/GroovyLexer;)Z

    move-result v2

    if-eqz v2, :cond_82

    packed-switch v1, :pswitch_data_88

    goto :goto_82

    :pswitch_7e  #0xcf, 0xd0, 0xd1, 0xd2
    iget-object v1, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    iget v1, v1, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->cn:I

    :cond_82
    :goto_82
    iget-object v2, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    iput v1, v2, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->cn:I

    return-object v0

    nop

    :pswitch_data_88
    .packed-switch 0xcf
        :pswitch_7e  #000000cf
        :pswitch_7e  #000000d0
        :pswitch_7e  #000000d1
        :pswitch_7e  #000000d2
    .end packed-switch
.end method
