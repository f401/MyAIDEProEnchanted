.class public final Lcom/google/android/gms/internal/ads/zp;
.super Lcom/google/android/gms/internal/ads/Jp;

# interfaces
.implements Lcom/google/android/gms/internal/ads/tp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private BT:I

.field private EQ:Lcom/google/android/gms/ads/internal/gmsg/i;

.field private Hw:Lcom/google/android/gms/internal/ads/Mo;

.field private J0:Lcom/google/android/gms/internal/ads/wp;

.field private J8:Z

.field private Mr:Lcom/google/android/gms/ads/internal/overlay/s;

.field private P8:Landroid/view/View$OnAttachStateChangeListener;

.field private QX:Z

.field private U2:Lcom/google/android/gms/internal/ads/Zf;

.field private VH:Lcom/google/android/gms/internal/ads/WG;

.field private volatile Ws:Z

.field private XL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final Zo:Ljava/lang/Object;

.field private a8:Lcom/google/android/gms/ads/internal/ua;

.field private aM:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private er:Lcom/google/android/gms/internal/ads/Wj;

.field private gW:Z

.field private gn:Lcom/google/android/gms/ads/internal/overlay/m;

.field private j3:Z

.field private lg:Lcom/google/android/gms/internal/ads/Qf;

.field private rN:Lcom/google/android/gms/internal/ads/xp;

.field private tp:Lcom/google/android/gms/internal/ads/vp;

.field private u7:Lcom/google/android/gms/internal/ads/up;

.field private final v5:Lcom/google/android/gms/internal/ads/ed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ed",
            "<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;"
        }
    .end annotation
.end field

.field private vy:Z

.field private we:Lcom/google/android/gms/ads/internal/gmsg/k;

.field private yS:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Jp;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Zo:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zp;->J8:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/ed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ed;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->v5:Lcom/google/android/gms/internal/ads/ed;

    return-void
.end method

.method private final QX()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->P8:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->P8:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method private final XL()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->u7:Lcom/google/android/gms/internal/ads/up;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zp;->yS:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zp;->BT:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zp;->gW:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->u7:Lcom/google/android/gms/internal/ads/up;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zp;->gW:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/up;->j6(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->u7:Lcom/google/android/gms/internal/ads/up;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->sh()V

    return-void
.end method

.method private final j6(Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V
    .registers 8

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Wj;->VH()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/Wj;->j6(Landroid/view/View;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Wj;->VH()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/Bp;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Bp;-><init>(Lcom/google/android/gms/internal/ads/zp;Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final j6(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Qf;->j6()Z

    move-result v0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->FH()Lcom/google/android/gms/ads/internal/overlay/k;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/k;->j6(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->we:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j6:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->DW:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Wj;->j6(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/zp;Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zp;->j6(Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V

    return-void
.end method

.method private final v5(Lcom/google/android/gms/internal/ads/Kp;)Landroid/webkit/WebResourceResponse;
    .registers 11

    const/16 v8, 0x2710

    const/4 v5, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    move v1, v5

    :goto_0
    add-int/lit8 v6, v1, 0x1

    const/16 v0, 0x14

    if-gt v6, v0, :cond_8

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Kp;->Hw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v0, v2, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_7

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {v1, v2, v7, v5, v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/cm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/cm;-><init>()V

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/net/HttpURLConnection;I)V

    const/16 v1, 0x12c

    if-lt v2, v1, :cond_6

    const/16 v1, 0x190

    if-ge v2, v1, :cond_6

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v4, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v0, "Protocol is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    move-object v0, v3

    :goto_2
    return-object v0

    :cond_1
    const-string v7, "http"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "https"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Unsupported scheme: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "Unsupported scheme: "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Redirecting to "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v4, v2

    move v1, v6

    goto/16 :goto_0

    :cond_4
    new-instance v1, Ljava/lang/String;

    const-string v4, "Redirecting to "

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing Location header in redirect"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid protocol."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Too many redirects (20)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final DW()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/s;->gn(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zp;->j6(Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zp;->QX()V

    new-instance v1, Lcom/google/android/gms/internal/ads/Cp;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/Cp;-><init>(Lcom/google/android/gms/internal/ads/zp;Lcom/google/android/gms/internal/ads/Wj;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->P8:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->P8:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/Kp;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->v5:Lcom/google/android/gms/internal/ads/ed;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Kp;->DW:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ed;->j6(Landroid/net/Uri;)Z

    return-void
.end method

.method public final DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/B",
            "<-",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->v5:Lcom/google/android/gms/internal/ads/ed;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ed;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    return-void
.end method

.method public final DW(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zp;->vy:Z

    return-void
.end method

.method public final EQ()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Zo:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zp;->QX:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final FH()Lcom/google/android/gms/ads/internal/ua;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->a8:Lcom/google/android/gms/ads/internal/ua;

    return-object v0
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/Kp;)Z
    .registers 11

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AdWebView shouldOverrideUrlLoading: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Kp;->DW:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->v5:Lcom/google/android/gms/internal/ads/ed;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ed;->j6(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    :goto_1
    return v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "AdWebView shouldOverrideUrlLoading: "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zp;->J8:Z

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v4, "http"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "https"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v0, v8

    :goto_2
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->VH:Lcom/google/android/gms/internal/ads/WG;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/WG;->J0()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Wj;->j6(Ljava/lang/String;)V

    :cond_3
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zp;->VH:Lcom/google/android/gms/internal/ads/WG;

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result v0

    if-nez v0, :cond_a

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->Ws()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ix;->j6(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Mo;->nw()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/ix;->j6(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/jx; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->a8:Lcom/google/android/gms/ads/internal/ua;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ua;->DW()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    :goto_4
    move v0, v8

    goto/16 :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Unable to append parameter to URL: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/String;

    const-string v2, "Unable to append parameter to URL: "

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->a8:Lcom/google/android/gms/ads/internal/ua;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/ua;->j6(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "AdWebView unable to handle URL: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/String;

    const-string v1, "AdWebView unable to handle URL: "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    move-object v2, v1

    goto :goto_3
.end method

.method public final Hw(Lcom/google/android/gms/internal/ads/Kp;)Landroid/webkit/WebResourceResponse;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/Kp;->Hw:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Wj;->j6(Ljava/lang/String;Ljava/util/Map;I)V

    :cond_0
    const-string v0, "mraid.js"

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zp;->v5()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->aj:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/Nk;->FH(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->sy:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Qq:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_4
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zp;->vy:Z

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dk;->j6(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zp;->v5(Lcom/google/android/gms/internal/ads/Kp;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzty;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzty;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->EQ()Lcom/google/android/gms/internal/ads/DF;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/DF;->j6(Lcom/google/android/gms/internal/ads/zzty;)Lcom/google/android/gms/internal/ads/zztv;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zztv;->DW()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zztv;->FH()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v3, v4, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v2

    const-string v3, "AdWebViewClient.interceptRequest"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_6
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/cm;->j6()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->AR:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zp;->v5(Lcom/google/android/gms/internal/ads/Kp;)Landroid/webkit/WebResourceResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public final Hw()Lcom/google/android/gms/internal/ads/Wj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    return-object v0
.end method

.method public final J0()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Zo:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->aM:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final J8()Lcom/google/android/gms/internal/ads/xp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->rN:Lcom/google/android/gms/internal/ads/xp;

    return-object v0
.end method

.method public final VH()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zp;->BT:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zp;->BT:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zp;->XL()V

    return-void
.end method

.method final synthetic Ws()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->SI()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ef()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->Qs()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->J0:Lcom/google/android/gms/internal/ads/wp;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wp;->j6()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->J0:Lcom/google/android/gms/internal/ads/wp;

    :cond_1
    return-void
.end method

.method public final Zo()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Zo:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zp;->j3:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zp;->BT:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zp;->BT:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zp;->XL()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final gn()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zp;->gW:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zp;->XL()V

    return-void
.end method

.method public final j6(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Qf;->j6(II)V

    :cond_0
    return-void
.end method

.method public final j6(IIZ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->U2:Lcom/google/android/gms/internal/ads/Zf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Zf;->j6(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Qf;->j6(IIZ)V

    :cond_0
    return-void
.end method

.method public final j6(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Zo:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zp;->QX:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->SI()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zp;->XL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zp;->aM:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v2, v3

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zp;->Mr:Lcom/google/android/gms/ads/internal/overlay/s;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/overlay/s;Lcom/google/android/gms/internal/ads/zzbbi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zp;->VH:Lcom/google/android/gms/internal/ads/WG;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zp;->gn:Lcom/google/android/gms/ads/internal/overlay/m;

    goto :goto_1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Kp;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zp;->yS:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->tp:Lcom/google/android/gms/internal/ads/vp;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vp;->j6()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->tp:Lcom/google/android/gms/internal/ads/vp;

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zp;->XL()V

    return-void
.end method

.method final j6(Lcom/google/android/gms/internal/ads/Mo;Z)V
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/ads/Zf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->sG()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzzy;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzzy;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Zf;-><init>(Lcom/google/android/gms/internal/ads/Mo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzzy;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zp;->Ws:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->U2:Lcom/google/android/gms/internal/ads/Zf;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->v5:Lcom/google/android/gms/internal/ads/ed;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ed;->j6(Ljava/lang/Object;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/ads/internal/overlay/s;ZLcom/google/android/gms/ads/internal/gmsg/F;Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/ag;Lcom/google/android/gms/internal/ads/Wj;)V
    .registers 14

    if-nez p8, :cond_0

    new-instance p8, Lcom/google/android/gms/ads/internal/ua;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p8, v0, p10, v1}, Lcom/google/android/gms/ads/internal/ua;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Wj;Lcom/google/android/gms/internal/ads/zzaso;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Qf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-direct {v0, v1, p9}, Lcom/google/android/gms/internal/ads/Qf;-><init>(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/ag;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->sg:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/adMetadata"

    new-instance v1, Lcom/google/android/gms/ads/internal/gmsg/a;

    invoke-direct {v1, p2}, Lcom/google/android/gms/ads/internal/gmsg/a;-><init>(Lcom/google/android/gms/ads/internal/gmsg/i;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_1
    const-string v0, "/appEvent"

    new-instance v1, Lcom/google/android/gms/ads/internal/gmsg/j;

    invoke-direct {v1, p4}, Lcom/google/android/gms/ads/internal/gmsg/j;-><init>(Lcom/google/android/gms/ads/internal/gmsg/k;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/backButton"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->tp:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/refresh"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->EQ:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/canOpenURLs"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->j6:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/canOpenIntents"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->DW:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/click"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->FH:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/close"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->Hw:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/customClose"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->v5:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/instrument"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->J8:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/delayPageLoaded"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->QX:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/delayPageClosed"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->XL:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/getLocationInfo"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->aM:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/httpTrack"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->Zo:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->VH:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/mraid"

    new-instance v1, Lcom/google/android/gms/ads/internal/gmsg/b;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    invoke-direct {v1, p8, v2, p9}, Lcom/google/android/gms/ads/internal/gmsg/b;-><init>(Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/Qf;Lcom/google/android/gms/internal/ads/ag;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/mraidLoaded"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->U2:Lcom/google/android/gms/internal/ads/Zf;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/open"

    new-instance v1, Lcom/google/android/gms/ads/internal/gmsg/c;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    invoke-direct {v1, p8, v2}, Lcom/google/android/gms/ads/internal/gmsg/c;-><init>(Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/Qf;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/precache"

    new-instance v1, Lcom/google/android/gms/internal/ads/vo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/vo;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/touch"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->u7:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/video"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->we:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/videoMeta"

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->J0:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/logScionEvent"

    new-instance v1, Lcom/google/android/gms/ads/internal/gmsg/zzaa;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/gmsg/zzaa;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_2
    if-eqz p7, :cond_3

    const-string v0, "/setInterstitialProperties"

    new-instance v1, Lcom/google/android/gms/ads/internal/gmsg/E;

    invoke-direct {v1, p7}, Lcom/google/android/gms/ads/internal/gmsg/E;-><init>(Lcom/google/android/gms/ads/internal/gmsg/F;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zp;->VH:Lcom/google/android/gms/internal/ads/WG;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zp;->gn:Lcom/google/android/gms/ads/internal/overlay/m;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zp;->EQ:Lcom/google/android/gms/ads/internal/gmsg/i;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zp;->we:Lcom/google/android/gms/ads/internal/gmsg/k;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zp;->Mr:Lcom/google/android/gms/ads/internal/overlay/s;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zp;->a8:Lcom/google/android/gms/ads/internal/ua;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zp;->J8:Z

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/up;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zp;->u7:Lcom/google/android/gms/internal/ads/up;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/vp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zp;->tp:Lcom/google/android/gms/internal/ads/vp;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/wp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zp;->J0:Lcom/google/android/gms/internal/ads/wp;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/xp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zp;->rN:Lcom/google/android/gms/internal/ads/xp;

    return-void
.end method

.method public final j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/B",
            "<-",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->v5:Lcom/google/android/gms/internal/ads/ed;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ed;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;Lcom/google/android/gms/common/util/p;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/p",
            "<",
            "Lcom/google/android/gms/ads/internal/gmsg/B",
            "<-",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->v5:Lcom/google/android/gms/internal/ads/ed;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ed;->j6(Ljava/lang/String;Lcom/google/android/gms/common/util/p;)V

    return-void
.end method

.method public final j6(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zp;->J8:Z

    return-void
.end method

.method public final j6(ZI)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zp;->gn:Lcom/google/android/gms/ads/internal/overlay/m;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zp;->Mr:Lcom/google/android/gms/ads/internal/overlay/s;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/overlay/s;Lcom/google/android/gms/internal/ads/Mo;ZILcom/google/android/gms/internal/ads/zzbbi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->VH:Lcom/google/android/gms/internal/ads/WG;

    goto :goto_0
.end method

.method public final j6(ZILjava/lang/String;)V
    .registers 15

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zp;->EQ:Lcom/google/android/gms/ads/internal/gmsg/i;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zp;->we:Lcom/google/android/gms/ads/internal/gmsg/k;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zp;->Mr:Lcom/google/android/gms/ads/internal/overlay/s;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v10

    move v7, p1

    move v8, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/ads/internal/overlay/s;Lcom/google/android/gms/internal/ads/Mo;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->VH:Lcom/google/android/gms/internal/ads/WG;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/Dp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zp;->gn:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/Dp;-><init>(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/ads/internal/overlay/m;)V

    goto :goto_1
.end method

.method public final j6(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zp;->EQ:Lcom/google/android/gms/ads/internal/gmsg/i;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zp;->we:Lcom/google/android/gms/ads/internal/gmsg/k;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zp;->Mr:Lcom/google/android/gms/ads/internal/overlay/s;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v11

    move v7, p1

    move v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/ads/internal/overlay/s;Lcom/google/android/gms/internal/ads/Mo;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->VH:Lcom/google/android/gms/internal/ads/WG;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/Dp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zp;->gn:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/Dp;-><init>(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/ads/internal/overlay/m;)V

    goto :goto_1
.end method

.method public final j6()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Zo:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zp;->j3:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final tp()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Wj;->v5()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zp;->QX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->v5:Lcom/google/android/gms/internal/ads/ed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ed;->DW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->v5:Lcom/google/android/gms/internal/ads/ed;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ed;->j6(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Zo:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->VH:Lcom/google/android/gms/internal/ads/WG;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->gn:Lcom/google/android/gms/ads/internal/overlay/m;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->u7:Lcom/google/android/gms/internal/ads/up;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->tp:Lcom/google/android/gms/internal/ads/vp;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->EQ:Lcom/google/android/gms/ads/internal/gmsg/i;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->we:Lcom/google/android/gms/ads/internal/gmsg/k;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Mr:Lcom/google/android/gms/ads/internal/overlay/s;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->J0:Lcom/google/android/gms/internal/ads/wp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/Qf;->j6(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final u7()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zp;->Ws:Z

    return v0
.end method

.method public final v5()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Zo:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zp;->J8:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zp;->Ws:Z

    sget-object v0, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/Ap;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/Ap;-><init>(Lcom/google/android/gms/internal/ads/zp;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final we()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Zo:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->XL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
