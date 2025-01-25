.class public Lorg/antlr/v4/runtime/misc/OrderedHashSet;
.super Ljava/util/LinkedHashSet;
.source "OrderedHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/OrderedHashSet;->elements:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 49
    invoke-super {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 51
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/OrderedHashSet;->elements:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return v0
.end method

.method public clear()V
    .registers 2

    .line 63
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/OrderedHashSet;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    invoke-super {p0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .line 99
    invoke-super {p0}, Ljava/util/LinkedHashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/OrderedHashSet;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/OrderedHashSet;->elements:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/antlr/v4/runtime/misc/OrderedHashSet;->elements:Ljava/util/ArrayList;

    return-object v0
.end method

.method public elements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/OrderedHashSet;->elements:Ljava/util/ArrayList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 74
    instance-of v0, p1, Lorg/antlr/v4/runtime/misc/OrderedHashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 79
    :cond_6
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/OrderedHashSet;->elements:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    check-cast p1, Lorg/antlr/v4/runtime/misc/OrderedHashSet;

    iget-object p1, p1, Lorg/antlr/v4/runtime/misc/OrderedHashSet;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/OrderedHashSet;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 69
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/OrderedHashSet;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/OrderedHashSet;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Z
    .registers 3

    .line 39
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/OrderedHashSet;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 40
    invoke-super {p0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    .line 58
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/OrderedHashSet;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/OrderedHashSet;->elements:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-super {p0, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 34
    invoke-super {p0, p2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 106
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/OrderedHashSet;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/OrderedHashSet;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
