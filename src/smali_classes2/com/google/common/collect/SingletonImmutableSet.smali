.class final Lcom/google/common/collect/SingletonImmutableSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "SingletonImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient cachedHashCode:I
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field final transient element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 50
    iput p2, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:I

    .line 51
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    aput-object v0, p1, p2

    .line 81
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:I

    .line 88
    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:I

    .line 91
    :cond_0
    return v0
.end method

.method isHashCodeFast()Z
    .registers 2

    .line 96
    iget v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPartialView()Z
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
