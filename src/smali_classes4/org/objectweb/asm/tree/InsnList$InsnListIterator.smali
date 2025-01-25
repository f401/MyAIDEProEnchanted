.class final Lorg/objectweb/asm/tree/InsnList$InsnListIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field next:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field remove:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field final this$0:Lorg/objectweb/asm/tree/InsnList;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/tree/InsnList;I)V
    .registers 4

    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v0

    if-ne p2, v0, :cond_15

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/InsnList;->getLast()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_14
    return-void

    :cond_15
    invoke-virtual {p1, p2}, Lorg/objectweb/asm/tree/InsnList;->get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_14
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    iget-object v2, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/tree/InsnList;->insertBefore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    check-cast p1, Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->remove:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasPrevious()Z
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->remove:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public nextIndex()I
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    iget-object v0, v0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v1}, Lorg/objectweb/asm/tree/InsnList;->toArray()[Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v1

    iput-object v1, v0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    :cond_1b
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    goto :goto_a
.end method

.method public previous()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->remove:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public previousIndex()I
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    iget-object v0, v0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v1}, Lorg/objectweb/asm/tree/InsnList;->toArray()[Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v1

    iput-object v1, v0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    :cond_16
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    goto :goto_5
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->remove:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->remove:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_10
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->remove:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->remove(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->remove:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void

    :cond_1b
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_10

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 5

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/tree/InsnList;->set(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    check-cast p1, Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void
.end method
