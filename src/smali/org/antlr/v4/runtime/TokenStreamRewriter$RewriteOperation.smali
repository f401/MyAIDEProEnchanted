.class public Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;
.super Ljava/lang/Object;
.source "TokenStreamRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/TokenStreamRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RewriteOperation"
.end annotation


# instance fields
.field protected index:I

.field protected instructionIndex:I

.field protected text:Ljava/lang/Object;

.field final this$0:Lorg/antlr/v4/runtime/TokenStreamRewriter;


# direct methods
.method protected constructor <init>(Lorg/antlr/v4/runtime/TokenStreamRewriter;I)V
    .registers 3

    .line 105
    iput-object p1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->this$0:Lorg/antlr/v4/runtime/TokenStreamRewriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p2, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->index:I

    return-void
.end method

.method protected constructor <init>(Lorg/antlr/v4/runtime/TokenStreamRewriter;ILjava/lang/Object;)V
    .registers 4

    .line 109
    iput-object p1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->this$0:Lorg/antlr/v4/runtime/TokenStreamRewriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p2, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->index:I

    .line 111
    iput-object p3, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->text:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/StringBuilder;)I
    .registers 2

    .line 117
    iget p1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->index:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 123
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->this$0:Lorg/antlr/v4/runtime/TokenStreamRewriter;

    iget-object v0, v0, Lorg/antlr/v4/runtime/TokenStreamRewriter;->tokens:Lorg/antlr/v4/runtime/TokenStream;

    iget v2, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->index:I

    invoke-interface {v0, v2}, Lorg/antlr/v4/runtime/TokenStream;->get(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$RewriteOperation;->text:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
