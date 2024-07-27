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

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    iget v1, v0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->KD:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_5

    and-int/lit8 v1, v1, 0x3

    iput v3, v0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->KD:I

    invoke-virtual {v0}, Lgroovyjarjarantlr/CharScanner;->u7()V

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->j6(ZZ)I

    :goto_0
    iget-object v0, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    invoke-static {v1}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->j6(Lorg/codehaus/groovy/antlr/parser/GroovyLexer;)Lgroovyjarjarantlr/Token;

    move-result-object v1

    invoke-virtual {v1}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v1

    iput v1, v0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->cn:I

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    invoke-static {v0}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->DW(Lorg/codehaus/groovy/antlr/parser/GroovyLexer;)Lgroovyjarjarantlr/Token;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Z)V

    throw v0
    :try_end_0
    .catch Lgroovyjarjarantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lgroovyjarjarantlr/CharStreamException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lgroovyjarjarantlr/TokenStreamRecognitionException;

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamRecognitionException;-><init>(Lgroovyjarjarantlr/RecognitionException;)V

    throw v1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->FH(ZZ)I
    :try_end_1
    .catch Lgroovyjarjarantlr/RecognitionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lgroovyjarjarantlr/CharStreamException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    instance-of v1, v0, Lgroovyjarjarantlr/CharStreamIOException;

    if-eqz v1, :cond_4

    new-instance v1, Lgroovyjarjarantlr/TokenStreamIOException;

    check-cast v0, Lgroovyjarjarantlr/CharStreamIOException;

    iget-object v0, v0, Lgroovyjarjarantlr/CharStreamIOException;->j6:Ljava/io/IOException;

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->j6(ZZZ)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->j6(ZZZ)I
    :try_end_2
    .catch Lgroovyjarjarantlr/RecognitionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lgroovyjarjarantlr/CharStreamException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :cond_4
    new-instance v1, Lgroovyjarjarantlr/TokenStreamException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lgroovyjarjarantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-virtual {v0}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->nextToken()Lgroovyjarjarantlr/Token;

    move-result-object v1

    invoke-virtual {v1}, Lgroovyjarjarantlr/Token;->DW()I

    move-result v0

    iget-object v2, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    invoke-static {v2}, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->FH(Lorg/codehaus/groovy/antlr/parser/GroovyLexer;)Z

    move-result v2

    if-eqz v2, :cond_6

    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_2
    iget-object v2, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    iput v0, v2, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->cn:I

    move-object v0, v1

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer$1;->j6:Lorg/codehaus/groovy/antlr/parser/GroovyLexer;

    iget v0, v0, Lorg/codehaus/groovy/antlr/parser/GroovyLexer;->cn:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0xcf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
