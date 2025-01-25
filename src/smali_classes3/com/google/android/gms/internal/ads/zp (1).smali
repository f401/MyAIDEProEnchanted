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
            "Lcom/google/android/gms/internal/ads/ed<",
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

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->P8:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private final XL()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->u7:Lcom/google/android/gms/internal/ads/up;

    if-eqz v0, :cond_1a

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zp;->yS:Z

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/google/android/gms/internal/ads/zp;->BT:I

    if-lez v1, :cond_10

    :cond_c
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zp;->gW:Z

    if-eqz v1, :cond_1a

    :cond_10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zp;->gW:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/up;->j6(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->u7:Lcom/google/android/gms/internal/ads/up;

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->sh()V

    return-void
.end method

.method private final j6(Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V
    .registers 6

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Wj;->VH()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-lez p3, :cond_1d

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/Wj;->j6(Landroid/view/View;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Wj;->VH()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/Bp;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Bp;-><init>(Lcom/google/android/gms/internal/ads/zp;Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    return-void
.end method

.method private final j6(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Qf;->j6()Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->FH()Lcom/google/android/gms/ads/internal/overlay/k;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/k;->j6(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->we:Ljava/lang/String;

    if-nez v0, :cond_26

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j6:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz p1, :cond_26

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->DW:Ljava/lang/String;

    :cond_26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Wj;->j6(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/zp;Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zp;->j6(Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V

    return-void
.end method

.method private final v5(Lcom/google/android/gms/internal/ads/Kp;)Landroid/webkit/WebResourceResponse;
    .registers 10

    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x14

    if-gt v2, v3, :cond_ee

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/Kp;->Hw:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_41
    instance-of v4, v3, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_e6

    check-cast v3, Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v1, v3}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/cm;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/cm;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v4, v3, v6}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/net/HttpURLConnection;I)V

    const/16 v4, 0x12c

    if-lt v6, v4, :cond_de

    const/16 v4, 0x190

    if-ge v6, v4, :cond_de

    const-string v4, "Location"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d6

    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8d

    const-string p1, "Protocol is null"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-object v5

    :cond_8d
    const-string v7, "http"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b7

    const-string v7, "https"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Unsupported scheme: "

    if-eqz v0, :cond_ae

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b3

    :cond_ae
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_b3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-object v5

    :cond_b7
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "Redirecting to "

    if-eqz v4, :cond_c8

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_cd

    :cond_c8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_cd
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v6

    goto/16 :goto_9

    :cond_d6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Missing Location header in redirect"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_de
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Nk;->j6(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_e6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid protocol."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ee
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Too many redirects (20)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_105

    :goto_104
    throw v0

    :goto_105
    goto :goto_104
.end method


# virtual methods
.method public final DW()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/s;->gn(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xa

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zp;->j6(Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V

    return-void

    :cond_16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zp;->QX()V

    new-instance v1, Lcom/google/android/gms/internal/ads/Cp;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/Cp;-><init>(Lcom/google/android/gms/internal/ads/zp;Lcom/google/android/gms/internal/ads/Wj;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->P8:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->P8:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2b
    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/Kp;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->v5:Lcom/google/android/gms/internal/ads/ed;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Kp;->DW:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ed;->j6(Landroid/net/Uri;)Z

    return-void
.end method

.method public final DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/B<",
            "-",
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zp;->QX:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final FH()Lcom/google/android/gms/ads/internal/ua;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->a8:Lcom/google/android/gms/ads/internal/ua;

    return-object v0
.end method

.method public final FH(Lcom/google/android/gms/internal/ads/Kp;)Z
    .registers 13

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AdWebView shouldOverrideUrlLoading: "

    if-eqz v1, :cond_13

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_18
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Kp;->DW:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->v5:Lcom/google/android/gms/internal/ads/ed;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ed;->j6(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    return v2

    :cond_27
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zp;->J8:Z

    if-eqz v1, :cond_5a

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_43

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_43

    :cond_41
    const/4 v1, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v1, 0x1

    :goto_44
    if-eqz v1, :cond_5a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->VH:Lcom/google/android/gms/internal/ads/WG;

    if-eqz v0, :cond_59

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/WG;->J0()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    if-eqz v0, :cond_56

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/Wj;->j6(Ljava/lang/String;)V

    :cond_56
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zp;->VH:Lcom/google/android/gms/internal/ads/WG;

    :cond_59
    return v4

    :cond_5a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_cf

    :try_start_66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->Ws()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v1

    if-eqz v1, :cond_a7

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ix;->j6(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_a7

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Mo;->nw()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/ix;->j6(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0
    :try_end_8a
    .catch Lcom/google/android/gms/internal/ads/jx; {:try_start_66 .. :try_end_8a} :catch_8b

    goto :goto_a7

    :catch_8b
    move-exception v1

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Unable to append parameter to URL: "

    if-eqz v3, :cond_9f

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a4

    :cond_9f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_a4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_a7
    :goto_a7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->a8:Lcom/google/android/gms/ads/internal/ua;

    if-eqz v1, :cond_ba

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/ua;->DW()Z

    move-result v1

    if-eqz v1, :cond_b2

    goto :goto_ba

    :cond_b2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->a8:Lcom/google/android/gms/ads/internal/ua;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/ua;->j6(Ljava/lang/String;)V

    goto :goto_ea

    :cond_ba
    :goto_ba
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zp;->j6(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto :goto_ea

    :cond_cf
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "AdWebView unable to handle URL: "

    if-eqz v0, :cond_e2

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_e7

    :cond_e2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_e7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :goto_ea
    return v2
.end method

.method public final Hw(Lcom/google/android/gms/internal/ads/Kp;)Landroid/webkit/WebResourceResponse;
    .registers 7

    const-string v0, ""

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    if-eqz v1, :cond_e

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/Kp;->Hw:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Wj;->j6(Ljava/lang/String;Ljava/util/Map;I)V

    :cond_e
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mraid.js"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_24

    move-object v1, v2

    goto :goto_63

    :cond_24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zp;->v5()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v1

    if-eqz v1, :cond_40

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->aj:Lcom/google/android/gms/internal/ads/e;

    :goto_35
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_4e

    :cond_40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result v1

    if-eqz v1, :cond_4b

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->sy:Lcom/google/android/gms/internal/ads/e;

    goto :goto_35

    :cond_4b
    sget-object v1, Lcom/google/android/gms/internal/ads/p;->Qq:Lcom/google/android/gms/internal/ads/e;

    goto :goto_35

    :goto_4e
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/ads/Nk;->FH(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    :goto_63
    if-eqz v1, :cond_66

    return-object v1

    :cond_66
    :try_start_66
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zp;->vy:Z

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/dk;->j6(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_81

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zp;->v5(Lcom/google/android/gms/internal/ads/Kp;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_81
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Kp;->j6:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzty;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzty;

    move-result-object v1

    if-eqz v1, :cond_a3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->EQ()Lcom/google/android/gms/internal/ads/DF;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/DF;->j6(Lcom/google/android/gms/internal/ads/zzty;)Lcom/google/android/gms/internal/ads/zztv;

    move-result-object v1

    if-eqz v1, :cond_a3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztv;->DW()Z

    move-result v3

    if-eqz v3, :cond_a3

    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztv;->FH()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v0, v0, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_a3
    invoke-static {}, Lcom/google/android/gms/internal/ads/cm;->j6()Z

    move-result v0

    if-eqz v0, :cond_c0

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->AR:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zp;->v5(Lcom/google/android/gms/internal/ads/Kp;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_bf} :catch_c3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_66 .. :try_end_bf} :catch_c1

    return-object p1

    :cond_c0
    return-object v2

    :catch_c1
    move-exception p1

    goto :goto_c4

    :catch_c3
    move-exception p1

    :goto_c4
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    const-string v1, "AdWebViewClient.interceptRequest"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v2
.end method

.method public final Hw()Lcom/google/android/gms/internal/ads/Wj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    return-object v0
.end method

.method public final J0()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->aM:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
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

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->Qs()V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->J0:Lcom/google/android/gms/internal/ads/wp;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wp;->j6()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->J0:Lcom/google/android/gms/internal/ads/wp;

    :cond_1a
    return-void
.end method

.method public final Zo()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Zo:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zp;->j3:Z

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_10

    iget v0, p0, Lcom/google/android/gms/internal/ads/zp;->BT:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zp;->BT:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zp;->XL()V

    return-void

    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
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

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Qf;->j6(II)V

    :cond_7
    return-void
.end method

.method public final j6(IIZ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->U2:Lcom/google/android/gms/internal/ads/Zf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Zf;->j6(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Qf;->j6(IIZ)V

    :cond_c
    return-void
.end method

.method public final j6(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Zo:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zp;->QX:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->SI()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zp;->XL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zp;->aM:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v2

    if-nez v2, :cond_17

    move-object v5, v1

    goto :goto_1a

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zp;->VH:Lcom/google/android/gms/internal/ads/WG;

    move-object v5, v2

    :goto_1a
    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->gn:Lcom/google/android/gms/ads/internal/overlay/m;

    :goto_1f
    move-object v6, v1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zp;->Mr:Lcom/google/android/gms/ads/internal/overlay/s;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/overlay/s;Lcom/google/android/gms/internal/ads/zzbbi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Kp;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zp;->yS:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zp;->tp:Lcom/google/android/gms/internal/ads/vp;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vp;->j6()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zp;->tp:Lcom/google/android/gms/internal/ads/vp;

    :cond_d
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

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zp;->v5:Lcom/google/android/gms/internal/ads/ed;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/ed;->j6(Ljava/lang/Object;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/ads/internal/overlay/s;ZLcom/google/android/gms/ads/internal/gmsg/F;Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/ag;Lcom/google/android/gms/internal/ads/Wj;)V
    .registers 13

    if-nez p8, :cond_e

    new-instance p8, Lcom/google/android/gms/ads/internal/ua;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p8, v0, p10, v1}, Lcom/google/android/gms/ads/internal/ua;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Wj;Lcom/google/android/gms/internal/ads/zzaso;)V

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/ads/Qf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-direct {v0, v1, p9}, Lcom/google/android/gms/internal/ads/Qf;-><init>(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/ag;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    sget-object p10, Lcom/google/android/gms/internal/ads/p;->sg:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, p10}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Ljava/lang/Boolean;

    invoke-virtual {p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p10

    if-eqz p10, :cond_35

    new-instance p10, Lcom/google/android/gms/ads/internal/gmsg/a;

    invoke-direct {p10, p2}, Lcom/google/android/gms/ads/internal/gmsg/a;-><init>(Lcom/google/android/gms/ads/internal/gmsg/i;)V

    const-string v0, "/adMetadata"

    invoke-virtual {p0, v0, p10}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_35
    new-instance p10, Lcom/google/android/gms/ads/internal/gmsg/j;

    invoke-direct {p10, p4}, Lcom/google/android/gms/ads/internal/gmsg/j;-><init>(Lcom/google/android/gms/ads/internal/gmsg/k;)V

    const-string v0, "/appEvent"

    invoke-virtual {p0, v0, p10}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/backButton"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->tp:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/refresh"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->EQ:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/canOpenURLs"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->j6:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/canOpenIntents"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->DW:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/click"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->FH:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/close"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->Hw:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/customClose"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->v5:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/instrument"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->J8:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/delayPageLoaded"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->QX:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/delayPageClosed"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->XL:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/getLocationInfo"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->aM:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/httpTrack"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->Zo:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/log"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->VH:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    new-instance p10, Lcom/google/android/gms/ads/internal/gmsg/b;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    invoke-direct {p10, p8, v0, p9}, Lcom/google/android/gms/ads/internal/gmsg/b;-><init>(Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/Qf;Lcom/google/android/gms/internal/ads/ag;)V

    const-string p9, "/mraid"

    invoke-virtual {p0, p9, p10}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p9, "/mraidLoaded"

    iget-object p10, p0, Lcom/google/android/gms/internal/ads/zp;->U2:Lcom/google/android/gms/internal/ads/Zf;

    invoke-virtual {p0, p9, p10}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    new-instance p9, Lcom/google/android/gms/ads/internal/gmsg/c;

    iget-object p10, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    invoke-direct {p9, p8, p10}, Lcom/google/android/gms/ads/internal/gmsg/c;-><init>(Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/Qf;)V

    const-string p10, "/open"

    invoke-virtual {p0, p10, p9}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    new-instance p9, Lcom/google/android/gms/internal/ads/vo;

    invoke-direct {p9}, Lcom/google/android/gms/internal/ads/vo;-><init>()V

    const-string p10, "/precache"

    invoke-virtual {p0, p10, p9}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p9, "/touch"

    sget-object p10, Lcom/google/android/gms/ads/internal/gmsg/m;->u7:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p9, p10}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p9, "/video"

    sget-object p10, Lcom/google/android/gms/ads/internal/gmsg/m;->we:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p9, p10}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p9, "/videoMeta"

    sget-object p10, Lcom/google/android/gms/ads/internal/gmsg/m;->J0:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p9, p10}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object p9

    iget-object p10, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p10}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object p10

    invoke-virtual {p9, p10}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result p9

    if-eqz p9, :cond_f8

    new-instance p9, Lcom/google/android/gms/ads/internal/gmsg/zzaa;

    iget-object p10, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p10}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object p10

    invoke-direct {p9, p10}, Lcom/google/android/gms/ads/internal/gmsg/zzaa;-><init>(Landroid/content/Context;)V

    const-string p10, "/logScionEvent"

    invoke-virtual {p0, p10, p9}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_f8
    if-eqz p7, :cond_104

    new-instance p9, Lcom/google/android/gms/ads/internal/gmsg/E;

    invoke-direct {p9, p7}, Lcom/google/android/gms/ads/internal/gmsg/E;-><init>(Lcom/google/android/gms/ads/internal/gmsg/F;)V

    const-string p7, "/setInterstitialProperties"

    invoke-virtual {p0, p7, p9}, Lcom/google/android/gms/internal/ads/zp;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_104
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
            "Lcom/google/android/gms/ads/internal/gmsg/B<",
            "-",
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
            "Lcom/google/android/gms/common/util/p<",
            "Lcom/google/android/gms/ads/internal/gmsg/B<",
            "-",
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
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_18

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->VH:Lcom/google/android/gms/internal/ads/WG;

    :goto_18
    move-object v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zp;->gn:Lcom/google/android/gms/ads/internal/overlay/m;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zp;->Mr:Lcom/google/android/gms/ads/internal/overlay/s;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v8

    move-object v1, v0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/overlay/s;Lcom/google/android/gms/internal/ads/Mo;ZILcom/google/android/gms/internal/ads/zzbbi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zp;->j6(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final j6(ZILjava/lang/String;)V
    .registers 19

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v3

    if-nez v3, :cond_18

    move-object v5, v2

    goto :goto_1b

    :cond_18
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zp;->VH:Lcom/google/android/gms/internal/ads/WG;

    move-object v5, v3

    :goto_1b
    if-eqz v1, :cond_1e

    goto :goto_27

    :cond_1e
    new-instance v2, Lcom/google/android/gms/internal/ads/Dp;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zp;->gn:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/Dp;-><init>(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/ads/internal/overlay/m;)V

    :goto_27
    move-object v6, v2

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zp;->EQ:Lcom/google/android/gms/ads/internal/gmsg/i;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zp;->we:Lcom/google/android/gms/ads/internal/gmsg/k;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zp;->Mr:Lcom/google/android/gms/ads/internal/overlay/s;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v14

    move-object v4, v1

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/ads/internal/overlay/s;Lcom/google/android/gms/internal/ads/Mo;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final j6(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v3

    if-nez v3, :cond_19

    move-object v5, v2

    goto :goto_1c

    :cond_19
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zp;->VH:Lcom/google/android/gms/internal/ads/WG;

    move-object v5, v3

    :goto_1c
    if-eqz v1, :cond_1f

    goto :goto_28

    :cond_1f
    new-instance v2, Lcom/google/android/gms/internal/ads/Dp;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zp;->gn:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/Dp;-><init>(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/ads/internal/overlay/m;)V

    :goto_28
    move-object v6, v2

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zp;->EQ:Lcom/google/android/gms/ads/internal/gmsg/i;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zp;->we:Lcom/google/android/gms/ads/internal/gmsg/k;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zp;->Mr:Lcom/google/android/gms/ads/internal/overlay/s;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zp;->Hw:Lcom/google/android/gms/internal/ads/Mo;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v15

    move-object v4, v1

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/ads/internal/overlay/s;Lcom/google/android/gms/internal/ads/Mo;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->j6(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final j6()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zp;->j3:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final tp()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Wj;->v5()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->er:Lcom/google/android/gms/internal/ads/Wj;

    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zp;->QX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->v5:Lcom/google/android/gms/internal/ads/ed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ed;->DW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->v5:Lcom/google/android/gms/internal/ads/ed;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ed;->j6(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1a
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->VH:Lcom/google/android/gms/internal/ads/WG;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->gn:Lcom/google/android/gms/ads/internal/overlay/m;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->u7:Lcom/google/android/gms/internal/ads/up;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->tp:Lcom/google/android/gms/internal/ads/vp;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->EQ:Lcom/google/android/gms/ads/internal/gmsg/i;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->we:Lcom/google/android/gms/ads/internal/gmsg/k;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->Mr:Lcom/google/android/gms/ads/internal/overlay/s;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->J0:Lcom/google/android/gms/internal/ads/wp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    if-eqz v2, :cond_34

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Qf;->j6(Z)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->lg:Lcom/google/android/gms/internal/ads/Qf;

    :cond_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_36

    throw v1
.end method

.method public final u7()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zp;->Ws:Z

    return v0
.end method

.method public final v5()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Zo:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zp;->J8:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zp;->Ws:Z

    sget-object v1, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/Ap;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/Ap;-><init>(Lcom/google/android/gms/internal/ads/zp;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public final we()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zp;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zp;->XL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
