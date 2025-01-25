.class final Lcom/google/android/gms/internal/ads/oa;
.super Ljava/lang/Object;


# instance fields
.field private DW:Ljava/lang/String;

.field private final j6:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oa;->j6:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/oa;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oa;->DW:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/oa;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oa;->DW:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/oa;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/oa;->j6:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/dh;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/pa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/pa;-><init>(Lcom/google/android/gms/internal/ads/oa;Lcom/google/android/gms/internal/ads/dh;)V

    const-string v1, "/loadHtml"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/dh;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ra;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ra;-><init>(Lcom/google/android/gms/internal/ads/oa;Lcom/google/android/gms/internal/ads/dh;)V

    const-string v1, "/showOverlay"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/dh;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/sa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/sa;-><init>(Lcom/google/android/gms/internal/ads/oa;Lcom/google/android/gms/internal/ads/dh;)V

    const-string v1, "/hideOverlay"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/dh;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oa;->j6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v0, :cond_32

    new-instance v1, Lcom/google/android/gms/internal/ads/ta;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ta;-><init>(Lcom/google/android/gms/internal/ads/oa;Lcom/google/android/gms/internal/ads/dh;)V

    const-string p1, "/sendMessageToSdk"

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_32
    return-void
.end method
