.class final Lcom/google/android/gms/internal/ads/LG;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/mu;


# static fields
.field static final j6:Lcom/google/android/gms/internal/ads/mu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/LG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/LG;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/LG;->j6:Lcom/google/android/gms/internal/ads/mu;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(I)Z
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/mG$c;->j6(I)Lcom/google/android/gms/internal/ads/mG$c;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
