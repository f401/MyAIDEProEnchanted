.class Lgroovyjarjarantlr/ImportVocabTokenManager;
.super Lgroovyjarjarantlr/SimpleTokenManager;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected VH:Lgroovyjarjarantlr/Grammar;

.field private Zo:Ljava/lang/String;


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    invoke-super {p0}, Lgroovyjarjarantlr/SimpleTokenManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgroovyjarjarantlr/ImportVocabTokenManager;

    iget-object v1, p0, Lgroovyjarjarantlr/ImportVocabTokenManager;->Zo:Ljava/lang/String;

    iput-object v1, v0, Lgroovyjarjarantlr/ImportVocabTokenManager;->Zo:Ljava/lang/String;

    iget-object v1, p0, Lgroovyjarjarantlr/ImportVocabTokenManager;->VH:Lgroovyjarjarantlr/Grammar;

    iput-object v1, v0, Lgroovyjarjarantlr/ImportVocabTokenManager;->VH:Lgroovyjarjarantlr/Grammar;

    return-object v0
.end method
