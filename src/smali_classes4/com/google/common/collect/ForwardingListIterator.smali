.class public abstract Lcom/google/common/collect/ForwardingListIterator;
.super Lcom/google/common/collect/ForwardingIterator;
.source "ForwardingListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingIterator",
        "<TE;>;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .line 38
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Iterator;
    .registers 2

    .line 38
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public hasPrevious()Z
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .registers 2

    .line 60
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 77
    return-void
.end method
