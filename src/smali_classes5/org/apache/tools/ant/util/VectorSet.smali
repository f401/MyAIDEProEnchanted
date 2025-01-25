.class public final Lorg/apache/tools/ant/util/VectorSet;
.super Ljava/util/Vector;
.source "VectorSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Vector",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final set:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 50
    invoke-direct {p0, p1}, Ljava/util/Vector;-><init>(I)V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    .line 51
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/util/Vector;-><init>(II)V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    .line 58
    if-eqz p1, :cond_f

    .line 59
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/VectorSet;->addAll(Ljava/util/Collection;)Z

    .line 61
    :cond_f
    return-void
.end method

.method private doAdd(ILjava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 85
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/VectorSet;->size()I

    move-result v0

    .line 86
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/util/VectorSet;->ensureCapacity(I)V

    .line 87
    if-eq p1, v0, :cond_1e

    .line 88
    iget-object v1, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    :cond_1e
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 92
    iget v0, p0, Lorg/apache/tools/ant/util/VectorSet;->elementCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/util/VectorSet;->elementCount:I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 94
    :cond_28
    monitor-exit p0

    return-void

    .line 83
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private doRemove(Ljava/lang/Object;)Z
    .registers 7

    monitor-enter p0

    .line 182
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 183
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/VectorSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 184
    iget-object v1, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_23

    .line 185
    iget-object v1, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    :cond_23
    iget v0, p0, Lorg/apache/tools/ant/util/VectorSet;->elementCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/tools/ant/util/VectorSet;->elementCount:I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2f

    .line 189
    monitor-exit p0

    const/4 v0, 0x1

    .line 191
    :goto_2b
    return v0

    :cond_2c
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_2b

    .line 181
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/util/VectorSet;->doAdd(ILjava/lang/Object;)V

    .line 79
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 65
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 66
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/VectorSet;->size()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/util/VectorSet;->doAdd(ILjava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_16

    .line 67
    monitor-exit p0

    const/4 v0, 0x1

    .line 69
    :goto_12
    return v0

    :cond_13
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_12

    .line 64
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 116
    :try_start_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 117
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 118
    iget-object v3, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 119
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_20

    goto :goto_a

    .line 115
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    .line 122
    :cond_23
    :try_start_23
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_20

    move-result v1

    if-eqz v1, :cond_2c

    .line 123
    monitor-exit p0

    const/4 v0, 0x0

    .line 135
    :goto_2b
    return v0

    .line 125
    :cond_2c
    :try_start_2c
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/VectorSet;->size()I

    move-result v1

    .line 126
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/util/VectorSet;->ensureCapacity(I)V

    .line 127
    if-eq p1, v1, :cond_47

    .line 128
    iget-object v2, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/2addr v4, p1

    sub-int/2addr v1, p1

    invoke-static {v2, p1, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    :cond_47
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 132
    iget-object v3, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    aput-object v2, v3, p1

    .line 133
    add-int/lit8 p1, p1, 0x1

    goto :goto_4b

    .line 134
    :cond_5c
    iget v1, p0, Lorg/apache/tools/ant/util/VectorSet;->elementCount:I

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/tools/ant/util/VectorSet;->elementCount:I
    :try_end_65
    .catchall {:try_start_2c .. :try_end_65} :catchall_20

    .line 135
    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_2b
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 103
    const/4 v0, 0x0

    .line 104
    :try_start_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 105
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/util/VectorSet;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_18

    move-result v2

    or-int/2addr v0, v2

    .line 106
    goto :goto_6

    .line 107
    :cond_16
    monitor-exit p0

    return v0

    .line 102
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addElement(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    monitor-enter p0

    .line 98
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/VectorSet;->size()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/util/VectorSet;->doAdd(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 99
    monitor-exit p0

    return-void

    .line 97
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clear()V
    .registers 2

    monitor-enter p0

    .line 140
    :try_start_1
    invoke-super {p0}, Ljava/util/Vector;->clear()V

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 142
    monitor-exit p0

    return-void

    .line 139
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .line 147
    invoke-super {p0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/VectorSet;

    .line 148
    iget-object v1, v0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    iget-object v2, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 149
    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    monitor-enter p0

    .line 154
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 159
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insertElementAt(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 164
    invoke-direct {p0, p2, p1}, Lorg/apache/tools/ant/util/VectorSet;->doAdd(ILjava/lang/Object;)V

    .line 165
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    monitor-enter p0

    .line 169
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/VectorSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 170
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/VectorSet;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 171
    monitor-exit p0

    return-object v0

    .line 168
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 176
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/VectorSet;->doRemove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 196
    const/4 v0, 0x0

    .line 197
    :try_start_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 198
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/util/VectorSet;->remove(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_18

    move-result v2

    or-int/2addr v0, v2

    .line 199
    goto :goto_6

    .line 200
    :cond_16
    monitor-exit p0

    return v0

    .line 195
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAllElements()V
    .registers 2

    monitor-enter p0

    .line 205
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 206
    invoke-super {p0}, Ljava/util/Vector;->removeAllElements()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 207
    monitor-exit p0

    return-void

    .line 204
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeElement(Ljava/lang/Object;)Z
    .registers 3

    .line 211
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/VectorSet;->doRemove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeElementAt(I)V
    .registers 3

    monitor-enter p0

    .line 216
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/VectorSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/VectorSet;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 217
    monitor-exit p0

    return-void

    .line 215
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeRange(II)V
    .registers 4

    monitor-enter p0

    .line 221
    :goto_1
    if-le p2, p1, :cond_c

    .line 222
    add-int/lit8 p2, p2, -0x1

    :try_start_5
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/util/VectorSet;->remove(I)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    goto :goto_1

    .line 220
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 224
    :cond_c
    monitor-exit p0

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 228
    :try_start_1
    instance-of v0, p1, Ljava/util/Set;

    if-nez v0, :cond_b

    .line 229
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 231
    :cond_b
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 232
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/VectorSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 233
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 234
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_14

    .line 227
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 237
    :cond_2b
    :try_start_2b
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 238
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/VectorSet;->removeAll(Ljava/util/Collection;)Z
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_28

    .line 239
    monitor-exit p0

    const/4 v0, 0x1

    .line 241
    :goto_36
    return v0

    :cond_37
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_36
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    monitor-enter p0

    .line 246
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/VectorSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 248
    iget-object v1, p0, Lorg/apache/tools/ant/util/VectorSet;->elementData:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 249
    iget-object v1, p0, Lorg/apache/tools/ant/util/VectorSet;->set:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_28

    .line 256
    :goto_16
    monitor-exit p0

    return-object v0

    .line 251
    :cond_18
    :try_start_18
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/util/VectorSet;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 252
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/util/VectorSet;->remove(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/VectorSet;->remove(Ljava/lang/Object;)Z

    .line 254
    if-le v1, p1, :cond_2b

    :goto_24
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/util/VectorSet;->add(ILjava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_28

    goto :goto_16

    .line 245
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 254
    :cond_2b
    add-int/lit8 p1, p1, -0x1

    goto :goto_24
.end method

.method public setElementAt(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 261
    invoke-virtual {p0, p2, p1}, Lorg/apache/tools/ant/util/VectorSet;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-void
.end method
