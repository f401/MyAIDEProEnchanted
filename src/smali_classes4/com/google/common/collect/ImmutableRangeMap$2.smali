.class Lcom/google/common/collect/ImmutableRangeMap$2;
.super Lcom/google/common/collect/ImmutableRangeMap;
.source "ImmutableRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableRangeMap;->subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableRangeMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/google/common/collect/ImmutableRangeMap;

.field final val$outer:Lcom/google/common/collect/ImmutableRangeMap;

.field final val$range:Lcom/google/common/collect/Range;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableRangeMap;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/Range;Lcom/google/common/collect/ImmutableRangeMap;)V
    .registers 6

    .line 324
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeMap$2;->this$0:Lcom/google/common/collect/ImmutableRangeMap;

    iput-object p4, p0, Lcom/google/common/collect/ImmutableRangeMap$2;->val$range:Lcom/google/common/collect/Range;

    iput-object p5, p0, Lcom/google/common/collect/ImmutableRangeMap$2;->val$outer:Lcom/google/common/collect/ImmutableRangeMap;

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/ImmutableRangeMap;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic asDescendingMapOfRanges()Ljava/util/Map;
    .registers 2

    .line 324
    invoke-super {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asDescendingMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asMapOfRanges()Ljava/util/Map;
    .registers 2

    .line 324
    invoke-super {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;)",
            "Lcom/google/common/collect/ImmutableRangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$2;->val$range:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 328
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$2;->val$outer:Lcom/google/common/collect/ImmutableRangeMap;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeMap$2;->val$range:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableRangeMap;->subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    .line 330
    :goto_14
    return-object v0

    :cond_15
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeMap;->of()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    goto :goto_14
.end method

.method public bridge synthetic subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeMap;
    .registers 3

    .line 324
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeMap$2;->subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    return-object v0
.end method
