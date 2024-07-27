.class final synthetic Lcom/google/android/gms/internal/ads/ne;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/lm;


# static fields
.field static final j6:Lcom/google/android/gms/internal/ads/lm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ne;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ne;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ne;->j6:Lcom/google/android/gms/internal/ads/lm;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Sp;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/Rp;

    move-result-object v0

    return-object v0
.end method
