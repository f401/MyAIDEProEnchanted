.class public Lorg/antlr/v4/runtime/DiagnosticErrorListener;
.super Lorg/antlr/v4/runtime/BaseErrorListener;
.source "DiagnosticErrorListener.java"


# instance fields
.field protected final exactOnly:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/DiagnosticErrorListener;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 58
    invoke-direct {p0}, Lorg/antlr/v4/runtime/BaseErrorListener;-><init>()V

    .line 59
    iput-boolean p1, p0, Lorg/antlr/v4/runtime/DiagnosticErrorListener;->exactOnly:Z

    return-void
.end method


# virtual methods
.method protected getConflictingAlts(Ljava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/BitSet;
    .registers 4

    if-eqz p1, :cond_3

    return-object p1

    .line 146
    :cond_3
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    .line 147
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 148
    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_c

    :cond_1e
    return-object p1
.end method

.method protected getDecisionDescription(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;)Ljava/lang/String;
    .registers 5

    .line 114
    iget v0, p2, Lorg/antlr/v4/runtime/dfa/DFA;->decision:I

    .line 115
    iget-object p2, p2, Lorg/antlr/v4/runtime/dfa/DFA;->atnStartState:Lorg/antlr/v4/runtime/atn/DecisionState;

    iget p2, p2, Lorg/antlr/v4/runtime/atn/DecisionState;->ruleIndex:I

    .line 117
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getRuleNames()[Ljava/lang/String;

    move-result-object p1

    if-ltz p2, :cond_34

    .line 118
    array-length v1, p1

    if-lt p2, v1, :cond_10

    goto :goto_34

    .line 122
    :cond_10
    aget-object p1, p1, p2

    if-eqz p1, :cond_2f

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1b

    goto :goto_2f

    .line 127
    :cond_1b
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string p1, "%d (%s)"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 124
    :cond_2f
    :goto_2f
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 119
    :cond_34
    :goto_34
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public reportAmbiguity(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IIZLjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .registers 9

    .line 71
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/DiagnosticErrorListener;->exactOnly:Z

    if-eqz v0, :cond_7

    if-nez p5, :cond_7

    return-void

    .line 76
    :cond_7
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/DiagnosticErrorListener;->getDecisionDescription(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;)Ljava/lang/String;

    move-result-object p2

    .line 77
    invoke-virtual {p0, p6, p7}, Lorg/antlr/v4/runtime/DiagnosticErrorListener;->getConflictingAlts(Ljava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/BitSet;

    move-result-object p5

    .line 78
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getTokenStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object p6

    invoke-static {p3, p4}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object p3

    invoke-interface {p6, p3}, Lorg/antlr/v4/runtime/TokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object p3

    .line 79
    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p2, p4, p6

    const/4 p2, 0x1

    aput-object p5, p4, p2

    const/4 p2, 0x2

    aput-object p3, p4, p2

    const-string p2, "reportAmbiguity d=%s: ambigAlts=%s, input=\'%s\'"

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 80
    invoke-virtual {p1, p2}, Lorg/antlr/v4/runtime/Parser;->notifyErrorListeners(Ljava/lang/String;)V

    return-void
.end method

.method public reportAttemptingFullContext(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IILjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .registers 7

    .line 92
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/DiagnosticErrorListener;->getDecisionDescription(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;)Ljava/lang/String;

    move-result-object p2

    .line 93
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getTokenStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object p5

    invoke-static {p3, p4}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object p3

    invoke-interface {p5, p3}, Lorg/antlr/v4/runtime/TokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object p3

    .line 94
    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const/4 p2, 0x1

    aput-object p3, p4, p2

    const-string p2, "reportAttemptingFullContext d=%s, input=\'%s\'"

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Lorg/antlr/v4/runtime/Parser;->notifyErrorListeners(Ljava/lang/String;)V

    return-void
.end method

.method public reportContextSensitivity(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IIILorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .registers 7

    .line 107
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/DiagnosticErrorListener;->getDecisionDescription(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;)Ljava/lang/String;

    move-result-object p2

    .line 108
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getTokenStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object p5

    invoke-static {p3, p4}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object p3

    invoke-interface {p5, p3}, Lorg/antlr/v4/runtime/TokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object p3

    .line 109
    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const/4 p2, 0x1

    aput-object p3, p4, p2

    const-string p2, "reportContextSensitivity d=%s, input=\'%s\'"

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 110
    invoke-virtual {p1, p2}, Lorg/antlr/v4/runtime/Parser;->notifyErrorListeners(Ljava/lang/String;)V

    return-void
.end method
