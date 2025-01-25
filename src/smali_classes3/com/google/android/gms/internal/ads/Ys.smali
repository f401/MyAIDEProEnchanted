.class public final Lcom/google/android/gms/internal/ads/Ys;
.super Ljava/lang/Object;


# instance fields
.field private final j6:[B


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p2, p3, [B

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ys;->j6:[B

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static j6([B)Lcom/google/android/gms/internal/ads/Ys;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/Ys;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/Ys;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public final j6()[B
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ys;->j6:[B

    array-length v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
