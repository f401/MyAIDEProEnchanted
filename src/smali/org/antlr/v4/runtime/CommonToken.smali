.class public Lorg/antlr/v4/runtime/CommonToken;
.super Ljava/lang/Object;
.source "CommonToken.java"

# interfaces
.implements Lorg/antlr/v4/runtime/WritableToken;
.implements Ljava/io/Serializable;


# static fields
.field protected static final EMPTY_SOURCE:Lorg/antlr/v4/runtime/misc/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/misc/Pair<",
            "Lorg/antlr/v4/runtime/TokenSource;",
            "Lorg/antlr/v4/runtime/CharStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected channel:I

.field protected charPositionInLine:I

.field protected index:I

.field protected line:I

.field protected source:Lorg/antlr/v4/runtime/misc/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/misc/Pair<",
            "Lorg/antlr/v4/runtime/TokenSource;",
            "Lorg/antlr/v4/runtime/CharStream;",
            ">;"
        }
    .end annotation
.end field

.field protected start:I

.field protected stop:I

.field protected text:Ljava/lang/String;

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lorg/antlr/v4/runtime/misc/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lorg/antlr/v4/runtime/CommonToken;->EMPTY_SOURCE:Lorg/antlr/v4/runtime/misc/Pair;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/CommonToken;->charPositionInLine:I

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lorg/antlr/v4/runtime/CommonToken;->channel:I

    .line 68
    iput v0, p0, Lorg/antlr/v4/runtime/CommonToken;->index:I

    .line 88
    iput p1, p0, Lorg/antlr/v4/runtime/CommonToken;->type:I

    .line 89
    sget-object p1, Lorg/antlr/v4/runtime/CommonToken;->EMPTY_SOURCE:Lorg/antlr/v4/runtime/misc/Pair;

    iput-object p1, p0, Lorg/antlr/v4/runtime/CommonToken;->source:Lorg/antlr/v4/runtime/misc/Pair;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/CommonToken;->charPositionInLine:I

    .line 68
    iput v0, p0, Lorg/antlr/v4/runtime/CommonToken;->index:I

    .line 112
    iput p1, p0, Lorg/antlr/v4/runtime/CommonToken;->type:I

    .line 113
    const/4 p1, 0x0

    iput p1, p0, Lorg/antlr/v4/runtime/CommonToken;->channel:I

    .line 114
    iput-object p2, p0, Lorg/antlr/v4/runtime/CommonToken;->text:Ljava/lang/String;

    .line 115
    sget-object p1, Lorg/antlr/v4/runtime/CommonToken;->EMPTY_SOURCE:Lorg/antlr/v4/runtime/misc/Pair;

    iput-object p1, p0, Lorg/antlr/v4/runtime/CommonToken;->source:Lorg/antlr/v4/runtime/misc/Pair;

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/Token;)V
    .registers 4

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/CommonToken;->charPositionInLine:I

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lorg/antlr/v4/runtime/CommonToken;->channel:I

    .line 68
    iput v0, p0, Lorg/antlr/v4/runtime/CommonToken;->index:I

    .line 132
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/CommonToken;->type:I

    .line 133
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/CommonToken;->line:I

    .line 134
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/CommonToken;->index:I

    .line 135
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/CommonToken;->charPositionInLine:I

    .line 136
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getChannel()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/CommonToken;->channel:I

    .line 137
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getStartIndex()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/CommonToken;->start:I

    .line 138
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getStopIndex()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/CommonToken;->stop:I

    .line 140
    instance-of v0, p1, Lorg/antlr/v4/runtime/CommonToken;

    if-eqz v0, :cond_44

    .line 141
    check-cast p1, Lorg/antlr/v4/runtime/CommonToken;

    iget-object v0, p1, Lorg/antlr/v4/runtime/CommonToken;->text:Ljava/lang/String;

    iput-object v0, p0, Lorg/antlr/v4/runtime/CommonToken;->text:Ljava/lang/String;

    .line 142
    iget-object p1, p1, Lorg/antlr/v4/runtime/CommonToken;->source:Lorg/antlr/v4/runtime/misc/Pair;

    iput-object p1, p0, Lorg/antlr/v4/runtime/CommonToken;->source:Lorg/antlr/v4/runtime/misc/Pair;

    goto :goto_59

    .line 145
    :cond_44
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/CommonToken;->text:Ljava/lang/String;

    .line 146
    new-instance v0, Lorg/antlr/v4/runtime/misc/Pair;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v1

    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/antlr/v4/runtime/CommonToken;->source:Lorg/antlr/v4/runtime/misc/Pair;

    :goto_59
    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/misc/Pair;IIII)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/misc/Pair<",
            "Lorg/antlr/v4/runtime/TokenSource;",
            "Lorg/antlr/v4/runtime/CharStream;",
            ">;IIII)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/CommonToken;->charPositionInLine:I

    .line 68
    iput v0, p0, Lorg/antlr/v4/runtime/CommonToken;->index:I

    .line 93
    iput-object p1, p0, Lorg/antlr/v4/runtime/CommonToken;->source:Lorg/antlr/v4/runtime/misc/Pair;

    .line 94
    iput p2, p0, Lorg/antlr/v4/runtime/CommonToken;->type:I

    .line 95
    iput p3, p0, Lorg/antlr/v4/runtime/CommonToken;->channel:I

    .line 96
    iput p4, p0, Lorg/antlr/v4/runtime/CommonToken;->start:I

    .line 97
    iput p5, p0, Lorg/antlr/v4/runtime/CommonToken;->stop:I

    .line 98
    iget-object p2, p1, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    if-eqz p2, :cond_2a

    .line 99
    iget-object p2, p1, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    check-cast p2, Lorg/antlr/v4/runtime/TokenSource;

    invoke-interface {p2}, Lorg/antlr/v4/runtime/TokenSource;->getLine()I

    move-result p2

    iput p2, p0, Lorg/antlr/v4/runtime/CommonToken;->line:I

    .line 100
    iget-object p1, p1, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    check-cast p1, Lorg/antlr/v4/runtime/TokenSource;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/TokenSource;->getCharPositionInLine()I

    move-result p1

    iput p1, p0, Lorg/antlr/v4/runtime/CommonToken;->charPositionInLine:I

    :cond_2a
    return-void
.end method


# virtual methods
.method public getChannel()I
    .registers 2

    .line 208
    iget v0, p0, Lorg/antlr/v4/runtime/CommonToken;->channel:I

    return v0
.end method

.method public getCharPositionInLine()I
    .registers 2

    .line 198
    iget v0, p0, Lorg/antlr/v4/runtime/CommonToken;->charPositionInLine:I

    return v0
.end method

.method public getInputStream()Lorg/antlr/v4/runtime/CharStream;
    .registers 2

    .line 256
    iget-object v0, p0, Lorg/antlr/v4/runtime/CommonToken;->source:Lorg/antlr/v4/runtime/misc/Pair;

    iget-object v0, v0, Lorg/antlr/v4/runtime/misc/Pair;->b:Ljava/lang/Object;

    check-cast v0, Lorg/antlr/v4/runtime/CharStream;

    return-object v0
.end method

.method public getLine()I
    .registers 2

    .line 193
    iget v0, p0, Lorg/antlr/v4/runtime/CommonToken;->line:I

    return v0
.end method

.method public getStartIndex()I
    .registers 2

    .line 223
    iget v0, p0, Lorg/antlr/v4/runtime/CommonToken;->start:I

    return v0
.end method

.method public getStopIndex()I
    .registers 2

    .line 232
    iget v0, p0, Lorg/antlr/v4/runtime/CommonToken;->stop:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .line 162
    iget-object v0, p0, Lorg/antlr/v4/runtime/CommonToken;->text:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 166
    :cond_5
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CommonToken;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_d
    invoke-interface {v0}, Lorg/antlr/v4/runtime/CharStream;->size()I

    move-result v1

    .line 169
    iget v2, p0, Lorg/antlr/v4/runtime/CommonToken;->start:I

    if-ge v2, v1, :cond_22

    iget v3, p0, Lorg/antlr/v4/runtime/CommonToken;->stop:I

    if-ge v3, v1, :cond_22

    .line 170
    invoke-static {v2, v3}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/CharStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :cond_22
    const-string v0, "<EOF>"

    return-object v0
.end method

.method public getTokenIndex()I
    .registers 2

    .line 241
    iget v0, p0, Lorg/antlr/v4/runtime/CommonToken;->index:I

    return v0
.end method

.method public getTokenSource()Lorg/antlr/v4/runtime/TokenSource;
    .registers 2

    .line 251
    iget-object v0, p0, Lorg/antlr/v4/runtime/CommonToken;->source:Lorg/antlr/v4/runtime/misc/Pair;

    iget-object v0, v0, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    check-cast v0, Lorg/antlr/v4/runtime/TokenSource;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 152
    iget v0, p0, Lorg/antlr/v4/runtime/CommonToken;->type:I

    return v0
.end method

.method public setChannel(I)V
    .registers 2

    .line 213
    iput p1, p0, Lorg/antlr/v4/runtime/CommonToken;->channel:I

    return-void
.end method

.method public setCharPositionInLine(I)V
    .registers 2

    .line 203
    iput p1, p0, Lorg/antlr/v4/runtime/CommonToken;->charPositionInLine:I

    return-void
.end method

.method public setLine(I)V
    .registers 2

    .line 157
    iput p1, p0, Lorg/antlr/v4/runtime/CommonToken;->line:I

    return-void
.end method

.method public setStartIndex(I)V
    .registers 2

    .line 227
    iput p1, p0, Lorg/antlr/v4/runtime/CommonToken;->start:I

    return-void
.end method

.method public setStopIndex(I)V
    .registers 2

    .line 236
    iput p1, p0, Lorg/antlr/v4/runtime/CommonToken;->stop:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lorg/antlr/v4/runtime/CommonToken;->text:Ljava/lang/String;

    return-void
.end method

.method public setTokenIndex(I)V
    .registers 2

    .line 246
    iput p1, p0, Lorg/antlr/v4/runtime/CommonToken;->index:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 218
    iput p1, p0, Lorg/antlr/v4/runtime/CommonToken;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/CommonToken;->toString(Lorg/antlr/v4/runtime/Recognizer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/antlr/v4/runtime/Recognizer;)Ljava/lang/String;
    .registers 8

    .line 267
    iget v0, p0, Lorg/antlr/v4/runtime/CommonToken;->channel:I

    if-lez v0, :cond_15

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ",channel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/antlr/v4/runtime/CommonToken;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 267
    :cond_15
    const-string v0, ""

    .line 270
    :goto_17
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CommonToken;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 272
    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 273
    const-string v2, "\r"

    const-string v3, "\\r"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 274
    const-string v2, "\t"

    const-string v3, "\\t"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    .line 277
    :cond_36
    const-string v1, "<no text>"

    .line 279
    :goto_38
    iget v2, p0, Lorg/antlr/v4/runtime/CommonToken;->type:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_4a

    .line 281
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/Recognizer;->getVocabulary()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object p1

    iget v2, p0, Lorg/antlr/v4/runtime/CommonToken;->type:I

    invoke-interface {p1, v2}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object v2

    .line 283
    :cond_4a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "[@"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CommonToken;->getTokenIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/antlr/v4/runtime/CommonToken;->start:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/antlr/v4/runtime/CommonToken;->stop:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "=\'"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',<"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/antlr/v4/runtime/CommonToken;->line:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CommonToken;->getCharPositionInLine()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
