.class public final Lcom/google/android/gms/ads/formats/c;
.super Ljava/lang/Object;


# static fields
.field public static j6:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/google/android/gms/ads/formats/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DW:Lcom/google/android/gms/internal/ads/Pa;

.field private FH:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/formats/c;->j6:Ljava/util/WeakHashMap;

    return-void
.end method

.method private final j6(Labcd/ox;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/c;->FH:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_14

    const-string p1, "NativeAdViewHolder.setNativeAd containerView doesn\'t exist, returning"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_14
    sget-object v1, Lcom/google/android/gms/ads/formats/c;->j6:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    sget-object v1, Lcom/google/android/gms/ads/formats/c;->j6:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/c;->DW:Lcom/google/android/gms/internal/ads/Pa;

    if-eqz v0, :cond_2f

    :try_start_25
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Pa;->Hw(Labcd/ox;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p1

    const-string v0, "Unable to call setNativeAd on delegate"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/ads/formats/a;)V
    .registers 2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/a;->j6()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/ox;

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/c;->j6(Labcd/ox;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/formats/g;)V
    .registers 2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/g;->EQ()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/ox;

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/c;->j6(Labcd/ox;)V

    return-void
.end method
