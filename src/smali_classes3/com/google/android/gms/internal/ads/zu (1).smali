.class abstract Lcom/google/android/gms/internal/ads/zu;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Lcom/google/android/gms/internal/ads/zu;

.field private static final j6:Lcom/google/android/gms/internal/ads/zu;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/Bu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Bu;-><init>(Lcom/google/android/gms/internal/ads/Au;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zu;->j6:Lcom/google/android/gms/internal/ads/zu;

    new-instance v0, Lcom/google/android/gms/internal/ads/Cu;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Cu;-><init>(Lcom/google/android/gms/internal/ads/Au;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zu;->DW:Lcom/google/android/gms/internal/ads/zu;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Au;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zu;-><init>()V

    return-void
.end method

.method static DW()Lcom/google/android/gms/internal/ads/zu;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zu;->DW:Lcom/google/android/gms/internal/ads/zu;

    return-object v0
.end method

.method static j6()Lcom/google/android/gms/internal/ads/zu;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zu;->j6:Lcom/google/android/gms/internal/ads/zu;

    return-object v0
.end method


# virtual methods
.method abstract DW(Ljava/lang/Object;J)V
.end method

.method abstract j6(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract j6(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
