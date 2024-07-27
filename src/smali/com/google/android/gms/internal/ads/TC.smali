.class final Lcom/google/android/gms/internal/ads/TC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/ads/zzfs;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/SC;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/TC;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfs;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfs;

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->DW:I

    sub-int/2addr v0, v1

    return v0
.end method
