.class Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;
.super Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;
.source "TokenStreamRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/TokenStreamRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InsertBeforeOp"
.end annotation


# instance fields
.field final this$0:Lorg/antlr/v4/runtime/TokenStreamRewriter;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/TokenStreamRewriter;ILjava/lang/Object;)V
    .registers 4

    .line 131
    iput-object p1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->this$0:Lorg/antlr/v4/runtime/TokenStreamRewriter;

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;-><init>(Lorg/antlr/v4/runtime/TokenStreamRewriter;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/StringBuilder;)I
    .registers 4

    .line 137
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->text:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->this$0:Lorg/antlr/v4/runtime/TokenStreamRewriter;

    iget-object v0, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    iget v1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/TokenStream;->get(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    .line 139
    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->this$0:Lorg/antlr/v4/runtime/TokenStreamRewriter;

    iget-object v0, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    iget v1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/TokenStream;->get(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_27
    iget p1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;->index:I

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
