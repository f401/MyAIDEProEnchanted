.class final Lcom/google/android/gms/internal/ads/y;
.super Lcom/google/android/gms/internal/ads/w;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p2

    goto :goto_0
.end method
