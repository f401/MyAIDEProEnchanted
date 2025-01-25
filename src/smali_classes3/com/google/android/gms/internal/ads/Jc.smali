.class final synthetic Lcom/google/android/gms/internal/ads/Jc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final j6:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Jc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Jc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Jc;->j6:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->j3()Lcom/google/android/gms/internal/ads/Kc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kc;->j6()V

    return-void
.end method
