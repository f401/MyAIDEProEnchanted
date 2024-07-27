.class public Lgroovyjarjarantlr/LLkParser;
.super Lgroovyjarjarantlr/Parser;


# instance fields
.field gn:I


# direct methods
.method public constructor <init>(Lgroovyjarjarantlr/TokenStream;I)V
    .registers 4

    invoke-direct {p0}, Lgroovyjarjarantlr/Parser;-><init>()V

    iput p2, p0, Lgroovyjarjarantlr/LLkParser;->gn:I

    new-instance v0, Lgroovyjarjarantlr/TokenBuffer;

    invoke-direct {v0, p1}, Lgroovyjarjarantlr/TokenBuffer;-><init>(Lgroovyjarjarantlr/TokenStream;)V

    invoke-virtual {p0, v0}, Lgroovyjarjarantlr/Parser;->j6(Lgroovyjarjarantlr/TokenBuffer;)V

    return-void
.end method


# virtual methods
.method public DW(I)Lgroovyjarjarantlr/Token;
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/Parser;->j6:Lgroovyjarjarantlr/ParserSharedInputState;

    iget-object v0, v0, Lgroovyjarjarantlr/ParserSharedInputState;->j6:Lgroovyjarjarantlr/TokenBuffer;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/TokenBuffer;->DW(I)Lgroovyjarjarantlr/Token;

    move-result-object v0

    return-object v0
.end method

.method public j6(I)I
    .registers 3

    iget-object v0, p0, Lgroovyjarjarantlr/Parser;->j6:Lgroovyjarjarantlr/ParserSharedInputState;

    iget-object v0, v0, Lgroovyjarjarantlr/ParserSharedInputState;->j6:Lgroovyjarjarantlr/TokenBuffer;

    invoke-virtual {v0, p1}, Lgroovyjarjarantlr/TokenBuffer;->j6(I)I

    move-result v0

    return v0
.end method

.method public j6()V
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/Parser;->j6:Lgroovyjarjarantlr/ParserSharedInputState;

    iget-object v0, v0, Lgroovyjarjarantlr/ParserSharedInputState;->j6:Lgroovyjarjarantlr/TokenBuffer;

    invoke-virtual {v0}, Lgroovyjarjarantlr/TokenBuffer;->j6()V

    return-void
.end method
