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
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->ruleName:Ljava/lang/String;

    .line 65
    iput p2, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->bypassTokenType:I

    .line 66
    iput-object p3, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->label:Ljava/lang/String;

    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ruleName cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getChannel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCharPositionInLine()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getInputStream()Lorg/antlr/v4/runtime/CharStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLine()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getRuleName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->ruleName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getStopIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->ruleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->ruleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTokenIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getTokenSource()Lorg/antlr/v4/runtime/TokenSource;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 123
    iget v0, p0, Lorg/antlr/v4/runtime/tree/pattern/RuleTagToken;->bypassTokenType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

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
