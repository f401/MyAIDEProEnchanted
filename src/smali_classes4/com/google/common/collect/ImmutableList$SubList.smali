.class Lcom/google/common/collect/ImmutableList$SubList;
.super Lcom/google/common/collect/ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final transient length:I

.field final transient offset:I

.field final this$0:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;II)V
    .registers 4

    .line 437
    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$SubList;->this$0:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 438
    iput p2, p0, Lcom/google/common/collect/ImmutableList$SubList;->offset:I

    .line 439
    iput p3, p0, Lcom/google/common/collect/ImmutableList$SubList;->length:I

    .line 440
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 464
    iget v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->length:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 465
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->this$0:Lcom/google/common/collect/ImmutableList;

    iget v1, p0, Lcom/google/common/collect/ImmutableList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method internalArray()[Ljava/lang/Object;
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->this$0:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->internalArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method internalArrayEnd()I
    .registers 3

    .line 459
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->this$0:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->internalArrayStart()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/ImmutableList$SubList;->offset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/common/collect/ImmutableList$SubList;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method internalArrayStart()I
    .registers 3

    .line 454
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->this$0:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->internalArrayStart()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/ImmutableList$SubList;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 433
    invoke-super {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    .line 433
    invoke-super {p0}, Lcom/google/common/collect/ImmutableList;->listIterator()Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3

    .line 433
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 444
    iget v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->length:I

    return v0
.end method

.method public subList(II)Lcom/google/common/collect/ImmutableList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .line 470
    iget v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->length:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 471
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->this$0:Lcom/google/common/collect/ImmutableList;

    iget v1, p0, Lcom/google/common/collect/ImmutableList$SubList;->offset:I

    add-int v2, p1, v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .registers 4

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableList$SubList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
