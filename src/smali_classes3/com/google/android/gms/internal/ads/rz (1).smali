.class final Lcom/google/android/gms/internal/ads/rz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Yy;


# instance fields
.field private DW:I

.field private FH:[I

.field private Hw:Z

.field private VH:Ljava/nio/ByteBuffer;

.field private Zo:Ljava/nio/ByteBuffer;

.field private gn:Z

.field private j6:I

.field private v5:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rz;->Zo:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rz;->VH:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/rz;->j6:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/rz;->DW:I

    return-void
.end method


# virtual methods
.method public final DW()Ljava/nio/ByteBuffer;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rz;->VH:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/rz;->VH:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final FH()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final Hw()Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rz;->gn:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rz;->VH:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final Zo()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rz;->Hw:Z

    return v0
.end method

.method public final flush()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rz;->VH:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rz;->gn:Z

    return-void
.end method

.method public final j6()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rz;->v5:[I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/rz;->j6:I

    return v0

    :cond_7
    array-length v0, v0

    return v0
.end method

.method public final j6(Ljava/nio/ByteBuffer;)V
    .registers 9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/rz;->j6:I

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/rz;->v5:[I

    array-length v3, v3

    mul-int v2, v2, v3

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/rz;->Zo:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v2, :cond_2d

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/rz;->Zo:Ljava/nio/ByteBuffer;

    goto :goto_32

    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rz;->Zo:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_32
    if-ge v0, v1, :cond_51

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rz;->v5:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_38
    if-ge v4, v3, :cond_4b

    aget v5, v2, v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/rz;->Zo:Ljava/nio/ByteBuffer;

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_4b
    iget v2, p0, Lcom/google/android/gms/internal/ads/rz;->j6:I

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_32

    :cond_51
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rz;->Zo:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rz;->Zo:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rz;->VH:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final j6([I)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rz;->FH:[I

    return-void
.end method

.method public final j6(III)Z
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rz;->FH:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rz;->v5:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rz;->FH:[I

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/rz;->v5:[I

    const/4 v3, 0x0

    if-nez v2, :cond_14

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/rz;->Hw:Z

    return v0

    :cond_14
    const/4 v4, 0x2

    if-ne p3, v4, :cond_4c

    if-nez v0, :cond_22

    iget v0, p0, Lcom/google/android/gms/internal/ads/rz;->DW:I

    if-ne v0, p1, :cond_22

    iget v0, p0, Lcom/google/android/gms/internal/ads/rz;->j6:I

    if-ne v0, p2, :cond_22

    return v3

    :cond_22
    iput p1, p0, Lcom/google/android/gms/internal/ads/rz;->DW:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/rz;->j6:I

    array-length v0, v2

    if-eq p2, v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rz;->Hw:Z

    const/4 v0, 0x0

    :goto_2f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rz;->v5:[I

    array-length v4, v2

    if-ge v0, v4, :cond_4b

    aget v2, v2, v0

    if-ge v2, p2, :cond_45

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/rz;->Hw:Z

    if-eq v2, v0, :cond_3e

    const/4 v2, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    or-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/rz;->Hw:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_45
    new-instance v0, Lcom/google/android/gms/internal/ads/Zy;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Zy;-><init>(III)V

    throw v0

    :cond_4b
    return v1

    :cond_4c
    new-instance v0, Lcom/google/android/gms/internal/ads/Zy;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Zy;-><init>(III)V

    goto :goto_53

    :goto_52
    throw v0

    :goto_53
    goto :goto_52
.end method

.method public final reset()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rz;->flush()V

    sget-object v0, Lcom/google/android/gms/internal/ads/Yy;->j6:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rz;->Zo:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/rz;->j6:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/rz;->DW:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rz;->v5:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rz;->Hw:Z

    return-void
.end method

.method public final v5()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rz;->gn:Z

    return-void
.end method
