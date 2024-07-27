.class public final Lcom/google/android/gms/internal/ads/Os;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/nq;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/yq;

.field private final FH:I

.field private final j6:Lcom/google/android/gms/internal/ads/Zs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Zs;Lcom/google/android/gms/internal/ads/yq;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Os;->j6:Lcom/google/android/gms/internal/ads/Zs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Os;->DW:Lcom/google/android/gms/internal/ads/yq;

    iput p3, p0, Lcom/google/android/gms/internal/ads/Os;->FH:I

    return-void
.end method


# virtual methods
.method public final j6([B[B)[B
    .registers 13

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Os;->j6:Lcom/google/android/gms/internal/ads/Zs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Zs;->j6([B)[B

    move-result-object v0

    if-nez p2, :cond_0

    new-array p2, v6, [B

    :cond_0
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p2

    int-to-long v2, v2

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    new-array v2, v8, [[B

    aput-object v0, v2, v6

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Os;->DW:Lcom/google/android/gms/internal/ads/yq;

    const/4 v4, 0x3

    new-array v4, v4, [[B

    aput-object p2, v4, v6

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/As;->j6([[B)[B

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/yq;->j6([B)[B

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/As;->j6([[B)[B

    move-result-object v0

    return-object v0
.end method
