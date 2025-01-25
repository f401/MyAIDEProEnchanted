.class public Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;
.super Ljava/lang/Object;
.source "RuleTagToken.java"

# interfaces
.implements Lorg/antlr/v4/runtime/Token;


# instance fields
.field private final bypassTokenType:I

.field private final label:Ljava/lang/String;

.field private final ruleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_12

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 64
    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->ruleName:Ljava/lang/String;

    .line 65
    iput p2, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->bypassTokenType:I

    .line 66
    iput-object p3, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->label:Ljava/lang/String;

    return-void

    .line 61
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ruleName cannot be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getChannel()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCharPositionInLine()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getInputStream()Lorg/antlr/v4/runtime/CharStream;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLine()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getRuleName()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->ruleName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartIndex()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getStopIndex()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .line 108
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->label:Ljava/lang/String;

    const-string v1, ">"

    const-string v2, "<"

    if-eqz v0, :cond_24

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->ruleName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->ruleName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenIndex()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getTokenSource()Lorg/antlr/v4/runtime/TokenSource;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 123
    iget v0, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->bypassTokenType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->ruleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->bypassTokenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
