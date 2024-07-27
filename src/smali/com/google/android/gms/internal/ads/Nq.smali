.class public final Lcom/google/android/gms/internal/ads/Nq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/nq;


# static fields
.field private static final j6:[B


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/ds;

.field private final FH:Lcom/google/android/gms/internal/ads/nq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/Nq;->j6:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/ds;Lcom/google/android/gms/internal/ads/nq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Nq;->DW:Lcom/google/android/gms/internal/ads/ds;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Nq;->FH:Lcom/google/android/gms/internal/ads/nq;

    return-void
.end method


# virtual methods
.method public final j6([B[B)[B
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nq;->DW:Lcom/google/android/gms/internal/ads/ds;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Dq;->DW(Lcom/google/android/gms/internal/ads/ds;)Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Pu;->FH()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nq;->FH:Lcom/google/android/gms/internal/ads/nq;

    sget-object v2, Lcom/google/android/gms/internal/ads/Nq;->j6:[B

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/nq;->j6([B[B)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nq;->DW:Lcom/google/android/gms/internal/ads/ds;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ds;->EQ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/Dq;->j6(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/nq;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/nq;->j6([B[B)[B

    move-result-object v0

    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    array-length v3, v0

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
