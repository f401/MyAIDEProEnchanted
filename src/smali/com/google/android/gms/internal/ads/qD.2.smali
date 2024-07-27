.class public Lcom/google/android/gms/internal/ads/qD;
.super Ljava/io/IOException;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/mD;

.field private final j6:I


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/mD;I)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qD;->DW:Lcom/google/android/gms/internal/ads/mD;

    iput p3, p0, Lcom/google/android/gms/internal/ads/qD;->j6:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/mD;I)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qD;->DW:Lcom/google/android/gms/internal/ads/mD;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/qD;->j6:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/mD;I)V
    .registers 6

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qD;->DW:Lcom/google/android/gms/internal/ads/mD;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/qD;->j6:I

    return-void
.end method
