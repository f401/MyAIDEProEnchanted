.class Lorg/apache/commons/lang3/builder/DiffBuilder$6;
.super Lorg/apache/commons/lang3/builder/Diff;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;[C[C)Lorg/apache/commons/lang3/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/builder/Diff",
        "<[",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

.field final val$lhs:[C

.field final val$rhs:[C


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[C[C)V
    .registers 5

    .line 372
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$6;->this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

    iput-object p3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$6;->val$lhs:[C

    iput-object p4, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$6;->val$rhs:[C

    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .registers 2

    .line 372
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$6;->getLeft()[Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Character;
    .registers 2

    .line 377
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$6;->val$lhs:[C

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->toObject([C)[Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .registers 2

    .line 372
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$6;->getRight()[Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Character;
    .registers 2

    .line 382
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$6;->val$rhs:[C

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->toObject([C)[Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method
