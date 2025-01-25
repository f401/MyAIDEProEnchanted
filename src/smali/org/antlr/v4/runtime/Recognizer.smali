.class public abstract Lorg/antlr/v4/runtime/Recognizer;
.super Ljava/lang/Object;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Symbol:",
        "Ljava/lang/Object;",
        "ATNInterpreter:",
        "Lorg/antlr/v4/runtime/atn/ATNSimulator;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final EOF:I = -0x1

.field private static final ruleIndexMapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final tokenTypeMapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/antlr/v4/runtime/Vocabulary;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _interp:Lorg/antlr/v4/runtime/atn/ATNSimulator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TATNInterpreter;"
        }
    .end annotation
.end field

.field private _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/ANTLRErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private _stateNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/Recognizer;->tokenTypeMapCache:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/Recognizer;->ruleIndexMapCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/antlr/v4/runtime/Recognizer$1;

    invoke-direct {v0, p0}, Lorg/antlr/v4/runtime/Recognizer$1;-><init>(Lorg/antlr/v4/runtime/Recognizer;)V

    iput-object v0, p0, Lorg/antlr/v4/runtime/Recognizer;->_listeners:Ljava/util/List;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/Recognizer;->_stateNumber:I

    return-void
.end method


# virtual methods
.method public action(Lorg/antlr/v4/runtime/RuleContext;II)V
    .registers 4

    return-void
.end method

.method public addErrorListener(Lorg/antlr/v4/runtime/ANTLRErrorListener;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 218
    iget-object v0, p0, Lorg/antlr/v4/runtime/Recognizer;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 215
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getATN()Lorg/antlr/v4/runtime/atn/ATN;
.end method

.method public getErrorHeader(Lorg/antlr/v4/runtime/RecognitionException;)Ljava/lang/String;
    .registers 5

    .line 174
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/RecognitionException;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v0

    .line 175
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/RecognitionException;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object p1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result p1

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "line "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getErrorListenerDispatch()Lorg/antlr/v4/runtime/ANTLRErrorListener;
    .registers 3

    .line 235
    new-instance v0, Lorg/antlr/v4/runtime/ProxyErrorListener;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Recognizer;->getErrorListeners()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/ProxyErrorListener;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getErrorListeners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/antlr/v4/runtime/ANTLRErrorListener;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lorg/antlr/v4/runtime/Recognizer;->_listeners:Ljava/util/List;

    return-object v0
.end method

.method public abstract getGrammarFileName()Ljava/lang/String;
.end method

.method public abstract getInputStream()Lorg/antlr/v4/runtime/IntStream;
.end method

.method public getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TATNInterpreter;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/antlr/v4/runtime/Recognizer;->_interp:Lorg/antlr/v4/runtime/atn/ATNSimulator;

    return-object v0
.end method

.method public getParseInfo()Lorg/antlr/v4/runtime/atn/ParseInfo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRuleIndexMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Recognizer;->getRuleNames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 104
    sget-object v1, Lorg/antlr/v4/runtime/Recognizer;->ruleIndexMapCache:Ljava/util/Map;

    monitor-enter v1

    .line 105
    :try_start_9
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1c

    .line 107
    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/Utils;->toMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 108
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_1c
    monitor-exit v1

    return-object v2

    :catchall_1e
    move-exception v0

    .line 112
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw v0

    .line 101
    :cond_21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The current recognizer does not provide a list of rule names."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getRuleNames()[Ljava/lang/String;
.end method

.method public getSerializedATN()Ljava/lang/String;
    .registers 3

    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "there is no serialized ATN"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getState()I
    .registers 2

    .line 252
    iget v0, p0, Lorg/antlr/v4/runtime/Recognizer;->_stateNumber:I

    return v0
.end method

.method public getTokenErrorDisplay(Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_5

    .line 194
    const-string p1, "<no token>"

    return-object p1

    .line 195
    :cond_5
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 197
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 198
    const-string v0, "<EOF>"

    goto :goto_2c

    .line 201
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_2c
    :goto_2c
    const-string p1, "\n"

    const-string v1, "\\n"

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 205
    const-string v0, "\r"

    const-string v1, "\\r"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 206
    const-string v0, "\t"

    const-string v1, "\\t"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/antlr/v4/runtime/TokenFactory<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getTokenNames()[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getTokenType(Ljava/lang/String;)I
    .registers 3

    .line 116
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Recognizer;->getTokenTypeMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_11

    .line 117
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public getTokenTypeMap()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Recognizer;->getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v0

    .line 68
    sget-object v1, Lorg/antlr/v4/runtime/Recognizer;->tokenTypeMapCache:Ljava/util/Map;

    monitor-enter v1

    .line 69
    :try_start_7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_4d

    .line 71
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 72
    :goto_15
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Recognizer;->getATN()Lorg/antlr/v4/runtime/atn/ATN;

    move-result-object v4

    iget v4, v4, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    if-gt v3, v4, :cond_3a

    .line 73
    invoke-interface {v0, v3}, Lorg/antlr/v4/runtime/Vocabulary;->getLiteralName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2a

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_2a
    invoke-interface {v0, v3}, Lorg/antlr/v4/runtime/Vocabulary;->getSymbolicName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 84
    :cond_3a
    const-string v3, "EOF"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 86
    sget-object v3, Lorg/antlr/v4/runtime/Recognizer;->tokenTypeMapCache:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_4d
    monitor-exit v1

    return-object v2

    :catchall_4f
    move-exception v0

    .line 90
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_4f

    goto :goto_53

    :goto_52
    throw v0

    :goto_53
    goto :goto_52
.end method

.method public getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;
    .registers 2

    .line 58
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Recognizer;->getTokenNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/VocabularyImpl;->fromTokenNames([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v0

    return-object v0
.end method

.method public precpred(Lorg/antlr/v4/runtime/RuleContext;I)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public removeErrorListener(Lorg/antlr/v4/runtime/ANTLRErrorListener;)V
    .registers 3

    .line 222
    iget-object v0, p0, Lorg/antlr/v4/runtime/Recognizer;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeErrorListeners()V
    .registers 2

    .line 226
    iget-object v0, p0, Lorg/antlr/v4/runtime/Recognizer;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public sempred(Lorg/antlr/v4/runtime/RuleContext;II)Z
    .registers 4

    const/4 p1, 0x1

    return p1
.end method

.method public abstract setInputStream(Lorg/antlr/v4/runtime/IntStream;)V
.end method

.method public setInterpreter(Lorg/antlr/v4/runtime/atn/ATNSimulator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TATNInterpreter;)V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lorg/antlr/v4/runtime/Recognizer;->_interp:Lorg/antlr/v4/runtime/atn/ATNSimulator;

    return-void
.end method

.method public final setState(I)V
    .registers 2

    .line 264
    iput p1, p0, Lorg/antlr/v4/runtime/Recognizer;->_stateNumber:I

    return-void
.end method

.method public abstract setTokenFactory(Lorg/antlr/v4/runtime/TokenFactory;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/TokenFactory<",
            "*>;)V"
        }
    .end annotation
.end method
