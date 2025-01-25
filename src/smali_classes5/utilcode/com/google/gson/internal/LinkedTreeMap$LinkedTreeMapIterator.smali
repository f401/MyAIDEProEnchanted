.class abstract Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LinkedTreeMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastReturned:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final this$0:Lutilcode/com/google/gson/internal/LinkedTreeMap;


# direct methods
.method constructor <init>(Lutilcode/com/google/gson/internal/LinkedTreeMap;)V
    .registers 3

    iput-object p1, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    iget-object v0, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->header:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v0, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->next:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    const/4 v0, 0x0

    iput-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    iget v0, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lutilcode/com/google/gson/internal/LinkedTreeMap;->header:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method final nextNode()Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lutilcode/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lutilcode/com/google/gson/internal/LinkedTreeMap;->header:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-eq v0, v1, :cond_1d

    iget-object v1, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    iget v1, v1, Lutilcode/com/google/gson/internal/LinkedTreeMap;->modCount:I

    iget v2, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    if-ne v1, v2, :cond_17

    iget-object v1, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->next:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iput-object v1, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    return-object v0

    :cond_17
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 4

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->removeInternal(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lutilcode/com/google/gson/internal/LinkedTreeMap;

    iget v0, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
