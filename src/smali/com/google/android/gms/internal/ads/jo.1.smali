.class final Lcom/google/android/gms/internal/ads/jo;
.super Lcom/google/android/gms/internal/ads/ek;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field static final FH:Lcom/google/android/gms/internal/ads/jo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/jo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/jo;->FH:Lcom/google/android/gms/internal/ads/jo;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ek;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/Fm;
    .registers 5

    const-string v0, "moov"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/En;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/En;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mvhd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/eo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eo;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/Fo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Fo;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
