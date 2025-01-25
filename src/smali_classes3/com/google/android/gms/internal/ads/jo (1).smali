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
    .registers 4

    const-string p2, "moov"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    new-instance p1, Lcom/google/android/gms/internal/ads/En;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/En;-><init>()V

    return-object p1

    :cond_e
    const-string p2, "mvhd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    new-instance p1, Lcom/google/android/gms/internal/ads/eo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/eo;-><init>()V

    return-object p1

    :cond_1c
    new-instance p2, Lcom/google/android/gms/internal/ads/Fo;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/Fo;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
