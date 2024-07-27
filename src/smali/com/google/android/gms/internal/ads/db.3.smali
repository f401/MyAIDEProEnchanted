.class public Lcom/google/android/gms/internal/ads/db;
.super Ljava/lang/Exception;


# instance fields
.field private DW:J

.field private final j6:Lcom/google/android/gms/internal/ads/nD;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/db;->j6:Lcom/google/android/gms/internal/ads/nD;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/nD;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/db;->j6:Lcom/google/android/gms/internal/ads/nD;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/db;->j6:Lcom/google/android/gms/internal/ads/nD;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/db;->j6:Lcom/google/android/gms/internal/ads/nD;

    return-void
.end method


# virtual methods
.method final j6(J)V
    .registers 4

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/db;->DW:J

    return-void
.end method
