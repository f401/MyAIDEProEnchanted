.class final Lcom/google/android/gms/internal/ads/qi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final DW:Ljava/lang/String;

.field private final FH:Lcom/google/android/gms/internal/ads/oi;

.field final j6:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/oi;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qi;->FH:Lcom/google/android/gms/internal/ads/oi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qi;->j6:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qi;->DW:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qi;->FH:Lcom/google/android/gms/internal/ads/oi;

    invoke-static {}, Lcom/google/android/gms/internal/ads/oi;->VH()Lcom/google/android/gms/internal/ads/rd;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/rd;->DW(Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/Hd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/oi;->j6(Lcom/google/android/gms/internal/ads/oi;Lcom/google/android/gms/internal/ads/Hd;)Lcom/google/android/gms/internal/ads/Hd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qi;->FH:Lcom/google/android/gms/internal/ads/oi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oi;->DW(Lcom/google/android/gms/internal/ads/oi;)Lcom/google/android/gms/internal/ads/Hd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ri;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ri;-><init>(Lcom/google/android/gms/internal/ads/qi;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/si;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/si;-><init>(Lcom/google/android/gms/internal/ads/qi;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Xm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    return-void
.end method
