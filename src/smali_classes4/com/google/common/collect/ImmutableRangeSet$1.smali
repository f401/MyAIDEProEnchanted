.class Lcom/google/common/collect/ImmutableRangeSet$1;
.super Lcom/google/common/collect/ImmutableList;
.source "ImmutableRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableRangeSet;->intersectRanges(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Lcom/google/common/collect/Range",
        "<TC;>;>;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/google/common/collect/ImmutableRangeSet;

.field final val$fromIndex:I

.field final val$length:I

.field final val$range:Lcom/google/common/collect/Range;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableRangeSet;IILcom/google/common/collect/Range;)V
    .registers 5

    .line 443
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    iput p2, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$length:I

    iput p3, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$fromIndex:I

    iput-object p4, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$range:Lcom/google/common/collect/Range;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/common/collect/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .line 451
    iget v0, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$length:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 452
    if-eqz p1, :cond_d

    iget v0, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$length:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_23

    .line 453
    :cond_d
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$fromIndex:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$range:Lcom/google/common/collect/Range;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 455
    :goto_22
    return-object v0

    :cond_23
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$fromIndex:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    goto :goto_22
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    .line 443
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet$1;->get(I)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .registers 2

    .line 461
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .registers 2

    .line 446
    iget v0, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->val$length:I

    return v0
.end method
