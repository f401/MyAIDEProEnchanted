.class Lorg/apache/commons/lang3/builder/DiffBuilder$11;
.super Lorg/apache/commons/lang3/builder/Diff;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/builder/Diff",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

.field final val$lhs:I

.field final val$rhs:I


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;II)V
    .registers 5

    .line 572
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$11;->this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

    iput p3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$11;->val$lhs:I

    iput p4, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$11;->val$rhs:I

    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/Integer;
    .registers 2

    .line 577
    iget v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$11;->val$lhs:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeft()Ljava/lang/Object;
    .registers 2

    .line 572
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$11;->getLeft()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/Integer;
    .registers 2

    .line 582
    iget v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$11;->val$rhs:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .registers 2

    .line 572
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$11;->getRight()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
