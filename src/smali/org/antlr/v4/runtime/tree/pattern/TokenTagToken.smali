.class public Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;
.super Lorg/antlr/v4/runtime/CommonToken;
.source "TokenTagToken.java"


# instance fields
.field private final label:Ljava/lang/String;

.field private final tokenName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p2}, Lorg/antlr/v4/runtime/CommonToken;-><init>(I)V

    .line 51
    iput-object p1, p0, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;->tokenName:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;->tokenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;->tokenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTokenName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;->tokenName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;->tokenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/antlr/v4/runtime/tree/pattern/TokenTagToken;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
