.class Lcom/google/common/collect/RegularImmutableMultiset$SerializedForm;
.super Ljava/lang/Object;
.source "RegularImmutableMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final counts:[I

.field final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multiset;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 109
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/RegularImmutableMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    .line 110
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset$SerializedForm;->counts:[I

    .line 111
    const/4 v0, 0x0

    .line 112
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 113
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 114
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableMultiset$SerializedForm;->counts:[I

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    aput v0, v3, v1

    .line 115
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 116
    goto :goto_1d

    .line 117
    :cond_3d
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .registers 5

    .line 120
    new-instance v1, Lcom/google/common/collect/ImmutableMultiset$Builder;

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    array-length v0, v0

    invoke-direct {v1, v0}, Lcom/google/common/collect/ImmutableMultiset$Builder;-><init>(I)V

    .line 122
    const/4 v0, 0x0

    :goto_9
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v0, v3, :cond_1a

    .line 123
    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableMultiset$SerializedForm;->counts:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 125
    :cond_1a
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->build()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method
