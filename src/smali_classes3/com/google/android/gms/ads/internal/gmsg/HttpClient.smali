.class public Lcom/google/android/gms/ads/internal/gmsg/HttpClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/gmsg/HttpClient$a;,
        Lcom/google/android/gms/ads/internal/gmsg/HttpClient$b;,
        Lcom/google/android/gms/ads/internal/gmsg/HttpClient$c;,
        Lcom/google/android/gms/ads/internal/gmsg/HttpClient$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B<",
        "Lcom/google/android/gms/internal/ads/Sc;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbob:Lcom/google/android/gms/internal/ads/zzbbi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->zzbob:Lcom/google/android/gms/internal/ads/zzbbi;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/internal/gmsg/HttpClient$b;)Lcom/google/android/gms/ads/internal/gmsg/HttpClient$c;
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$b;->DW()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_ed
    .catchall {:try_start_2 .. :try_end_c} :catchall_eb

    :try_start_c
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->zzbob:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$b;->FH()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_22
    if-ge v5, v4, :cond_38

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$a;

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$a;->j6()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$a;->DW()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_38
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$b;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_62

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$b;->Hw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v5, v3

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_63

    :cond_62
    move-object v3, v1

    :goto_63
    new-instance v5, Lcom/google/android/gms/internal/ads/cm;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/cm;-><init>()V

    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/net/HttpURLConnection;[B)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_b3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_82
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_98
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_82

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$a;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v11, v9}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_98

    :cond_b3
    new-instance v6, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$d;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$b;->j6()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/Nk;->j6(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p1, v7, v3, v8}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$d;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$d;->DW()I

    move-result p1

    invoke-virtual {v5, v2, p1}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/net/HttpURLConnection;I)V

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$d;->j6()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$c;

    invoke-direct {p1, p0, v4, v6, v1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$c;-><init>(Lcom/google/android/gms/ads/internal/gmsg/HttpClient;ZLcom/google/android/gms/ads/internal/gmsg/HttpClient$d;Ljava/lang/String;)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_e3} :catch_e9
    .catchall {:try_start_c .. :try_end_e3} :catchall_fe

    if-eqz v2, :cond_e8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e8
    return-object p1

    :catch_e9
    move-exception p1

    goto :goto_ef

    :catchall_eb
    move-exception p1

    goto :goto_100

    :catch_ed
    move-exception p1

    move-object v2, v1

    :goto_ef
    :try_start_ef
    new-instance v3, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$c;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$c;-><init>(Lcom/google/android/gms/ads/internal/gmsg/HttpClient;ZLcom/google/android/gms/ads/internal/gmsg/HttpClient$d;Ljava/lang/String;)V
    :try_end_f8
    .catchall {:try_start_ef .. :try_end_f8} :catchall_fe

    if-eqz v2, :cond_fd

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_fd
    return-object v3

    :catchall_fe
    move-exception p1

    move-object v1, v2

    :goto_100
    if-eqz v1, :cond_105

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_105
    goto :goto_107

    :goto_106
    throw p1

    :goto_107
    goto :goto_106
.end method

.method private static zza(Lcom/google/android/gms/ads/internal/gmsg/HttpClient$d;)Lorg/json/JSONObject;
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "http_request_id"

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$d;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$d;->j6()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    const-string v1, "body"

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$d;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1d
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$d;->Hw()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$a;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "key"

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$a;->j6()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$a;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2a

    :cond_53
    const-string v2, "headers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "response_code"

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$d;->DW()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_61} :catch_62

    goto :goto_68

    :catch_62
    move-exception p0

    const-string v1, "Error constructing JSON for http response."

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_68
    return-object v0
.end method

.method private static zzc(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/gmsg/HttpClient$b;
    .registers 10

    const-string v0, "http_request_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "post_body"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_13
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_18} :catch_1a

    move-object v3, v4

    goto :goto_20

    :catch_1a
    move-exception v1

    const-string v4, "Error constructing http request."

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "headers"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_32

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    :cond_32
    const/4 v4, 0x0

    :goto_33
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_56

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_53

    new-instance v6, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$a;

    const-string v7, "key"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_56
    new-instance p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$b;

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$b;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public send(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 11

    const-string v0, "reason"

    const-string v1, "success"

    const-string v2, "response"

    const-string v3, "http_request_id"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, ""

    const/4 v6, 0x0

    :try_start_10
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->zzc(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/gmsg/HttpClient$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->zza(Lcom/google/android/gms/ads/internal/gmsg/HttpClient$b;)Lcom/google/android/gms/ads/internal/gmsg/HttpClient$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$c;->DW()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$c;->FH()Lcom/google/android/gms/ads/internal/gmsg/HttpClient$d;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->zza(Lcom/google/android/gms/ads/internal/gmsg/HttpClient$d;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    invoke-virtual {v4, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_6a

    :cond_32
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$c;->j6()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_48} :catch_49

    goto :goto_6a

    :catch_49
    move-exception p1

    const-string v7, "Error executing http request."

    invoke-static {v7, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_4f
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v8, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_65} :catch_66

    goto :goto_6a

    :catch_66
    move-exception p1

    invoke-static {v7, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6a
    return-object v4
.end method

.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/ads/internal/gmsg/C;

    check-cast p1, Lcom/google/android/gms/internal/ads/Sc;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/ads/internal/gmsg/C;-><init>(Lcom/google/android/gms/ads/internal/gmsg/HttpClient;Ljava/util/Map;Lcom/google/android/gms/internal/ads/Sc;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/Hm;

    return-void
.end method
