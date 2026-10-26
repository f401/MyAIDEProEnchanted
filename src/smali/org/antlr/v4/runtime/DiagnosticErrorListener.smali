.class public Lorg/antlr/v4/runtime/DiagnosticErrorListener;
.super Lorg/antlr/v4/runtime/BaseErrorListener;
.source "DiagnosticErrorListener.java"


# instance fields
.field protected final exactOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/DiagnosticErrorListener;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/antlr/v4/runtime/BaseErrorListener;-><init>()V

    .line 59
    iput-boolean p1, p0, Lorg/antlr/v4/runtime/DiagnosticErrorListener;->exactOnly:Z

    return-void
.end method


# virtual methods
.method protected getConflictingAlts(Ljava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/BitSet;
    .locals 2

    if-eqz p1, :cond_1

    .line 148
    :cond_0
    return-object p1

    .line 146
    :cond_1
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    .line 147
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/ATNConfigSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNConfig;

    .line 148
    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNConfig;->alt:I

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method protected getDecisionDescription(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;)Ljava/lang/String;
    .locals 5

    .line 114
    iget v0, p2, Lorg/antlr/v4/runtime/dfa/DFA;->decision:I

    .line 115
    iget-object v1, p2, Lorg/antlr/v4/runtime/dfa/DFA;->atnStartState:Lorg/antlr/v4/runtime/atn/DecisionState;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/DecisionState;->ruleIndex:I

    .line 117
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getRuleNames()[Ljava/lang/String;

    move-result-object v2

    if-ltz v1, :cond_0

    .line 118
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 119
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    .line 122
    :cond_1
    aget-object v1, v2, v1

    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_3
    const-string v2, "%d (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public reportAmbiguity(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IIZLjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .locals 6

    .line 71
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/DiagnosticErrorListener;->exactOnly:Z

    if-eqz v0, :cond_0

    if-nez p5, :cond_0

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/DiagnosticErrorListener;->getDecisionDescription(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p0, p6, p7}, Lorg/antlr/v4/runtime/DiagnosticErrorListener;->getConflictingAlts(Ljava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)Ljava/util/BitSet;

    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getTokenStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v2

    invoke-static {p3, p4}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/antlr/v4/runtime/TokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v2

    .line 79
    const-string v3, "reportAmbiguity d=%s: ambigAlts=%s, input=\'%s\'"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/Parser;->notifyErrorListeners(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reportAttemptingFullContext(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IILjava/util/BitSet;Lorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .locals 5

    .line 92
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/DiagnosticErrorListener;->getDecisionDescription(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getTokenStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v1

    invoke-static {p3, p4}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/TokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v2, "reportAttemptingFullContext d=%s, input=\'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/Parser;->notifyErrorListeners(Ljava/lang/String;)V

    return-void
.end method

.method public reportContextSensitivity(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;IIILorg/antlr/v4/runtime/atn/ATNConfigSet;)V
    .locals 5

    .line 107
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/DiagnosticErrorListener;->getDecisionDescription(Lorg/antlr/v4/runtime/Parser;Lorg/antlr/v4/runtime/dfa/DFA;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Parser;->getTokenStream()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v1

    invoke-static {p3, p4}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/TokenStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v1

    .line 109
    const-string v2, "reportContextSensitivity d=%s, input=\'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/Parser;->notifyErrorListeners(Ljava/lang/String;)V

    return-void
.end method
