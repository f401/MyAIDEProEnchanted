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
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Os;->j6:Lcom/google/android/gms/internal/ads/Zs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Zs;->j6([B)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p2, :cond_b

    new-array p2, v0, [B

    :cond_b
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, p2

    int-to-long v3, v3

    const-wide/16 v5, 0x8

    mul-long v3, v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [[B

    aput-object p1, v3, v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Os;->DW:Lcom/google/android/gms/internal/ads/yq;

    const/4 v5, 0x3

    new-array v5, v5, [[B

    aput-object p2, v5, v0

    const/4 p2, 0x1

    aput-object p1, v5, p2

    aput-object v1, v5, v2

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/As;->j6([[B)[B

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/yq;->j6([B)[B

    move-result-object p1

    aput-object p1, v3, p2

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/As;->j6([[B)[B

    move-result-object p1

    return-object p1
.end method
