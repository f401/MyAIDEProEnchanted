.class final Lcom/google/common/base/CharMatcher$AnyOf;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnyOf"
.end annotation


# instance fields
.field private final chars:[C


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1726
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 1727
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/CharMatcher$AnyOf;->chars:[C

    .line 1728
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 1729
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1722
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .registers 3

    .line 1733
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$AnyOf;->chars:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method setBits(Ljava/util/BitSet;)V
    .registers 6

    .line 1739
    iget-object v1, p0, Lcom/google/common/base/CharMatcher$AnyOf;->chars:[C

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-char v3, v1, v0

    .line 1740
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 1739
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1742
    :cond_e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1746
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "CharMatcher.anyOf(\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1747
    iget-object v2, p0, Lcom/google/common/base/CharMatcher$AnyOf;->chars:[C

    array-length v3, v2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v3, :cond_19

    aget-char v4, v2, v0

    .line 1748
    invoke-static {v4}, Lcom/google/common/base/CharMatcher;->access$100(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1750
    :cond_19
    const-string v0, "\")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
