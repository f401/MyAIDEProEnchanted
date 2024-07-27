.class public final Lcom/google/android/gms/ads/internal/gmsg/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/ads/ip;",
        ":",
        "Lcom/google/android/gms/internal/ads/jp;",
        ":",
        "Lcom/google/android/gms/internal/ads/np;",
        ":",
        "Lcom/google/android/gms/internal/ads/qp;",
        ":",
        "Lcom/google/android/gms/internal/ads/sp;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Qf;

.field private final j6:Lcom/google/android/gms/ads/internal/ua;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/Qf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/c;->j6:Lcom/google/android/gms/ads/internal/ua;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/c;->DW:Lcom/google/android/gms/internal/ads/Qf;

    return-void
.end method

.method private static DW(Ljava/util/Map;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "o"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Vk;->Hw()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v1, "l"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Vk;->FH()I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v1, "c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Vk;->v5()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ix;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 8

    if-nez p1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ix;->DW(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, p0, p3, p4}, Lcom/google/android/gms/internal/ads/ix;->j6(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/jx; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    const-string v2, "OpenGmsgHandler.maybeAddClickSignalsToUrl"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private final j6(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/c;->DW:Lcom/google/android/gms/internal/ads/Qf;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Qf;->j6(Z)V

    :cond_0
    return-void
.end method

.method private static j6(Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "1"

    const-string v1, "custom_close"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 12

    const/4 v5, 0x1

    const/4 v4, 0x0

    check-cast p1, Lcom/google/android/gms/internal/ads/ip;

    const-string v1, "u"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ip;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/ads/dk;->j6(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    const-string v1, "a"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "Action missing from an open GMSG."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/gmsg/c;->j6:Lcom/google/android/gms/ads/internal/ua;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/ua;->DW()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/gmsg/c;->j6:Lcom/google/android/gms/ads/internal/ua;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/internal/ua;->j6(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "expand"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/jp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/jp;->Mr()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Cannot expand WebView that is already expanded."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4}, Lcom/google/android/gms/ads/internal/gmsg/c;->j6(Z)V

    check-cast p1, Lcom/google/android/gms/internal/ads/np;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/c;->j6(Ljava/util/Map;)Z

    move-result v1

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/c;->DW(Ljava/util/Map;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/np;->j6(ZI)V

    goto :goto_0

    :cond_3
    const-string v2, "webapp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v4}, Lcom/google/android/gms/ads/internal/gmsg/c;->j6(Z)V

    if-eqz v3, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/np;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/c;->j6(Ljava/util/Map;)Z

    move-result v1

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/c;->DW(Ljava/util/Map;)I

    move-result v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/np;->j6(ZILjava/lang/String;)V

    goto :goto_0

    :cond_4
    check-cast p1, Lcom/google/android/gms/internal/ads/np;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/c;->j6(Ljava/util/Map;)Z

    move-result v3

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/c;->DW(Ljava/util/Map;)I

    move-result v4

    const-string v1, "html"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "baseurl"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/np;->j6(ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "app"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v2, "true"

    const-string v1, "system_browser"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v5}, Lcom/google/android/gms/ads/internal/gmsg/c;->j6(Z)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ip;->getContext()Landroid/content/Context;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Destination url cannot be empty."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v2, Lcom/google/android/gms/ads/internal/gmsg/d;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ip;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/qp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/qp;->Ws()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v4

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/sp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/sp;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/ads/internal/gmsg/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ix;Landroid/view/View;)V

    invoke-virtual {v2, p2}, Lcom/google/android/gms/ads/internal/gmsg/d;->j6(Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    check-cast p1, Lcom/google/android/gms/internal/ads/np;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/np;->j6(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, v5}, Lcom/google/android/gms/ads/internal/gmsg/c;->j6(Z)V

    const-string v1, "intent_url"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x0

    :try_start_1
    invoke-static {v1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v5, v1

    :goto_1
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    :try_start_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ip;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/qp;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/qp;->Ws()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v7

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/sp;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/sp;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ip;->nw()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v6, v7, v4, v1, v8}, Lcom/google/android/gms/ads/internal/gmsg/c;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ix;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    :goto_2
    :try_start_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    :goto_3
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_8
    if-eqz v5, :cond_b

    check-cast p1, Lcom/google/android/gms/internal/ads/np;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-direct {v1, v5}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/np;->j6(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto/16 :goto_0

    :catch_1
    move-exception v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "Error parsing the url: "

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v2

    goto :goto_1

    :cond_9
    new-instance v1, Ljava/lang/String;

    const-string v5, "Error parsing the url: "

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception v1

    const-string v6, "Error occurred while adding signals."

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v6

    const-string v7, "OpenGmsgHandler.onGmsg"

    invoke-virtual {v6, v1, v7}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_2

    :catch_3
    move-exception v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "Error parsing the uri: "

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    const-string v6, "OpenGmsgHandler.onGmsg"

    invoke-virtual {v1, v4, v6}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_3

    :cond_a
    new-instance v1, Ljava/lang/String;

    const-string v6, "Error parsing the uri: "

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ip;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/qp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/qp;->Ws()Lcom/google/android/gms/internal/ads/ix;

    move-result-object v4

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/sp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/sp;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ip;->nw()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v2, v4, v3, v1, v5}, Lcom/google/android/gms/ads/internal/gmsg/c;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ix;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    :cond_c
    check-cast p1, Lcom/google/android/gms/internal/ads/np;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const-string v2, "i"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "m"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "p"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "c"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "f"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "e"

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/np;->j6(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto/16 :goto_0

    :cond_d
    move-object v1, v2

    goto/16 :goto_3

    :cond_e
    move-object v5, v2

    goto/16 :goto_1
.end method
