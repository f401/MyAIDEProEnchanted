.class public Lorg/antlr/v4/runtime/dfa/LexerDFASerializer;
.super Lorg/antlr/v4/runtime/dfa/DFASerializer;
.source "LexerDFASerializer.java"


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/dfa/DFA;)V
    .registers 3

    .line 13
    sget-object v0, Lorg/antlr/v4/runtime/VocabularyImpl;->EMPTY_VOCABULARY:Lorg/antlr/v4/runtime/VocabularyImpl;

    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/dfa/DFASerializer;-><init>(Lorg/antlr/v4/runtime/dfa/DFA;Lorg/antlr/v4/runtime/Vocabulary;)V

    return-void
.end method


# virtual methods
.method protected getEdgeLabel(I)Ljava/lang/String;
    .registers 4

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
