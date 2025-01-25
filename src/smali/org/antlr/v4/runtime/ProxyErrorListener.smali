.class public Lorg/antlr/v4/runtime/ProxyErrorListener;
.super Ljava/lang/Object;
.source "ProxyErrorListener.java"

# interfaces
.implements Lorg/antlr/v4/runtime/ANTLRErrorListener;


# instance fields
.field private final delegates:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lorg/antlr/v4/runtime/ANTLRErrorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/antlr/v4/runtime/ANTLRErrorListener;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 29
    iput-object p1, p0, Lorg/antlr/v4/runtime/ProxyErrorListener;->delegates:Ljava/util/Collection;

    return-void

    .line 26
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "delegates"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public reportAmbiguity(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IIZLjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .registers 19

    .line 54
    move-object v0, p0

    iget-object v1, v0, Lorg/antlr/v4/runtime/ProxyErrorListener;->delegates:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/antlr/v4/runtime/ANTLRErrorListener;

    .line 55
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->reportAmbiguity(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IIZLjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    goto :goto_7

    :cond_22
    return-void
.end method

.method public reportAttemptingFullContext(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IILjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .registers 16

    .line 67
    iget-object v0, p0, Lorg/antlr/v4/runtime/ProxyErrorListener;->delegates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/antlr/v4/runtime/ANTLRErrorListener;

    .line 68
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->reportAttemptingFullContext(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IILjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    goto :goto_6

    :cond_1d
    return-void
.end method

.method public reportContextSensitivity(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IIILorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .registers 16

    .line 80
    iget-object v0, p0, Lorg/antlr/v4/runtime/ProxyErrorListener;->delegates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/antlr/v4/runtime/ANTLRErrorListener;

    .line 81
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->reportContextSensitivity(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IIILorg/antlr/v4/runtime/atn/ATNConfigSet;)V

    goto :goto_6

    :cond_1d
    return-void
.end method

.method public syntaxError(Lorg/antlr/v4/runtime/Recognizer;Ljava/lang/Object;IILjava/lang/String;Lorg/antlr/v4/runtime/RecognitionException;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/Recognizer<",
            "**>;",
            "Ljava/lang/Object;",
            "II",
            "Ljava/lang/String;",
            "Lorg/antlr/v4/runtime/RecognitionException;",
            ")V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/antlr/v4/runtime/ProxyErrorListener;->delegates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/antlr/v4/runtime/ANTLRErrorListener;

    .line 41
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->syntaxError(Lorg/antlr/v4/runtime/Recognizer;Ljava/lang/Object;IILjava/lang/String;Lorg/antlr/v4/runtime/RecognitionException;)V

    goto :goto_6

    :cond_1d
    return-void
.end method
