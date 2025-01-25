.class Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;
.super Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;
.source "TokenStreamRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/TokenStreamRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReplaceOp"
.end annotation


# instance fields
.field protected lastIndex:I

.field final this$0:Lorg/antlr/v4/runtime/TokenStreamRewriter;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/TokenStreamRewriter;IILjava/lang/Object;)V
    .registers 5

    .line 160
    iput-object p1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->this$0:Lorg/antlr/v4/runtime/TokenStreamRewriter;

    .line 161
    invoke-direct {p0, p1, p2, p4}, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;-><init>(Lorg/antlr/v4/runtime/TokenStreamRewriter;ILjava/lang/Object;)V

    .line 162
    iput p3, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/StringBuilder;)I
    .registers 3

    .line 166
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 167
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    :cond_9
    iget p1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 173
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    const-string v1, ".."

    if-nez v0, :cond_34

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<DeleteOp@"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->this$0:Lorg/antlr/v4/runtime/TokenStreamRewriter;

    iget-object v2, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    iget v3, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    invoke-interface {v2, v3}, Lorg/antlr/v4/runtime/TokenStream;->get(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->this$0:Lorg/antlr/v4/runtime/TokenStreamRewriter;

    iget-object v1, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    iget v2, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/TokenStream;->get(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 177
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<ReplaceOp@"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->this$0:Lorg/antlr/v4/runtime/TokenStreamRewriter;

    iget-object v2, v2, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    iget v3, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->index:I

    invoke-interface {v2, v3}, Lorg/antlr/v4/runtime/TokenStream;->get(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->this$0:Lorg/antlr/v4/runtime/TokenStreamRewriter;

    iget-object v1, v1, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    iget v2, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->lastIndex:I

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/TokenStream;->get(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$ReplaceOp;->text:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
