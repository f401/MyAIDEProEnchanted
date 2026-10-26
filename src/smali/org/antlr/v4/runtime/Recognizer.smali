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
            "Ljava/util/Map",
            "<[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final tokenTypeMapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/antlr/v4/runtime/Vocabulary;",
            "Ljava/util/Map",
            "<",
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
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/ANTLRErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private _stateNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

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
    .locals 1

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
    .locals 0

    return-void
.end method

.method public addErrorListener(Lorg/antlr/v4/runtime/ANTLRErrorListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 218
    iget-object v0, p0, Lorg/antlr/v4/runtime/Recognizer;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getATN()Lorg/antlr/v4/runtime/atn/ATN;
.end method

.method public getErrorHeader(Lorg/antlr/v4/runtime/RecognitionException;)Ljava/lang/String;
    .locals 4

    .line 174
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/RecognitionException;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v0

    .line 175
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/RecognitionException;->getOffendingToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v1

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "line "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorListenerDispatch()Lorg/antlr/v4/runtime/ANTLRErrorListener;
    .locals 2

    .line 235
    new-instance v0, Lorg/antlr/v4/runtime/ProxyErrorListener;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Recognizer;->getErrorListeners()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/ProxyErrorListener;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getErrorListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
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
    .locals 1
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
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRuleIndexMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Recognizer;->getRuleNames()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 104
    sget-object v2, Lorg/antlr/v4/runtime/Recognizer;->ruleIndexMapCache:Ljava/util/Map;

    monitor-enter v2

    .line 105
    :try_start_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 107
    invoke-static {v1}, Lorg/antlr/v4/runtime/misc/Utils;->toMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 108
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    .line 112
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The current recognizer does not provide a list of rule names."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getRuleNames()[Ljava/lang/String;
.end method

.method public getSerializedATN()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "there is no serialized ATN"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getState()I
    .locals 1

    .line 252
    iget v0, p0, Lorg/antlr/v4/runtime/Recognizer;->_stateNumber:I

    return v0
.end method

.method public getTokenErrorDisplay(Lorg/antlr/v4/runtime/Token;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    .line 194
    const-string v0, "<no token>"

    .line 207
    :goto_0
    return-object v0

    .line 195
    :cond_0
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 197
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 198
    const-string v0, "<EOF>"

    .line 204
    :cond_1
    :goto_1
    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string v1, "\r"

    const-string v2, "\\r"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v1, "\t"

    const-string v2, "\\t"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public abstract getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/antlr/v4/runtime/TokenFactory",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getTokenNames()[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getTokenType(Ljava/lang/String;)I
    .locals 1

    .line 116
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Recognizer;->getTokenTypeMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTokenTypeMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Recognizer;->getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v1

    .line 68
    sget-object v2, Lorg/antlr/v4/runtime/Recognizer;->tokenTypeMapCache:Ljava/util/Map;

    monitor-enter v2

    .line 69
    :try_start_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_3

    .line 71
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 72
    :goto_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Recognizer;->getATN()Lorg/antlr/v4/runtime/atn/ATN;

    move-result-object v4

    iget v4, v4, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    if-gt v0, v4, :cond_2

    .line 73
    invoke-interface {v1, v0}, Lorg/antlr/v4/runtime/Vocabulary;->getLiteralName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    invoke-interface {v1, v0}, Lorg/antlr/v4/runtime/Vocabulary;->getSymbolicName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_2
    const-string v0, "EOF"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 86
    sget-object v3, Lorg/antlr/v4/runtime/Recognizer;->tokenTypeMapCache:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_3
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    .line 90
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Recognizer;->getTokenNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/VocabularyImpl;->fromTokenNames([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v0

    return-object v0
.end method

.method public precpred(Lorg/antlr/v4/runtime/RuleContext;I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeErrorListener(Lorg/antlr/v4/runtime/ANTLRErrorListener;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/antlr/v4/runtime/Recognizer;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeErrorListeners()V
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/antlr/v4/runtime/Recognizer;->_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public sempred(Lorg/antlr/v4/runtime/RuleContext;II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract setInputStream(Lorg/antlr/v4/runtime/IntStream;)V
.end method

.method public setInterpreter(Lorg/antlr/v4/runtime/atn/ATNSimulator;)V
    .locals 0
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
    .locals 0

    .line 264
    iput p1, p0, Lorg/antlr/v4/runtime/Recognizer;->_stateNumber:I

    return-void
.end method

.method public abstract setTokenFactory(Lorg/antlr/v4/runtime/TokenFactory;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/TokenFactory",
            "<*>;)V"
        }
    .end annotation
.end method
