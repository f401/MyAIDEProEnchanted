.class public final Lcom/google/android/gms/internal/ads/vy;
.super Ljava/lang/Exception;


# instance fields
.field private final DW:I

.field private final j6:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;I)V
    .registers 5

    const/4 p2, 0x0

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/vy;->j6:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/vy;->DW:I

    return-void
.end method

.method public static j6(Ljava/io/IOException;)Lcom/google/android/gms/internal/ads/vy;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/vy;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, p0, v2}, Lcom/google/android/gms/internal/ads/vy;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method public static j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/vy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/android/gms/internal/ads/vy;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method static j6(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/vy;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/vy;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, p0, v2}, Lcom/google/android/gms/internal/ads/vy;-><init>(ILjava/lang/String;Ljava/lang/Throwable;I)V

    return-object v0
.end method
