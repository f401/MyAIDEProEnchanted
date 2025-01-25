.class Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertAfterOp;
.super Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;
.source "TokenStreamRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/TokenStreamRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InsertAfterOp"
.end annotation


# instance fields
.field final this$0:Lorg/antlr/v4/runtime/TokenStreamRewriter;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/TokenStreamRewriter;ILjava/lang/Object;)V
    .registers 4

    .line 150
    iput-object p1, p0, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertAfterOp;->this$0:Lorg/antlr/v4/runtime/TokenStreamRewriter;

    .line 151
    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/TokenStreamRewriter$InsertBeforeOp;-><init>(Lorg/antlr/v4/runtime/TokenStreamRewriter;ILjava/lang/Object;)V

    return-void
.end method
