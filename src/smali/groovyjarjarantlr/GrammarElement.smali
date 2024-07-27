.class abstract Lgroovyjarjarantlr/GrammarElement;
.super Ljava/lang/Object;


# instance fields
.field protected DW:I

.field protected FH:I

.field protected j6:Lgroovyjarjarantlr/Grammar;


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Lgroovyjarjarantlr/GrammarElement;->DW:I

    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Lgroovyjarjarantlr/GrammarElement;->FH:I

    return v0
.end method

.method public j6(I)Lgroovyjarjarantlr/Lookahead;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method
