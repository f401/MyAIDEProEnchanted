.class Lcom/google/common/util/concurrent/Striped$CompactStriped;
.super Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompactStriped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped",
        "<T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILcom/google/common/base/Supplier;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/base/Supplier",
            "<T",
            "L;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 408
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;-><init>(I)V

    .line 409
    const/high16 v0, 0x40000000  # 2.0f

    if-gt p1, v0, :cond_24

    const/4 v0, 0x1

    :goto_9
    const-string v2, "Stripes must be <= 2^30)"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 411
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->mask:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    .line 412
    :goto_16
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    array-length v2, v0

    if-ge v1, v2, :cond_26

    .line 413
    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_24
    move v0, v1

    .line 409
    goto :goto_9

    .line 415
    :cond_26
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/common/base/Supplier;Lcom/google/common/util/concurrent/Striped$1;)V
    .registers 4

    .line 403
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Striped$CompactStriped;-><init>(ILcom/google/common/base/Supplier;)V

    return-void
.end method


# virtual methods
.method public getAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 425
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
