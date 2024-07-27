.class final synthetic Lcom/google/android/gms/ads/internal/gmsg/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# static fields
.field static final j6:Lcom/google/android/gms/ads/internal/gmsg/B;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/gmsg/n;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/gmsg/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/gmsg/n;->j6:Lcom/google/android/gms/ads/internal/gmsg/B;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/ip;

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/gmsg/m;->FH(Lcom/google/android/gms/internal/ads/ip;Ljava/util/Map;)V

    return-void
.end method
