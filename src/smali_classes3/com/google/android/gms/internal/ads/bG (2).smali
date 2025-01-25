.class final synthetic Lcom/google/android/gms/internal/ads/bG;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/lm;


# static fields
.field static final j6:Lcom/google/android/gms/internal/ads/lm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bG;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bG;->j6:Lcom/google/android/gms/internal/ads/lm;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ry;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/qy;

    move-result-object p1

    return-object p1
.end method
