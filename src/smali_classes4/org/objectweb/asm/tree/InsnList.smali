.class public Lorg/objectweb/asm/tree/InsnList;
.super Ljava/lang/Object;


# instance fields
.field cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

.field private first:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field private last:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_2
    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    iget-object v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_2

    :cond_a
    return-void
.end method

.method public add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .registers 3

    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_17

    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_e
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return-void

    :cond_17
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_e
.end method

.method public add(Lorg/objectweb/asm/tree/InsnList;)V
    .registers 4

    iget v0, p1, Lorg/objectweb/asm/tree/InsnList;->size:I

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    iget v1, p1, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_20

    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/tree/InsnList;->removeAll(Z)V

    goto :goto_4

    :cond_20
    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_18
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/InsnList;->removeAll(Z)V

    return-void
.end method

.method public contains(Lorg/objectweb/asm/tree/AbstractInsnNode;)Z
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_2
    if-eqz v0, :cond_9

    if-eq v0, p1, :cond_9

    iget-object v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .registers 3

    if-ltz p1, :cond_6

    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    if-lt p1, v0, :cond_c

    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/InsnList;->toArray()[Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    :cond_16
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getFirst()Lorg/objectweb/asm/tree/AbstractInsnNode;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public getLast()Lorg/objectweb/asm/tree/AbstractInsnNode;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/InsnList;->toArray()[Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    :cond_a
    iget v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return v0
.end method

.method public insert(Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .registers 3

    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_17

    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_e
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return-void

    :cond_17
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_e
.end method

.method public insert(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_19

    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_c
    iput-object p2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return-void

    :cond_19
    iput-object p2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_c
.end method

.method public insert(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/InsnList;)V
    .registers 6

    iget v0, p2, Lorg/objectweb/asm/tree/InsnList;->size:I

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    iget v1, p2, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    iget-object v0, p2, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, p2, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v2, :cond_24

    iput-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_16
    iput-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v2, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/tree/InsnList;->removeAll(Z)V

    goto :goto_4

    :cond_24
    iput-object v1, v2, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_16
.end method

.method public insert(Lorg/objectweb/asm/tree/InsnList;)V
    .registers 4

    iget v0, p1, Lorg/objectweb/asm/tree/InsnList;->size:I

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    iget v1, p1, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_20

    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/tree/InsnList;->removeAll(Z)V

    goto :goto_4

    :cond_20
    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_18
.end method

.method public insertBefore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_19

    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_c
    iput-object p2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return-void

    :cond_19
    iput-object p2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_c
.end method

.method public insertBefore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/InsnList;)V
    .registers 6

    iget v0, p2, Lorg/objectweb/asm/tree/InsnList;->size:I

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    iget v1, p2, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    iget-object v0, p2, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, p2, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v2, :cond_24

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_16
    iput-object v1, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/tree/InsnList;->removeAll(Z)V

    goto :goto_4

    :cond_24
    iput-object v0, v2, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_16
.end method

.method public iterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/InsnList;->iterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(I)Ljava/util/ListIterator;
    .registers 3

    new-instance v0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;

    invoke-direct {v0, p0, p1}, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;-><init>(Lorg/objectweb/asm/tree/InsnList;I)V

    return-object v0
.end method

.method public remove(Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_22

    if-nez v1, :cond_1d

    iput-object v2, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v2, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_13
    iput-object v2, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, -0x1

    iput v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    iput-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void

    :cond_1d
    iput-object v2, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_13

    :cond_22
    if-nez v1, :cond_29

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_13

    :cond_29
    iput-object v0, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_13
.end method

.method removeAll(Z)V
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_12

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_5
    if-eqz v0, :cond_12

    iget-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v2, -0x1

    iput v2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    iput-object v3, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v3, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-object v0, v1

    goto :goto_5

    :cond_12
    const/4 v0, 0x0

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    iput-object v3, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v3, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v3, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void
.end method

.method public resetLabels()V
    .registers 3

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_2
    if-eqz v1, :cond_11

    instance-of v0, v1, Lorg/objectweb/asm/tree/LabelNode;

    if-eqz v0, :cond_e

    move-object v0, v1

    check-cast v0, Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/LabelNode;->resetLabel()V

    :cond_e
    iget-object v1, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_2

    :cond_11
    return-void
.end method

.method public set(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_25

    iput-object p2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_9
    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_28

    iput-object p2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_11
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_2b

    iget v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    aput-object p2, v1, v0

    iput v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    :goto_1d
    const/4 v0, -0x1

    iput v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    iput-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void

    :cond_25
    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList;->last:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_9

    :cond_28
    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_11

    :cond_2b
    const/4 v0, 0x0

    iput v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    goto :goto_1d
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    return v0
.end method

.method public toArray()[Lorg/objectweb/asm/tree/AbstractInsnNode;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->first:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget v2, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    new-array v2, v2, [Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_7
    if-eqz v0, :cond_12

    aput-object v0, v2, v1

    iput v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    iget-object v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    return-object v2
.end method
