.class final Lcom/google/common/base/CharMatcher$BitSetMatcher;
.super Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BitSetMatcher"
.end annotation


# instance fields
.field private final table:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Ljava/util/BitSet;Ljava/lang/String;)V
    .registers 5

    .line 986
    invoke-direct {p0, p2}, Lcom/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    .line 987
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x40

    invoke-virtual {p1}, Ljava/util/BitSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 988
    invoke-virtual {p1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 991
    :goto_15
    iput-object v0, p0, Lcom/google/common/base/CharMatcher$BitSetMatcher;->table:Ljava/util/BitSet;

    .line 992
    return-void

    :cond_18
    move-object v0, p1

    goto :goto_15
.end method

.method synthetic constructor <init>(Ljava/util/BitSet;Ljava/lang/String;Lcom/google/common/base/CharMatcher$1;)V
    .registers 4

    .line 981
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/CharMatcher$BitSetMatcher;-><init>(Ljava/util/BitSet;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .registers 3

    .line 996
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$BitSetMatcher;->table:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .registers 3

    .line 1001
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$BitSetMatcher;->table:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1002
    return-void
.end method
