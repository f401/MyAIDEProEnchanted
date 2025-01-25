.class final Lokio/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# static fields
.field static final SHARE_MINIMUM:I = 0x400

.field static final SIZE:I = 0x2000


# instance fields
.field final data:[B

.field limit:I

.field next:Lokio/Segment;

.field owner:Z

.field pos:I

.field prev:Lokio/Segment;

.field shared:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lokio/Segment;->data:[B

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/Segment;->owner:Z

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/Segment;->shared:Z

    .line 66
    return-void
.end method

.method constructor <init>([BIIZZ)V
    .registers 6

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lokio/Segment;->data:[B

    .line 70
    iput p2, p0, Lokio/Segment;->pos:I

    .line 71
    iput p3, p0, Lokio/Segment;->limit:I

    .line 72
    iput-boolean p4, p0, Lokio/Segment;->shared:Z

    .line 73
    iput-boolean p5, p0, Lokio/Segment;->owner:Z

    .line 74
    return-void
.end method


# virtual methods
.method public final compact()V
    .registers 5

    .line 151
    iget-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-eq v1, p0, :cond_28

    .line 152
    iget-boolean v0, v1, Lokio/Segment;->owner:Z

    if-nez v0, :cond_9

    .line 159
    :cond_8
    :goto_8
    return-void

    .line 153
    :cond_9
    iget v0, p0, Lokio/Segment;->limit:I

    iget v2, p0, Lokio/Segment;->pos:I

    sub-int v2, v0, v2

    .line 154
    iget v3, v1, Lokio/Segment;->limit:I

    iget-boolean v0, v1, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    .line 155
    :goto_16
    rsub-int v3, v3, 0x2000

    add-int/2addr v0, v3

    if-gt v2, v0, :cond_8

    .line 156
    invoke-virtual {p0, v1, v2}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 157
    invoke-virtual {p0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 158
    invoke-static {p0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_8

    .line 154
    :cond_25
    iget v0, v1, Lokio/Segment;->pos:I

    goto :goto_16

    .line 151
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final pop()Lokio/Segment;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v2, 0x0

    .line 96
    iget-object v1, p0, Lokio/Segment;->next:Lokio/Segment;

    if-eq v1, p0, :cond_13

    move-object v0, v1

    .line 97
    :goto_6
    iget-object v3, p0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v1, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 98
    iget-object v1, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 99
    iput-object v2, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 100
    iput-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    .line 101
    return-object v0

    :cond_13
    move-object v0, v2

    .line 96
    goto :goto_6
.end method

.method public final push(Lokio/Segment;)Lokio/Segment;
    .registers 3

    .line 109
    iput-object p0, p1, Lokio/Segment;->prev:Lokio/Segment;

    .line 110
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 111
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object p1, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 112
    iput-object p1, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 113
    return-object p1
.end method

.method final sharedCopy()Lokio/Segment;
    .registers 7

    const/4 v4, 0x1

    .line 82
    iput-boolean v4, p0, Lokio/Segment;->shared:Z

    .line 83
    new-instance v0, Lokio/Segment;

    iget-object v1, p0, Lokio/Segment;->data:[B

    iget v2, p0, Lokio/Segment;->pos:I

    iget v3, p0, Lokio/Segment;->limit:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lokio/Segment;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final split(I)Lokio/Segment;
    .registers 7

    .line 125
    if-lez p1, :cond_30

    iget v0, p0, Lokio/Segment;->limit:I

    iget v1, p0, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_30

    .line 133
    const/16 v0, 0x400

    if-lt p1, v0, :cond_21

    .line 134
    invoke-virtual {p0}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v0

    .line 140
    :goto_11
    iget v1, v0, Lokio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lokio/Segment;->limit:I

    .line 141
    iget v1, p0, Lokio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lokio/Segment;->pos:I

    .line 142
    iget-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v1, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 143
    return-object v0

    .line 136
    :cond_21
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lokio/Segment;->data:[B

    iget v2, p0, Lokio/Segment;->pos:I

    iget-object v3, v0, Lokio/Segment;->data:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_11

    .line 125
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method final unsharedCopy()Lokio/Segment;
    .registers 7

    .line 88
    new-instance v0, Lokio/Segment;

    iget-object v1, p0, Lokio/Segment;->data:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget v2, p0, Lokio/Segment;->pos:I

    iget v3, p0, Lokio/Segment;->limit:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lokio/Segment;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final writeTo(Lokio/Segment;I)V
    .registers 8

    const/16 v4, 0x2000

    const/4 v3, 0x0

    .line 163
    iget-boolean v0, p1, Lokio/Segment;->owner:Z

    if-eqz v0, :cond_49

    .line 164
    iget v0, p1, Lokio/Segment;->limit:I

    add-int v1, v0, p2

    if-le v1, v4, :cond_27

    .line 166
    iget-boolean v1, p1, Lokio/Segment;->shared:Z

    if-nez v1, :cond_43

    .line 167
    iget v1, p1, Lokio/Segment;->pos:I

    add-int v2, v0, p2

    sub-int/2addr v2, v1

    if-gt v2, v4, :cond_3d

    .line 168
    iget-object v2, p1, Lokio/Segment;->data:[B

    sub-int/2addr v0, v1

    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget v0, p1, Lokio/Segment;->limit:I

    iget v1, p1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lokio/Segment;->limit:I

    .line 170
    iput v3, p1, Lokio/Segment;->pos:I

    .line 173
    :cond_27
    iget-object v0, p0, Lokio/Segment;->data:[B

    iget v1, p0, Lokio/Segment;->pos:I

    iget-object v2, p1, Lokio/Segment;->data:[B

    iget v3, p1, Lokio/Segment;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget v0, p1, Lokio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lokio/Segment;->limit:I

    .line 175
    iget v0, p0, Lokio/Segment;->pos:I

    add-int/2addr v0, p2

    iput v0, p0, Lokio/Segment;->pos:I

    .line 176
    return-void

    .line 167
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 166
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 163
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
