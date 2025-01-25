.class public Lcom/google/android/gms/internal/ads/No;
.super Landroid/webkit/WebViewClient;

# interfaces
.implements Lcom/google/android/gms/internal/ads/tp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final DW:[Ljava/lang/String;

.field private static final j6:[Ljava/lang/String;


# instance fields
.field private BT:I

.field private EQ:Lcom/google/android/gms/ads/internal/gmsg/i;

.field private FH:Lcom/google/android/gms/internal/ads/Mo;

.field private final Hw:Lcom/google/android/gms/internal/ads/YF;

.field private J0:Lcom/google/android/gms/internal/ads/wp;

.field private J8:Z

.field private Mr:Lcom/google/android/gms/ads/internal/overlay/s;

.field private P8:Landroid/view/View$OnAttachStateChangeListener;

.field private QX:Z

.field private final U2:Lcom/google/android/gms/internal/ads/Zf;

.field private VH:Lcom/google/android/gms/internal/ads/WG;

.field private Ws:Z

.field private XL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final Zo:Ljava/lang/Object;

.field private a8:Lcom/google/android/gms/ads/internal/ua;

.field private aM:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field protected er:Lcom/google/android/gms/internal/ads/Wj;

.field private gW:Z

.field private gn:Lcom/google/android/gms/ads/internal/overlay/m;

.field private j3:Z

.field private lg:Lcom/google/android/gms/internal/ads/Qf;

.field private rN:Lcom/google/android/gms/internal/ads/xp;

.field private tp:Lcom/google/android/gms/internal/ads/vp;

.field private u7:Lcom/google/android/gms/internal/ads/up;

.field private final v5:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/internal/gmsg/B<",
            "-",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private vy:Z

.field private we:Lcom/google/android/gms/ads/internal/gmsg/k;

.field private yS:Z


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HOST_LOOKUP"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "UNSUPPORTED_AUTH_SCHEME"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "AUTHENTICATION"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "PROXY_AUTHENTICATION"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "CONNECT"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "IO"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const/4 v1, 0x7

    const-string v9, "TIMEOUT"

    aput-object v9, v0, v1

    const/16 v1, 0x8

    const-string v9, "REDIRECT_LOOP"

    aput-object v9, v0, v1

    const/16 v1, 0x9

    const-string v9, "UNSUPPORTED_SCHEME"

    aput-object v9, v0, v1

    const/16 v1, 0xa

    const-string v9, "FAILED_SSL_HANDSHAKE"

    aput-object v9, v0, v1

    const/16 v1, 0xb

    const-string v9, "BAD_URL"

    aput-object v9, v0, v1

    const/16 v1, 0xc

    const-string v9, "FILE"

    aput-object v9, v0, v1

    const/16 v1, 0xd

    const-string v9, "FILE_NOT_FOUND"

    aput-object v9, v0, v1

    const/16 v1, 0xe

    const-string v9, "TOO_MANY_REQUESTS"

    aput-object v9, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/No;->j6:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "NOT_YET_VALID"

    aput-object v1, v0, v2

    const-string v1, "EXPIRED"

    aput-object v1, v0, v3

    const-string v1, "ID_MISMATCH"

    aput-object v1, v0, v4

    const-string v1, "UNTRUSTED"

    aput-object v1, v0, v5

    const-string v1, "DATE_INVALID"

    aput-object v1, v0, v6

    const-string v1, "INVALID"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/ads/No;->DW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/YF;Z)V
    .registers 10

    new-instance v4, Lcom/google/android/gms/internal/ads/Zf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->sG()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzy;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzzy;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, p1, v0, v1}, Lcom/google/android/gms/internal/ads/Zf;-><init>(Lcom/google/android/gms/internal/ads/Mo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzzy;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/No;-><init>(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/YF;ZLcom/google/android/gms/internal/ads/Zf;Lcom/google/android/gms/internal/ads/Qf;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/YF;ZLcom/google/android/gms/internal/ads/Zf;Lcom/google/android/gms/internal/ads/Qf;)V
    .registers 6

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/No;->v5:Ljava/util/HashMap;

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/No;->Zo:Ljava/lang/Object;

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/No;->J8:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/No;->Hw:Lcom/google/android/gms/internal/ads/YF;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/No;->Ws:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/No;->U2:Lcom/google/android/gms/internal/ads/Zf;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/No;->lg:Lcom/google/android/gms/internal/ads/Qf;

    return-void
.end method

.method private final DW(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_7
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_ea

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_3d
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_e2

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p1, v2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/cm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/cm;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/net/HttpURLConnection;I)V

    const/16 v3, 0x12c

    if-lt v5, v3, :cond_da

    const/16 v3, 0x190

    if-ge v5, v3, :cond_da

    const-string v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d2

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_89

    const-string p1, "Protocol is null"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-object v4

    :cond_89
    const-string v6, "http"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b3

    const-string v6, "https"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "Unsupported scheme: "

    if-eqz p2, :cond_aa

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_af

    :cond_aa
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_af
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-object v4

    :cond_b3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Redirecting to "

    if-eqz v3, :cond_c4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c9

    :cond_c4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_c9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v5

    goto/16 :goto_7

    :cond_d2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Missing Location header in redirect"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_da
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_e2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid protocol."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ea
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Too many redirects (20)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_101

    :goto_100
    throw p2

    :goto_101
    goto :goto_100
.end method

.method private final QX()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->P8:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->P8:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private final XL()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->u7:Lcom/google/android/gms/internal/ads/up;

    if-eqz v0, :cond_1a

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/No;->yS:Z

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/google/android/gms/internal/ads/No;->BT:I

    if-lez v1, :cond_10

    :cond_c
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/No;->gW:Z

    if-eqz v1, :cond_1a

    :cond_10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/No;->gW:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/up;->j6(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/No;->u7:Lcom/google/android/gms/internal/ads/up;

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->sh()V

    return-void
.end method

.method private final j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->PH:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "err"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "code"

    invoke-virtual {v5, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_37

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_37

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    goto :goto_39

    :cond_37
    const-string p2, ""

    :goto_39
    const-string p3, "host"

    invoke-virtual {v5, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object p2

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    const-string v4, "gmob-apps"

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private final j6(Landroid/net/Uri;)V
    .registers 9

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->v5:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_96

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->j6(I)Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Received GMSG: "

    if-eqz v2, :cond_2d

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_2d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_32
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    goto :goto_3d

    :cond_7f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_83
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/gmsg/B;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/ads/internal/gmsg/B;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_83

    :cond_95
    return-void

    :cond_96
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No GMSG handler found for GMSG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

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

    new-instance v1, Lcom/google/android/gms/internal/ads/Po;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Po;-><init>(Lcom/google/android/gms/internal/ads/No;Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    return-void
.end method

.method private final j6(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->lg:Lcom/google/android/gms/internal/ads/Qf;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Qf;->j6()Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->FH()Lcom/google/android/gms/ads/internal/overlay/k;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/k;->j6(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->er:Lcom/google/android/gms/internal/ads/Wj;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->we:Ljava/lang/String;

    if-nez v0, :cond_26

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j6:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz p1, :cond_26

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->DW:Ljava/lang/String;

    :cond_26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/No;->er:Lcom/google/android/gms/internal/ads/Wj;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Wj;->j6(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/No;Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/No;->j6(Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->er:Lcom/google/android/gms/internal/ads/Wj;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/s;->gn(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xa

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/No;->j6(Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V

    return-void

    :cond_16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/No;->QX()V

    new-instance v1, Lcom/google/android/gms/internal/ads/Qo;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/Qo;-><init>(Lcom/google/android/gms/internal/ads/No;Lcom/google/android/gms/internal/ads/Wj;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/No;->P8:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->P8:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2b
    return-void
.end method

.method public final DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V
    .registers 5
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->v5:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public final DW(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/No;->vy:Z

    return-void
.end method

.method public final EQ()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/No;->QX:Z

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->a8:Lcom/google/android/gms/ads/internal/ua;

    return-object v0
.end method

.method public final Hw()Lcom/google/android/gms/internal/ads/Wj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->er:Lcom/google/android/gms/internal/ads/Wj;

    return-object v0
.end method

.method public final J0()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->aM:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->rN:Lcom/google/android/gms/internal/ads/xp;

    return-object v0
.end method

.method public final VH()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/No;->BT:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/No;->BT:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/No;->XL()V

    return-void
.end method

.method final synthetic Ws()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->SI()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ef()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->Qs()V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->J0:Lcom/google/android/gms/internal/ads/wp;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wp;->j6()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/No;->J0:Lcom/google/android/gms/internal/ads/wp;

    :cond_1a
    return-void
.end method

.method public final Zo()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->Zo:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/No;->j3:Z

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_10

    iget v0, p0, Lcom/google/android/gms/internal/ads/No;->BT:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/No;->BT:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/No;->XL()V

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

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/No;->gW:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/No;->XL()V

    return-void
.end method

.method protected final j6(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/No;->vy:Z

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/dk;->j6(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-direct {p0, v2, p2}, Lcom/google/android/gms/internal/ads/No;->DW(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_1a
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzty;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzty;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->EQ()Lcom/google/android/gms/internal/ads/DF;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/DF;->j6(Lcom/google/android/gms/internal/ads/zzty;)Lcom/google/android/gms/internal/ads/zztv;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zztv;->DW()Z

    move-result v3

    if-eqz v3, :cond_3a

    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zztv;->FH()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, v0, v0, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_3a
    invoke-static {}, Lcom/google/android/gms/internal/ads/cm;->j6()Z

    move-result v0

    if-eqz v0, :cond_57

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->AR:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/No;->DW(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_56} :catch_5a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_56} :catch_58

    return-object p1

    :cond_57
    return-object v1

    :catch_58
    move-exception p1

    goto :goto_5b

    :catch_5a
    move-exception p1

    :goto_5b
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p2

    const-string v0, "AdWebViewClient.interceptRequest"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public final j6(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->lg:Lcom/google/android/gms/internal/ads/Qf;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Qf;->j6(II)V

    :cond_7
    return-void
.end method

.method public final j6(IIZ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->U2:Lcom/google/android/gms/internal/ads/Zf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Zf;->j6(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->lg:Lcom/google/android/gms/internal/ads/Qf;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Qf;->j6(IIZ)V

    :cond_c
    return-void
.end method

.method public final j6(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->Zo:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/No;->QX:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->SI()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/No;->XL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/No;->aM:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v2

    if-nez v2, :cond_17

    move-object v5, v1

    goto :goto_1a

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/No;->VH:Lcom/google/android/gms/internal/ads/WG;

    move-object v5, v2

    :goto_1a
    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->gn:Lcom/google/android/gms/ads/internal/overlay/m;

    :goto_1f
    move-object v6, v1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/No;->Mr:Lcom/google/android/gms/ads/internal/overlay/s;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/overlay/s;Lcom/google/android/gms/internal/ads/zzbbi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/No;->j6(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/ads/internal/overlay/s;ZLcom/google/android/gms/ads/internal/gmsg/F;Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/ag;Lcom/google/android/gms/internal/ads/Wj;)V
    .registers 13

    if-nez p8, :cond_e

    new-instance p8, Lcom/google/android/gms/ads/internal/ua;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p8, v0, p10, v1}, Lcom/google/android/gms/ads/internal/ua;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Wj;Lcom/google/android/gms/internal/ads/zzaso;)V

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/ads/Qf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-direct {v0, v1, p9}, Lcom/google/android/gms/internal/ads/Qf;-><init>(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/ag;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/No;->lg:Lcom/google/android/gms/internal/ads/Qf;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/No;->er:Lcom/google/android/gms/internal/ads/Wj;

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

    invoke-virtual {p0, v0, p10}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_35
    new-instance p10, Lcom/google/android/gms/ads/internal/gmsg/j;

    invoke-direct {p10, p4}, Lcom/google/android/gms/ads/internal/gmsg/j;-><init>(Lcom/google/android/gms/ads/internal/gmsg/k;)V

    const-string v0, "/appEvent"

    invoke-virtual {p0, v0, p10}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/backButton"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->tp:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/refresh"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->EQ:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/canOpenURLs"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->j6:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/canOpenIntents"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->DW:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/click"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->FH:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/close"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->Hw:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/customClose"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->v5:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/instrument"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->J8:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/delayPageLoaded"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->QX:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/delayPageClosed"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->XL:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/getLocationInfo"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->aM:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/httpTrack"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->Zo:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p10, "/log"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/m;->VH:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p10, v0}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    new-instance p10, Lcom/google/android/gms/ads/internal/gmsg/b;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->lg:Lcom/google/android/gms/internal/ads/Qf;

    invoke-direct {p10, p8, v0, p9}, Lcom/google/android/gms/ads/internal/gmsg/b;-><init>(Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/Qf;Lcom/google/android/gms/internal/ads/ag;)V

    const-string p9, "/mraid"

    invoke-virtual {p0, p9, p10}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p9, "/mraidLoaded"

    iget-object p10, p0, Lcom/google/android/gms/internal/ads/No;->U2:Lcom/google/android/gms/internal/ads/Zf;

    invoke-virtual {p0, p9, p10}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    new-instance p9, Lcom/google/android/gms/ads/internal/gmsg/c;

    iget-object p10, p0, Lcom/google/android/gms/internal/ads/No;->lg:Lcom/google/android/gms/internal/ads/Qf;

    invoke-direct {p9, p8, p10}, Lcom/google/android/gms/ads/internal/gmsg/c;-><init>(Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/Qf;)V

    const-string p10, "/open"

    invoke-virtual {p0, p10, p9}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    new-instance p9, Lcom/google/android/gms/internal/ads/vo;

    invoke-direct {p9}, Lcom/google/android/gms/internal/ads/vo;-><init>()V

    const-string p10, "/precache"

    invoke-virtual {p0, p10, p9}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p9, "/touch"

    sget-object p10, Lcom/google/android/gms/ads/internal/gmsg/m;->u7:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p9, p10}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p9, "/video"

    sget-object p10, Lcom/google/android/gms/ads/internal/gmsg/m;->we:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p9, p10}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string p9, "/videoMeta"

    sget-object p10, Lcom/google/android/gms/ads/internal/gmsg/m;->J0:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-virtual {p0, p9, p10}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object p9

    iget-object p10, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p10}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object p10

    invoke-virtual {p9, p10}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result p9

    if-eqz p9, :cond_f8

    new-instance p9, Lcom/google/android/gms/ads/internal/gmsg/zzaa;

    iget-object p10, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p10}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object p10

    invoke-direct {p9, p10}, Lcom/google/android/gms/ads/internal/gmsg/zzaa;-><init>(Landroid/content/Context;)V

    const-string p10, "/logScionEvent"

    invoke-virtual {p0, p10, p9}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_f8
    if-eqz p7, :cond_104

    new-instance p9, Lcom/google/android/gms/ads/internal/gmsg/E;

    invoke-direct {p9, p7}, Lcom/google/android/gms/ads/internal/gmsg/E;-><init>(Lcom/google/android/gms/ads/internal/gmsg/F;)V

    const-string p7, "/setInterstitialProperties"

    invoke-virtual {p0, p7, p9}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_104
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/No;->VH:Lcom/google/android/gms/internal/ads/WG;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/No;->gn:Lcom/google/android/gms/ads/internal/overlay/m;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/No;->EQ:Lcom/google/android/gms/ads/internal/gmsg/i;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/No;->we:Lcom/google/android/gms/ads/internal/gmsg/k;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/No;->Mr:Lcom/google/android/gms/ads/internal/overlay/s;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/No;->a8:Lcom/google/android/gms/ads/internal/ua;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/No;->J8:Z

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/up;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/No;->u7:Lcom/google/android/gms/internal/ads/up;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/vp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/No;->tp:Lcom/google/android/gms/internal/ads/vp;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/wp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/No;->J0:Lcom/google/android/gms/internal/ads/wp;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/xp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/No;->rN:Lcom/google/android/gms/internal/ads/xp;

    return-void
.end method

.method public final j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V
    .registers 6
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->v5:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_17

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/No;->v5:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public final j6(Ljava/lang/String;Lcom/google/android/gms/common/util/p;)V
    .registers 8
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->v5:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p2, v3}, Lcom/google/android/gms/common/util/p;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2e
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    goto :goto_37

    :goto_36
    throw p1

    :goto_37
    goto :goto_36
.end method

.method public final j6(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/No;->J8:Z

    return-void
.end method

.method public final j6(ZI)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_18

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->VH:Lcom/google/android/gms/internal/ads/WG;

    :goto_18
    move-object v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/No;->gn:Lcom/google/android/gms/ads/internal/overlay/m;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/No;->Mr:Lcom/google/android/gms/ads/internal/overlay/s;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v8

    move-object v1, v0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/overlay/s;Lcom/google/android/gms/internal/ads/Mo;ZILcom/google/android/gms/internal/ads/zzbbi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/No;->j6(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final j6(ZILjava/lang/String;)V
    .registers 19

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v3

    if-nez v3, :cond_18

    move-object v5, v2

    goto :goto_1b

    :cond_18
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/No;->VH:Lcom/google/android/gms/internal/ads/WG;

    move-object v5, v3

    :goto_1b
    if-eqz v1, :cond_1e

    goto :goto_27

    :cond_1e
    new-instance v2, Lcom/google/android/gms/internal/ads/Ro;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/No;->gn:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/Ro;-><init>(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/ads/internal/overlay/m;)V

    :goto_27
    move-object v6, v2

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/No;->EQ:Lcom/google/android/gms/ads/internal/gmsg/i;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/No;->we:Lcom/google/android/gms/ads/internal/gmsg/k;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/No;->Mr:Lcom/google/android/gms/ads/internal/overlay/s;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v14

    move-object v4, v1

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/ads/internal/overlay/s;Lcom/google/android/gms/internal/ads/Mo;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/No;->j6(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final j6(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v3

    if-nez v3, :cond_19

    move-object v5, v2

    goto :goto_1c

    :cond_19
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/No;->VH:Lcom/google/android/gms/internal/ads/WG;

    move-object v5, v3

    :goto_1c
    if-eqz v1, :cond_1f

    goto :goto_28

    :cond_1f
    new-instance v2, Lcom/google/android/gms/internal/ads/Ro;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/No;->gn:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/Ro;-><init>(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/ads/internal/overlay/m;)V

    :goto_28
    move-object v6, v2

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/No;->EQ:Lcom/google/android/gms/ads/internal/gmsg/i;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/No;->we:Lcom/google/android/gms/ads/internal/gmsg/k;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/No;->Mr:Lcom/google/android/gms/ads/internal/overlay/s;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v15

    move-object v4, v1

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/ads/internal/overlay/s;Lcom/google/android/gms/internal/ads/Mo;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/No;->j6(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final j6()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/No;->j3:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Loading resource: "

    if-eqz v0, :cond_11

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_16

    :cond_11
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "gmsg"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_38

    const-string p2, "mobileads.google.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/No;->j6(Landroid/net/Uri;)V

    :cond_38
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/No;->Zo:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Mo;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_17

    const-string p2, "Blank page loaded, 1..."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Mo;->Zo()V

    monitor-exit p1

    return-void

    :cond_17
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_29

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/No;->yS:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/No;->tp:Lcom/google/android/gms/internal/ads/vp;

    if-eqz p1, :cond_25

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vp;->j6()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/No;->tp:Lcom/google/android/gms/internal/ads/vp;

    :cond_25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/No;->XL()V

    return-void

    :catchall_29
    move-exception p2

    :try_start_2a
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p2
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    if-gez p2, :cond_d

    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/No;->j6:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_d

    aget-object v0, v1, v0

    goto :goto_11

    :cond_d
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "http_err"

    invoke-direct {p0, v1, v2, v0, p4}, Lcom/google/android/gms/internal/ads/No;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 8

    if-eqz p3, :cond_27

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    if-ltz v0, :cond_10

    sget-object v1, Lcom/google/android/gms/internal/ads/No;->DW:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_10

    aget-object v0, v1, v0

    goto :goto_14

    :cond_10
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/Vk;->j6(Landroid/net/http/SslError;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ssl_err"

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/google/android/gms/internal/ads/No;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/No;->Hw:Lcom/google/android/gms/internal/ads/YF;

    if-eqz p2, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/ads/_F;->P8:Lcom/google/android/gms/internal/ads/_F;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/YF;->j6(Lcom/google/android/gms/internal/ads/_F;)V

    :cond_9
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1a

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1a
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 3

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_14

    const/16 p2, 0xde

    if-eq p1, p2, :cond_14

    packed-switch p1, :pswitch_data_16

    packed-switch p1, :pswitch_data_28

    const/4 p1, 0x0

    return p1

    :cond_14
    :pswitch_14  #0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x7e, 0x7f, 0x80, 0x81, 0x82
    const/4 p1, 0x1

    return p1

    :pswitch_data_16
    .packed-switch 0x55
        :pswitch_14  #00000055
        :pswitch_14  #00000056
        :pswitch_14  #00000057
        :pswitch_14  #00000058
        :pswitch_14  #00000059
        :pswitch_14  #0000005a
        :pswitch_14  #0000005b
    .end packed-switch

    :pswitch_data_28
    .packed-switch 0x7e
        :pswitch_14  #0000007e
        :pswitch_14  #0000007f
        :pswitch_14  #00000080
        :pswitch_14  #00000081
        :pswitch_14  #00000082
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 14

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AdWebView shouldOverrideUrlLoading: "

    if-eqz v1, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3b

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/No;->j6(Landroid/net/Uri;)V

    goto/16 :goto_101

    :cond_3b
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/No;->J8:Z

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_77

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5e

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    goto :goto_5e

    :cond_5c
    const/4 v1, 0x0

    goto :goto_5f

    :cond_5e
    :goto_5e
    const/4 v1, 0x1

    :goto_5f
    if-eqz v1, :cond_77

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->VH:Lcom/google/android/gms/internal/ads/WG;

    if-eqz v0, :cond_72

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/WG;->J0()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->er:Lcom/google/android/gms/internal/ads/Wj;

    if-eqz v0, :cond_6f

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/Wj;->j6(Ljava/lang/String;)V

    :cond_6f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/No;->VH:Lcom/google/android/gms/internal/ads/WG;

    :cond_72
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_77
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result p1

    if-nez p1, :cond_e8

    :try_start_83
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->Ws()Lcom/google/android/gms/internal/ads/ix;

    move-result-object p1

    if-eqz p1, :cond_c2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ix;->j6(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_c2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/No;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Mo;->nw()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/ix;->j6(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0
    :try_end_a7
    .catch Lcom/google/android/gms/internal/ads/jx; {:try_start_83 .. :try_end_a7} :catch_a8

    goto :goto_c2

    :catch_a8
    move-exception p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, "Unable to append parameter to URL: "

    if-eqz v1, :cond_ba

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_bf

    :cond_ba
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_bf
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_c2
    :goto_c2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/No;->a8:Lcom/google/android/gms/ads/internal/ua;

    if-eqz p1, :cond_d3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/ua;->DW()Z

    move-result p1

    if-eqz p1, :cond_cd

    goto :goto_d3

    :cond_cd
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/No;->a8:Lcom/google/android/gms/ads/internal/ua;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/ua;->j6(Ljava/lang/String;)V

    goto :goto_101

    :cond_d3
    :goto_d3
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/No;->j6(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto :goto_101

    :cond_e8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "AdWebView unable to handle URL: "

    if-eqz p2, :cond_f9

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_fe

    :cond_f9
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_fe
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :goto_101
    return v2
.end method

.method public final tp()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->er:Lcom/google/android/gms/internal/ads/Wj;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Wj;->v5()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/No;->er:Lcom/google/android/gms/internal/ads/Wj;

    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/No;->QX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/No;->v5:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/No;->VH:Lcom/google/android/gms/internal/ads/WG;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/No;->gn:Lcom/google/android/gms/ads/internal/overlay/m;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/No;->u7:Lcom/google/android/gms/internal/ads/up;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/No;->tp:Lcom/google/android/gms/internal/ads/vp;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/No;->EQ:Lcom/google/android/gms/ads/internal/gmsg/i;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/No;->we:Lcom/google/android/gms/ads/internal/gmsg/k;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/No;->J8:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/No;->Ws:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/No;->QX:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/No;->j3:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/No;->Mr:Lcom/google/android/gms/ads/internal/overlay/s;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/No;->J0:Lcom/google/android/gms/internal/ads/wp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/No;->lg:Lcom/google/android/gms/internal/ads/Qf;

    if-eqz v2, :cond_38

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Qf;->j6(Z)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/No;->lg:Lcom/google/android/gms/internal/ads/Qf;

    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public final u7()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/No;->Ws:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final v5()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->Zo:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/No;->J8:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/No;->Ws:Z

    sget-object v1, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/Oo;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/Oo;-><init>(Lcom/google/android/gms/internal/ads/No;)V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/No;->XL:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
