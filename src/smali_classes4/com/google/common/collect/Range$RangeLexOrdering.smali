.class Lcom/google/common/collect/Range$RangeLexOrdering;
.super Lcom/google/common/collect/Ordering;
.source "Range.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangeLexOrdering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Ordering",
        "<",
        "Lcom/google/common/collect/Range",
        "<*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<",
            "Lcom/google/common/collect/Range",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 695
    new-instance v0, Lcom/google/common/collect/Range$RangeLexOrdering;

    invoke-direct {v0}, Lcom/google/common/collect/Range$RangeLexOrdering;-><init>()V

    sput-object v0, Lcom/google/common/collect/Range$RangeLexOrdering;->INSTANCE:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 694
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<*>;",
            "Lcom/google/common/collect/Range",
            "<*>;)I"
        }
    .end annotation

    .line 699
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v2, p2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 700
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v2, p2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 701
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 702
    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result v0

    .line 699
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 694
    check-cast p1, Lcom/google/common/collect/Range;

    check-cast p2, Lcom/google/common/collect/Range;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Range$RangeLexOrdering;->compare(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)I

    move-result v0

    return v0
.end method
