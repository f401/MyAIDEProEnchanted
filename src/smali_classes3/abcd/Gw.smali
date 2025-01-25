.class public Labcd/Gw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Gw$a;
    }
.end annotation


# static fields
.field private static final j6:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy kk:mm:ss ZZZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Labcd/Gw;->j6:Ljava/text/DateFormat;

    return-void
.end method

.method public static DW(Labcd/Gw$a;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Labcd/Zw;)Labcd/Dw$f;
    .registers 8

    sget-object v0, Labcd/Gw$a;->j6:Labcd/Gw$a;

    if-ne p0, v0, :cond_e

    new-instance p0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1, p3, p2, p4}, Labcd/Gw;->j6(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_5a

    :cond_e
    new-instance p0, Lorg/apache/http/client/methods/HttpPost;

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Labcd/Gw;->j6(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_5a

    array-length p1, p4

    const/4 p2, 0x2

    if-lt p1, p2, :cond_5a

    array-length p1, p4

    rem-int/2addr p1, p2

    if-nez p1, :cond_52

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    :goto_28
    array-length p3, p4

    if-ge p2, p3, :cond_40

    add-int/lit8 p3, p2, 0x1

    aget-object v0, p4, p3

    if-eqz v0, :cond_3d

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v1, p4, p2

    aget-object p3, p4, p3

    invoke-direct {v0, v1, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 p2, p2, 0x2

    goto :goto_28

    :cond_40
    :try_start_40
    new-instance p2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string p3, "UTF-8"

    invoke-direct {p2, p1, p3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_4a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_40 .. :try_end_4a} :catch_4b

    goto :goto_5a

    :catch_4b
    move-exception p0

    new-instance p1, Labcd/Jw;

    invoke-direct {p1, p0}, Labcd/Jw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Params must have an even number of elements."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    :goto_5a
    invoke-interface {p5, p0}, Labcd/Zw;->j6(Lorg/apache/http/HttpRequest;)V

    new-instance p1, Labcd/Dw$f;

    invoke-static {p5, p0}, Labcd/Gw;->j6(Labcd/Zw;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Labcd/Dw$f;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V

    return-object p1
.end method

.method public static j6(Labcd/Gw$a;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Labcd/Zw;)Ljava/lang/Object;
    .registers 6

    invoke-static/range {p0 .. p5}, Labcd/Gw;->DW(Labcd/Gw$a;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Labcd/Zw;)Labcd/Dw$f;

    move-result-object p0

    iget-object p0, p0, Labcd/Dw$f;->DW:Lorg/apache/http/HttpResponse;

    invoke-static {p0}, Labcd/Gw;->j6(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_32

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    const/16 v3, 0x4000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_73
    .catch Labcd/kL; {:try_start_1 .. :try_end_17} :catch_60
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_17} :catch_59
    .catchall {:try_start_1 .. :try_end_17} :catchall_57

    :try_start_17
    invoke-virtual {v1, v3}, Ljava/io/BufferedReader;->mark(I)V

    new-instance v0, Labcd/jL;

    invoke-direct {v0}, Labcd/jL;-><init>()V

    invoke-virtual {v0, v1}, Labcd/jL;->j6(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_23} :catch_2f
    .catch Labcd/kL; {:try_start_17 .. :try_end_23} :catch_2c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_23} :catch_29
    .catchall {:try_start_17 .. :try_end_23} :catchall_27

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_33

    :catchall_27
    move-exception p0

    goto :goto_7b

    :catch_29
    move-exception p0

    move-object v0, v1

    goto :goto_5a

    :catch_2c
    move-exception v0

    move-object v0, v1

    goto :goto_61

    :catch_2f
    move-exception p0

    move-object v0, v1

    goto :goto_74

    :cond_32
    move-object v1, v0

    :goto_33
    if-eqz v0, :cond_3a

    :try_start_35
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_3a

    :catch_39
    move-exception v0

    :cond_3a
    :goto_3a
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_56

    const/16 v2, 0x191

    if-ne v0, v2, :cond_50

    new-instance p0, Labcd/Qw;

    invoke-direct {p0}, Labcd/Qw;-><init>()V

    throw p0

    :cond_50
    new-instance v0, Labcd/Pw;

    invoke-direct {v0, p0, v1}, Labcd/Pw;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;)V

    throw v0

    :cond_56
    return-object v1

    :catchall_57
    move-exception p0

    goto :goto_7a

    :catch_59
    move-exception p0

    :goto_5a
    :try_start_5a
    new-instance v1, Labcd/Jw;

    invoke-direct {v1, p0}, Labcd/Jw;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_60
    move-exception v1

    :goto_61
    invoke-static {p0}, Labcd/Pw;->j6(Lorg/apache/http/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_6d

    new-instance v1, Labcd/Pw;

    invoke-direct {v1, p0}, Labcd/Pw;-><init>(Lorg/apache/http/HttpResponse;)V

    throw v1

    :cond_6d
    new-instance p0, Labcd/Lw;

    invoke-direct {p0, v0}, Labcd/Lw;-><init>(Ljava/io/BufferedReader;)V

    throw p0

    :catch_73
    move-exception p0

    :goto_74
    new-instance v1, Labcd/Kw;

    invoke-direct {v1, p0}, Labcd/Kw;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_7a
    .catchall {:try_start_5a .. :try_end_7a} :catchall_57

    :goto_7a
    move-object v1, v0

    :goto_7b
    if-eqz v1, :cond_82

    :try_start_7d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_82

    :catch_81
    move-exception v0

    :cond_82
    :goto_82
    throw p0
.end method

.method public static j6(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_17
    :try_start_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%2F"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_52

    array-length p2, p3

    if-lez p2, :cond_52

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Labcd/Gw;->j6([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_52
    const-string p2, "+"

    const-string p3, "%20"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "*"

    const-string p3, "%2A"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_62
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_62} :catch_7c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":443"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_7c
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static j6([Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "UTF-8"

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_54

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    :goto_c
    :try_start_c
    array-length v5, p0
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_d} :catch_51

    if-ge v4, v5, :cond_50

    add-int/lit8 v5, v4, 0x1

    aget-object v6, p0, v5

    if-eqz v6, :cond_4d

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    goto :goto_2a

    :cond_19
    :try_start_19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v4

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v5

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_4d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_4d} :catch_51

    :cond_4d
    add-int/lit8 v4, v4, 0x2

    goto :goto_c

    :cond_50
    return-object v3

    :catch_51
    move-exception p0

    const/4 p0, 0x0

    return-object p0

    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Params must have an even number of elements."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5d

    :goto_5c
    throw p0

    :goto_5d
    goto :goto_5c
.end method

.method public static j6(Labcd/Zw;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 3

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Labcd/Gw;->j6(Labcd/Zw;Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Labcd/Zw;Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;
    .registers 7

    invoke-static {p0}, Labcd/Gw;->j6(Labcd/Zw;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {p0, p1}, Labcd/Zw;->j6(Lorg/apache/http/client/methods/HttpUriRequest;)V

    if-ltz p2, :cond_10

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    :cond_10
    invoke-static {p1}, Labcd/Gw;->j6(Lorg/apache/http/HttpRequest;)Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_16
    const/4 v3, 0x5

    if-ge v2, v3, :cond_36

    :try_start_19
    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_1d} :catch_24
    .catch Ljavax/net/ssl/SSLException; {:try_start_19 .. :try_end_1d} :catch_22
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_1d} :catch_1e

    goto :goto_25

    :catch_1e
    move-exception p0

    goto :goto_54

    :catch_20
    move-exception p0

    goto :goto_5a

    :catch_22
    move-exception p0

    goto :goto_60

    :catch_24
    move-exception v3

    :goto_25
    if-eqz v1, :cond_28

    goto :goto_36

    :cond_28
    :try_start_28
    invoke-static {v0, p0}, Labcd/Gw;->j6(Lorg/apache/http/client/HttpClient;Labcd/Zw;)V

    if-eqz p2, :cond_30

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_30
    new-instance p0, Labcd/Nw;

    invoke-direct {p0}, Labcd/Nw;-><init>()V

    throw p0

    :cond_36
    :goto_36
    if-eqz v1, :cond_4c

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p0

    const/16 p1, 0xc8

    if-eq p0, p1, :cond_4b

    const/16 p1, 0xce

    if-eq p0, p1, :cond_4b

    invoke-static {v1}, Labcd/Gw;->j6(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    :cond_4b
    return-object v1

    :cond_4c
    new-instance p0, Labcd/Kw;

    const-string p1, "Apache HTTPClient encountered an error. No response, try again."

    invoke-direct {p0, p1}, Labcd/Kw;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_54
    .catch Ljavax/net/ssl/SSLException; {:try_start_28 .. :try_end_54} :catch_22
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_54} :catch_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_28 .. :try_end_54} :catch_1e

    :goto_54
    new-instance p1, Labcd/Jw;

    invoke-direct {p1, p0}, Labcd/Jw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_5a
    new-instance p1, Labcd/Kw;

    invoke-direct {p1, p0}, Labcd/Kw;-><init>(Ljava/io/IOException;)V

    throw p1

    :goto_60
    new-instance p1, Labcd/Ow;

    invoke-direct {p1, p0}, Labcd/Ow;-><init>(Ljavax/net/ssl/SSLException;)V

    goto :goto_67

    :goto_66
    throw p1

    :goto_67
    goto :goto_66
.end method

.method private static j6(Labcd/Zw;)Lorg/apache/http/client/HttpClient;
    .registers 2

    const-class v0, Labcd/Gw;

    monitor-enter v0

    :try_start_3
    invoke-interface {p0}, Labcd/Zw;->v5()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-static {v0, p0}, Labcd/Gw;->j6(Lorg/apache/http/client/HttpClient;Labcd/Zw;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    const-class p0, Labcd/Gw;

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception p0

    const-class v0, Labcd/Gw;

    monitor-exit v0

    throw p0
.end method

.method private static j6(Lorg/apache/http/client/HttpClient;Labcd/Zw;)V
    .registers 5

    invoke-interface {p1}, Labcd/Zw;->j6()Labcd/Zw$b;

    move-result-object p1

    const-string v0, "http.route.default-proxy"

    if-eqz p1, :cond_30

    iget-object v1, p1, Labcd/Zw$b;->j6:Ljava/lang/String;

    if-eqz v1, :cond_30

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    iget v1, p1, Labcd/Zw$b;->DW:I

    if-gez v1, :cond_20

    new-instance v1, Lorg/apache/http/HttpHost;

    iget-object p1, p1, Labcd/Zw$b;->j6:Ljava/lang/String;

    invoke-direct {v1, p1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :cond_20
    new-instance v2, Lorg/apache/http/HttpHost;

    iget-object p1, p1, Labcd/Zw$b;->j6:Ljava/lang/String;

    invoke-direct {v2, p1, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v1, v2

    :goto_28
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_37

    :cond_30
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    :goto_37
    return-void
.end method

.method private static j6(Lorg/apache/http/HttpRequest;)Z
    .registers 2

    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_14

    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0
.end method
