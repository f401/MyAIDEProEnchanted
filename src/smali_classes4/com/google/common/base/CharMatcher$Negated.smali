.class Lcom/google/common/base/CharMatcher$Negated;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Negated"
.end annotation


# instance fields
.field final original:Lcom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/common/base/CharMatcher;)V
    .registers 3

    .line 1492
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 1493
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CharMatcher;

    iput-object v0, p0, Lcom/google/common/base/CharMatcher$Negated;->original:Lcom/google/common/base/CharMatcher;

    .line 1494
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1488
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .registers 4

    .line 1513
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/base/CharMatcher$Negated;->original:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, p1}, Lcom/google/common/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public matches(C)Z
    .registers 3

    .line 1498
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$Negated;->original:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .registers 3

    .line 1503
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$Negated;->original:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .registers 3

    .line 1508
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$Negated;->original:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .registers 2

    .line 1527
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$Negated;->original:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .registers 5

    .line 1519
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1520
    iget-object v1, p0, Lcom/google/common/base/CharMatcher$Negated;->original:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, v0}, Lcom/google/common/base/CharMatcher;->setBits(Ljava/util/BitSet;)V

    .line 1521
    const/4 v1, 0x0

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->flip(II)V

    .line 1522
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1523
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/base/CharMatcher$Negated;->original:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".negate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
