.class public abstract Lorg/antlr/v4/runtime/Lexer;
.super Lorg/antlr/v4/runtime/Recognizer;
.source "Lexer.java"

# interfaces
.implements Lorg/antlr/v4/runtime/TokenSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/antlr/v4/runtime/Recognizer",
        "<",
        "Ljava/lang/Integer;",
        "Lorg/antlr/v4/runtime/atn/LexerATNSimulator;",
        ">;",
        "Lorg/antlr/v4/runtime/TokenSource;"
    }
.end annotation


# static fields
.field public static final DEFAULT_MODE:I = 0x0

.field public static final DEFAULT_TOKEN_CHANNEL:I = 0x0

.field public static final HIDDEN:I = 0x1

.field public static final MAX_CHAR_VALUE:I = 0x10ffff

.field public static final MIN_CHAR_VALUE:I = 0x0

.field public static final MORE:I = -0x2

.field public static final SKIP:I = -0x3


# instance fields
.field public _channel:I

.field protected _factory:Lorg/antlr/v4/runtime/TokenFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/TokenFactory",
            "<*>;"
        }
    .end annotation
.end field

.field public _hitEOF:Z

.field public _input:Lorg/antlr/v4/runtime/CharStream;

.field public _mode:I

.field public final _modeStack:Lorg/antlr/v4/runtime/misc/IntegerStack;

.field public _text:Ljava/lang/String;

.field public _token:Lorg/antlr/v4/runtime/Token;

.field protected _tokenFactorySourcePair:Lorg/antlr/v4/runtime/misc/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/misc/Pair",
            "<",
            "Lorg/antlr/v4/runtime/TokenSource;",
            "Lorg/antlr/v4/runtime/CharStream;",
            ">;"
        }
    .end annotation
.end field

.field public _tokenStartCharIndex:I

.field public _tokenStartCharPositionInLine:I

.field public _tokenStartLine:I

.field public _type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lorg/antlr/v4/runtime/Recognizer;-><init>()V

    .line 38
    sget-object v0, Lorg/antlr/v4/runtime/CommonTokenFactory;->DEFAULT:Lorg/antlr/v4/runtime/TokenFactory;

    iput-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_factory:Lorg/antlr/v4/runtime/TokenFactory;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenStartCharIndex:I

    .line 73
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntegerStack;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/misc/IntegerStack;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_modeStack:Lorg/antlr/v4/runtime/misc/IntegerStack;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/Lexer;->_mode:I

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/CharStream;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Lorg/antlr/v4/runtime/Recognizer;-><init>()V

    .line 38
    sget-object v0, Lorg/antlr/v4/runtime/CommonTokenFactory;->DEFAULT:Lorg/antlr/v4/runtime/TokenFactory;

    iput-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_factory:Lorg/antlr/v4/runtime/TokenFactory;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenStartCharIndex:I

    .line 73
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntegerStack;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/misc/IntegerStack;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_modeStack:Lorg/antlr/v4/runtime/misc/IntegerStack;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/Lexer;->_mode:I

    .line 84
    iput-object p1, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    .line 85
    new-instance v0, Lorg/antlr/v4/runtime/misc/Pair;

    invoke-direct {v0, p0, p1}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenFactorySourcePair:Lorg/antlr/v4/runtime/misc/Pair;

    return-void
.end method


# virtual methods
.method public emit()Lorg/antlr/v4/runtime/Token;
    .locals 9

    .line 245
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_factory:Lorg/antlr/v4/runtime/TokenFactory;

    iget-object v1, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenFactorySourcePair:Lorg/antlr/v4/runtime/misc/Pair;

    iget v2, p0, Lorg/antlr/v4/runtime/Lexer;->_type:I

    iget-object v3, p0, Lorg/antlr/v4/runtime/Lexer;->_text:Ljava/lang/String;

    iget v4, p0, Lorg/antlr/v4/runtime/Lexer;->_channel:I

    iget v5, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenStartCharIndex:I

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->getCharIndex()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenStartLine:I

    iget v8, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenStartCharPositionInLine:I

    invoke-interface/range {v0 .. v8}, Lorg/antlr/v4/runtime/TokenFactory;->create(Lorg/antlr/v4/runtime/misc/Pair;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 247
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/Lexer;->emit(Lorg/antlr/v4/runtime/Token;)V

    return-object v0
.end method

.method public emit(Lorg/antlr/v4/runtime/Token;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lorg/antlr/v4/runtime/Lexer;->_token:Lorg/antlr/v4/runtime/Token;

    return-void
.end method

.method public emitEOF()Lorg/antlr/v4/runtime/Token;
    .locals 9

    .line 252
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->getCharPositionInLine()I

    move-result v8

    .line 253
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->getLine()I

    move-result v7

    .line 254
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_factory:Lorg/antlr/v4/runtime/TokenFactory;

    iget-object v1, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenFactorySourcePair:Lorg/antlr/v4/runtime/misc/Pair;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v5}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v5

    iget-object v6, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v6}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface/range {v0 .. v8}, Lorg/antlr/v4/runtime/TokenFactory;->create(Lorg/antlr/v4/runtime/misc/Pair;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 256
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/Lexer;->emit(Lorg/antlr/v4/runtime/Token;)V

    return-object v0
.end method

.method public getAllTokens()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 343
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 344
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->nextToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 345
    :goto_0
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 346
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->nextToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getChannel()I
    .locals 1

    .line 320
    iget v0, p0, Lorg/antlr/v4/runtime/Lexer;->_channel:I

    return v0
.end method

.method public getChannelNames()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharErrorDisplay(I)Ljava/lang/String;
    .locals 3

    .line 395
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/Lexer;->getErrorDisplay(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharIndex()I
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v0

    return v0
.end method

.method public getCharPositionInLine()I
    .locals 1

    .line 267
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->getCharPositionInLine()I

    move-result v0

    return v0
.end method

.method public getErrorDisplay(I)Ljava/lang/String;
    .locals 2

    int-to-char v0, p1

    .line 376
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    const/16 v1, 0xd

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    .line 380
    :goto_0
    return-object v0

    .line 383
    :cond_0
    const-string v0, "\\n"

    goto :goto_0

    .line 386
    :cond_1
    const-string v0, "\\t"

    goto :goto_0

    .line 388
    :cond_2
    const-string v0, "\\r"

    goto :goto_0

    .line 380
    :cond_3
    const-string v0, "<EOF>"

    goto :goto_0
.end method

.method public getErrorDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-char v4, v2, v0

    .line 370
    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/Lexer;->getErrorDisplay(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Lorg/antlr/v4/runtime/CharStream;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    return-object v0
.end method

.method public bridge synthetic getInputStream()Lorg/antlr/v4/runtime/IntStream;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    return-object v0
.end method

.method public getLine()I
    .locals 1

    .line 262
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->getLine()I

    move-result v0

    return v0
.end method

.method public getModeNames()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/CharStream;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 287
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_text:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;

    iget-object v1, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->getText(Lorg/antlr/v4/runtime/CharStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getToken()Lorg/antlr/v4/runtime/Token;
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_token:Lorg/antlr/v4/runtime/Token;

    return-object v0
.end method

.method public getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/antlr/v4/runtime/TokenFactory",
            "<+",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_factory:Lorg/antlr/v4/runtime/TokenFactory;

    return-object v0
.end method

.method public getTokenNames()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 312
    iget v0, p0, Lorg/antlr/v4/runtime/Lexer;->_type:I

    return v0
.end method

.method public mode(I)V
    .locals 0

    .line 182
    iput p1, p0, Lorg/antlr/v4/runtime/Lexer;->_mode:I

    return-void
.end method

.method public more()V
    .locals 1

    .line 178
    const/4 v0, -0x2

    iput v0, p0, Lorg/antlr/v4/runtime/Lexer;->_type:I

    return-void
.end method

.method public nextToken()Lorg/antlr/v4/runtime/Token;
    .locals 5

    const/4 v1, -0x3

    .line 113
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    if-eqz v0, :cond_6

    .line 119
    invoke-interface {v0}, Lorg/antlr/v4/runtime/CharStream;->mark()I

    move-result v2

    .line 123
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/Lexer;->_hitEOF:Z

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->emitEOF()Lorg/antlr/v4/runtime/Token;

    .line 125
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_token:Lorg/antlr/v4/runtime/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :goto_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/CharStream;->release(I)V

    return-object v0

    .line 128
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_token:Lorg/antlr/v4/runtime/Token;

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/Lexer;->_channel:I

    .line 130
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenStartCharIndex:I

    .line 131
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->getCharPositionInLine()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenStartCharPositionInLine:I

    .line 132
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->getLine()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenStartLine:I

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_text:Ljava/lang/String;

    .line 135
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/Lexer;->_type:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :try_start_2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;

    iget-object v3, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    iget v4, p0, Lorg/antlr/v4/runtime/Lexer;->_mode:I

    invoke-virtual {v0, v3, v4}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->match(Lorg/antlr/v4/runtime/CharStream;I)I
    :try_end_2
    .catch Lorg/antlr/v4/runtime/LexerNoViableAltException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 148
    :goto_1
    :try_start_3
    iget-object v3, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 149
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/antlr/v4/runtime/Lexer;->_hitEOF:Z

    .line 151
    :cond_3
    iget v3, p0, Lorg/antlr/v4/runtime/Lexer;->_type:I

    if-nez v3, :cond_4

    iput v0, p0, Lorg/antlr/v4/runtime/Lexer;->_type:I

    .line 152
    :cond_4
    iget v0, p0, Lorg/antlr/v4/runtime/Lexer;->_type:I

    if-eq v0, v1, :cond_0

    const/4 v3, -0x2

    if-eq v0, v3, :cond_2

    .line 156
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_token:Lorg/antlr/v4/runtime/Token;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->emit()Lorg/antlr/v4/runtime/Token;

    .line 157
    :cond_5
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_token:Lorg/antlr/v4/runtime/Token;

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/Lexer;->notifyListeners(Lorg/antlr/v4/runtime/LexerNoViableAltException;)V

    .line 145
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/Lexer;->recover(Lorg/antlr/v4/runtime/LexerNoViableAltException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_1

    .line 157
    :catchall_0
    move-exception v0

    .line 163
    iget-object v1, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/CharStream;->release(I)V

    throw v0

    .line 114
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "nextToken requires a non-null input stream."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyListeners(Lorg/antlr/v4/runtime/LexerNoViableAltException;)V
    .locals 7

    .line 360
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    iget v1, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenStartCharIndex:I

    invoke-interface {v0}, Lorg/antlr/v4/runtime/CharStream;->index()I

    move-result v2

    invoke-static {v1, v2}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/CharStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token recognition error at: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/Lexer;->getErrorDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 363
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->getErrorListenerDispatch()Lorg/antlr/v4/runtime/ANTLRErrorListener;

    move-result-object v0

    .line 364
    const/4 v2, 0x0

    iget v3, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenStartLine:I

    iget v4, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenStartCharPositionInLine:I

    move-object v1, p0

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->syntaxError(Lorg/antlr/v4/runtime/Recognizer;Ljava/lang/Object;IILjava/lang/String;Lorg/antlr/v4/runtime/RecognitionException;)V

    return-void
.end method

.method public popMode()I
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_modeStack:Lorg/antlr/v4/runtime/misc/IntegerStack;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntegerStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_modeStack:Lorg/antlr/v4/runtime/misc/IntegerStack;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntegerStack;->pop()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/Lexer;->mode(I)V

    .line 195
    iget v0, p0, Lorg/antlr/v4/runtime/Lexer;->_mode:I

    return v0

    .line 192
    :cond_0
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0
.end method

.method public pushMode(I)V
    .locals 2

    .line 187
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_modeStack:Lorg/antlr/v4/runtime/misc/IntegerStack;

    iget v1, p0, Lorg/antlr/v4/runtime/Lexer;->_mode:I

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/IntegerStack;->push(I)V

    .line 188
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/Lexer;->mode(I)V

    return-void
.end method

.method public recover(Lorg/antlr/v4/runtime/LexerNoViableAltException;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/CharStream;->LA(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 355
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;

    iget-object v1, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->consume(Lorg/antlr/v4/runtime/CharStream;)V

    :cond_0
    return-void
.end method

.method public recover(Lorg/antlr/v4/runtime/RecognitionException;)V
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/CharStream;->consume()V

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/CharStream;->seek(I)V

    .line 93
    :cond_0
    iput-object v3, p0, Lorg/antlr/v4/runtime/Lexer;->_token:Lorg/antlr/v4/runtime/Token;

    .line 94
    iput v1, p0, Lorg/antlr/v4/runtime/Lexer;->_type:I

    .line 95
    iput v1, p0, Lorg/antlr/v4/runtime/Lexer;->_channel:I

    .line 96
    iput v2, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenStartCharIndex:I

    .line 97
    iput v2, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenStartCharPositionInLine:I

    .line 98
    iput v2, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenStartLine:I

    .line 99
    iput-object v3, p0, Lorg/antlr/v4/runtime/Lexer;->_text:Ljava/lang/String;

    .line 101
    iput-boolean v1, p0, Lorg/antlr/v4/runtime/Lexer;->_hitEOF:Z

    .line 102
    iput v1, p0, Lorg/antlr/v4/runtime/Lexer;->_mode:I

    .line 103
    iget-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_modeStack:Lorg/antlr/v4/runtime/misc/IntegerStack;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntegerStack;->clear()V

    .line 105
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->reset()V

    return-void
.end method

.method public setChannel(I)V
    .locals 0

    .line 316
    iput p1, p0, Lorg/antlr/v4/runtime/Lexer;->_channel:I

    return-void
.end method

.method public setCharPositionInLine(I)V
    .locals 1

    .line 275
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;

    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->setCharPositionInLine(I)V

    return-void
.end method

.method public setInputStream(Lorg/antlr/v4/runtime/IntStream;)V
    .locals 2

    const/4 v1, 0x0

    .line 211
    iput-object v1, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    .line 212
    new-instance v0, Lorg/antlr/v4/runtime/misc/Pair;

    invoke-direct {v0, p0, v1}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenFactorySourcePair:Lorg/antlr/v4/runtime/misc/Pair;

    .line 213
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->reset()V

    .line 214
    check-cast p1, Lorg/antlr/v4/runtime/CharStream;

    iput-object p1, p0, Lorg/antlr/v4/runtime/Lexer;->_input:Lorg/antlr/v4/runtime/CharStream;

    .line 215
    new-instance v0, Lorg/antlr/v4/runtime/misc/Pair;

    invoke-direct {v0, p0, p1}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/antlr/v4/runtime/Lexer;->_tokenFactorySourcePair:Lorg/antlr/v4/runtime/misc/Pair;

    return-void
.end method

.method public setLine(I)V
    .locals 1

    .line 271
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/Lexer;->getInterpreter()Lorg/antlr/v4/runtime/atn/ATNSimulator;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;

    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/atn/LexerATNSimulator;->setLine(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lorg/antlr/v4/runtime/Lexer;->_text:Ljava/lang/String;

    return-void
.end method

.method public setToken(Lorg/antlr/v4/runtime/Token;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lorg/antlr/v4/runtime/Lexer;->_token:Lorg/antlr/v4/runtime/Token;

    return-void
.end method

.method public setTokenFactory(Lorg/antlr/v4/runtime/TokenFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/TokenFactory",
            "<*>;)V"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lorg/antlr/v4/runtime/Lexer;->_factory:Lorg/antlr/v4/runtime/TokenFactory;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 308
    iput p1, p0, Lorg/antlr/v4/runtime/Lexer;->_type:I

    return-void
.end method

.method public skip()V
    .locals 1

    .line 174
    const/4 v0, -0x3

    iput v0, p0, Lorg/antlr/v4/runtime/Lexer;->_type:I

    return-void
.end method
