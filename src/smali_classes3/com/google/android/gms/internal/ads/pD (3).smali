.class public final Lcom/google/android/gms/internal/ads/pD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/iD;


# static fields
.field private static final DW:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final j6:Ljava/util/regex/Pattern;


# instance fields
.field private EQ:Lcom/google/android/gms/internal/ads/mD;

.field private final FH:Z

.field private final Hw:I

.field private J0:Ljava/io/InputStream;

.field private J8:Z

.field private QX:J

.field private final VH:Lcom/google/android/gms/internal/ads/ND;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ND<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ws:J

.field private XL:J

.field private final Zo:Ljava/lang/String;

.field private aM:J

.field private final gn:Lcom/google/android/gms/internal/ads/sD;

.field private final tp:Lcom/google/android/gms/internal/ads/BD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/BD<",
            "-",
            "Lcom/google/android/gms/internal/ads/pD;",
            ">;"
        }
    .end annotation
.end field

.field private final u7:Lcom/google/android/gms/internal/ads/sD;

.field private final v5:I

.field private we:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/pD;->j6:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/pD;->DW:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ND;Lcom/google/android/gms/internal/ads/BD;IIZLcom/google/android/gms/internal/ads/sD;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ND<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/BD<",
            "-",
            "Lcom/google/android/gms/internal/ads/pD;",
            ">;IIZ",
            "Lcom/google/android/gms/internal/ads/sD;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_21

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pD;->Zo:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pD;->VH:Lcom/google/android/gms/internal/ads/ND;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/pD;->tp:Lcom/google/android/gms/internal/ads/BD;

    new-instance p2, Lcom/google/android/gms/internal/ads/sD;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/sD;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pD;->u7:Lcom/google/android/gms/internal/ads/sD;

    iput p4, p0, Lcom/google/android/gms/internal/ads/pD;->Hw:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/pD;->v5:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/pD;->FH:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pD;->gn:Lcom/google/android/gms/internal/ads/sD;

    return-void

    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private final DW()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pD;->we:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_13

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pD;->we:Ljava/net/HttpURLConnection;

    :cond_13
    return-void
.end method

.method private static j6(Ljava/net/HttpURLConnection;)J
    .registers 11

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "DefaultHttpDataSource"

    const-string v3, "]"

    if-nez v1, :cond_37

    :try_start_10
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_14} :catch_15

    goto :goto_39

    :catch_15
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1c

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected Content-Length ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    const-wide/16 v4, -0x1

    :goto_39
    const-string v1, "Content-Range"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cc

    sget-object v1, Lcom/google/android/gms/internal/ads/pD;->j6:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_cc

    const/4 v6, 0x2

    :try_start_52
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-gez v1, :cond_6f

    move-wide v4, v6

    goto :goto_cc

    :cond_6f
    cmp-long v1, v4, v6

    if-eqz v1, :cond_cc

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1a

    add-int/2addr v1, v8

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Inconsistent headers ["

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_a9
    .catch Ljava/lang/NumberFormatException; {:try_start_52 .. :try_end_a9} :catch_aa

    goto :goto_cc

    :catch_aa
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected Content-Range ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    :goto_cc
    return-wide v4
.end method

.method private final j6(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;
    .registers 14

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iget v0, p0, Lcom/google/android/gms/internal/ads/pD;->Hw:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/pD;->v5:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pD;->u7:Lcom/google/android/gms/internal/ads/sD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sD;->j6()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_3a
    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    cmp-long v4, p3, v0

    if-nez v4, :cond_46

    cmp-long v0, p5, v2

    if-eqz v0, :cond_88

    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    cmp-long v1, p5, v2

    if-eqz v1, :cond_83

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr p3, p5

    const-wide/16 p5, 0x1

    sub-long/2addr p3, p5

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_83
    const-string p3, "Range"

    invoke-virtual {p1, p3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    const-string p3, "User-Agent"

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/pD;->Zo:Ljava/lang/String;

    invoke-virtual {p1, p3, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p7, :cond_98

    const-string p3, "Accept-Encoding"

    const-string p4, "identity"

    invoke-virtual {p1, p3, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_98
    invoke-virtual {p1, p8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p2, :cond_9f

    const/4 p3, 0x1

    goto :goto_a0

    :cond_9f
    const/4 p3, 0x0

    :goto_a0
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz p2, :cond_bf

    const-string p3, "POST"

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    array-length p3, p2

    if-eqz p3, :cond_bf

    array-length p3, p2

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    goto :goto_c2

    :cond_bf
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_c2
    return-object p1
.end method


# virtual methods
.method public final close()V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pD;->J0:Ljava/io/InputStream;

    if-eqz v2, :cond_79

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pD;->we:Ljava/net/HttpURLConnection;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/pD;->QX:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_11

    goto :goto_14

    :cond_11
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/pD;->aM:J

    sub-long/2addr v3, v7

    :goto_14
    sget v7, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v8, 0x13

    if-eq v7, v8, :cond_20

    sget v7, Lcom/google/android/gms/internal/ads/TD;->j6:I
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_8c

    const/16 v8, 0x14

    if-ne v7, v8, :cond_69

    :cond_20
    :try_start_20
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    cmp-long v7, v3, v5

    if-nez v7, :cond_30

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_36

    goto :goto_69

    :cond_30
    const-wide/16 v5, 0x800

    cmp-long v7, v3, v5

    if-lez v7, :cond_69

    :cond_36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    :cond_4e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "unexpectedEndOfInput"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_67} :catch_68
    .catchall {:try_start_20 .. :try_end_67} :catchall_8c

    goto :goto_69

    :catch_68
    move-exception v2

    :cond_69
    :goto_69
    :try_start_69
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pD;->J0:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6e} :catch_6f
    .catchall {:try_start_69 .. :try_end_6e} :catchall_8c

    goto :goto_79

    :catch_6f
    move-exception v2

    :try_start_70
    new-instance v3, Lcom/google/android/gms/internal/ads/qD;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/pD;->EQ:Lcom/google/android/gms/internal/ads/mD;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/qD;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/mD;I)V

    throw v3
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_8c

    :cond_79
    :goto_79
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pD;->J0:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pD;->DW()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/pD;->J8:Z

    if-eqz v0, :cond_8b

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/pD;->J8:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pD;->tp:Lcom/google/android/gms/internal/ads/BD;

    if-eqz v0, :cond_8b

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/BD;->j6(Ljava/lang/Object;)V

    :cond_8b
    return-void

    :catchall_8c
    move-exception v2

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pD;->J0:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pD;->DW()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/pD;->J8:Z

    if-eqz v0, :cond_9f

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/pD;->J8:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pD;->tp:Lcom/google/android/gms/internal/ads/BD;

    if-eqz v0, :cond_9f

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/BD;->j6(Ljava/lang/Object;)V

    :cond_9f
    throw v2
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pD;->we:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/mD;)J
    .registers 26

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-string v12, "Unable to connect to "

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/pD;->EQ:Lcom/google/android/gms/internal/ads/mD;

    const-wide/16 v13, 0x0

    iput-wide v13, v10, Lcom/google/android/gms/internal/ads/pD;->aM:J

    iput-wide v13, v10, Lcom/google/android/gms/internal/ads/pD;->XL:J

    const/4 v15, 0x1

    :try_start_f
    new-instance v2, Ljava/net/URL;

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/mD;->DW:[B

    iget-wide v8, v11, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    iget-wide v6, v11, Lcom/google/android/gms/internal/ads/mD;->v5:J

    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/mD;->j6(I)Z

    move-result v0

    iget-boolean v1, v10, Lcom/google/android/gms/internal/ads/pD;->FH:Z

    const/4 v4, 0x0

    if-nez v1, :cond_36

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-wide v4, v8

    move v8, v0

    move/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/pD;->j6(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_78

    :cond_36
    move-object v4, v2

    move-object/from16 v16, v3

    const/4 v1, 0x0

    :goto_3a
    add-int/lit8 v5, v1, 0x1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_16f

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v3, v16

    move-object/from16 v19, v4

    move/from16 v18, v5

    move-wide v4, v8

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move v8, v0

    move/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/pD;->j6(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x12c

    if-eq v2, v3, :cond_11a

    const/16 v3, 0x12d

    if-eq v2, v3, :cond_11a

    const/16 v3, 0x12e

    if-eq v2, v3, :cond_11a

    const/16 v3, 0x12f

    if-eq v2, v3, :cond_11a

    if-nez v16, :cond_77

    const/16 v3, 0x133

    if-eq v2, v3, :cond_11a

    const/16 v3, 0x134

    if-ne v2, v3, :cond_77

    goto/16 :goto_11a

    :cond_77
    move-object v0, v1

    :goto_78
    iput-object v0, v10, Lcom/google/android/gms/internal/ads/pD;->we:Ljava/net/HttpURLConnection;
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_7a} :catch_18c

    :try_start_7a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7e} :catch_f5

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_d9

    const/16 v2, 0x12b

    if-le v0, v2, :cond_87

    goto :goto_d9

    :cond_87
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/pD;->we:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    if-ne v0, v1, :cond_95

    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    cmp-long v2, v0, v13

    if-eqz v2, :cond_95

    move-wide v13, v0

    :cond_95
    iput-wide v13, v10, Lcom/google/android/gms/internal/ads/pD;->Ws:J

    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/mD;->j6(I)Z

    move-result v0

    if-nez v0, :cond_b7

    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/mD;->v5:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a6

    goto :goto_b9

    :cond_a6
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/pD;->we:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pD;->j6(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b4

    iget-wide v2, v10, Lcom/google/android/gms/internal/ads/pD;->Ws:J

    sub-long v2, v0, v2

    :cond_b4
    iput-wide v2, v10, Lcom/google/android/gms/internal/ads/pD;->QX:J

    goto :goto_bb

    :cond_b7
    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/mD;->v5:J

    :goto_b9
    iput-wide v0, v10, Lcom/google/android/gms/internal/ads/pD;->QX:J

    :goto_bb
    :try_start_bb
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/pD;->we:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/pD;->J0:Ljava/io/InputStream;
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c3} :catch_cf

    iput-boolean v15, v10, Lcom/google/android/gms/internal/ads/pD;->J8:Z

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/pD;->tp:Lcom/google/android/gms/internal/ads/BD;

    if-eqz v0, :cond_cc

    invoke-interface {v0, v10, v11}, Lcom/google/android/gms/internal/ads/BD;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/mD;)V

    :cond_cc
    iget-wide v0, v10, Lcom/google/android/gms/internal/ads/pD;->QX:J

    return-wide v0

    :catch_cf
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/pD;->DW()V

    new-instance v1, Lcom/google/android/gms/internal/ads/qD;

    invoke-direct {v1, v0, v11, v15}, Lcom/google/android/gms/internal/ads/qD;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/mD;I)V

    throw v1

    :cond_d9
    :goto_d9
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/pD;->we:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/pD;->DW()V

    new-instance v2, Lcom/google/android/gms/internal/ads/rD;

    invoke-direct {v2, v0, v1, v11}, Lcom/google/android/gms/internal/ads/rD;-><init>(ILjava/util/Map;Lcom/google/android/gms/internal/ads/mD;)V

    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_f4

    new-instance v0, Lcom/google/android/gms/internal/ads/kD;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/kD;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_f4
    throw v2

    :catch_f5
    move-exception v0

    move-object v1, v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/pD;->DW()V

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_10f

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_114

    :cond_10f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_114
    new-instance v2, Lcom/google/android/gms/internal/ads/qD;

    invoke-direct {v2, v0, v1, v11, v15}, Lcom/google/android/gms/internal/ads/qD;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/mD;I)V

    throw v2

    :cond_11a
    :goto_11a
    const/4 v3, 0x0

    :try_start_11b
    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v2, :cond_167

    new-instance v4, Ljava/net/URL;

    move-object/from16 v1, v19

    invoke-direct {v4, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15d

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15d

    new-instance v0, Ljava/net/ProtocolException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_14b} :catch_18c

    const-string v3, "Unsupported protocol redirect: "

    if-eqz v2, :cond_154

    :try_start_14f
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_159

    :cond_154
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_159
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15d
    const/16 v16, 0x0

    move/from16 v1, v18

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    goto/16 :goto_3a

    :cond_167
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Null location redirect"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16f
    move/from16 v18, v5

    new-instance v0, Ljava/net/NoRouteToHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Too many redirects: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_18c} :catch_18c

    :catch_18c
    move-exception v0

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1a2

    invoke-virtual {v12, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a7

    :cond_1a2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1a7
    new-instance v2, Lcom/google/android/gms/internal/ads/qD;

    invoke-direct {v2, v1, v0, v11, v15}, Lcom/google/android/gms/internal/ads/qD;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/mD;I)V

    goto :goto_1ae

    :goto_1ad
    throw v2

    :goto_1ae
    goto :goto_1ad
.end method

.method public final j6()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pD;->we:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final read([BII)I
    .registers 12

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/pD;->XL:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/pD;->Ws:J

    const/4 v4, 0x0

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_56

    sget-object v0, Lcom/google/android/gms/internal/ads/pD;->DW:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_19

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :cond_19
    :goto_19
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/pD;->XL:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/pD;->Ws:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_51

    sub-long/2addr v6, v1

    array-length v1, v0

    int-to-long v1, v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pD;->J0:Ljava/io/InputStream;

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_4b

    if-eq v1, v5, :cond_45

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/pD;->XL:J

    int-to-long v6, v1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/pD;->XL:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pD;->tp:Lcom/google/android/gms/internal/ads/BD;

    if-eqz v2, :cond_19

    invoke-interface {v2, p0, v1}, Lcom/google/android/gms/internal/ads/BD;->j6(Ljava/lang/Object;I)V

    goto :goto_19

    :cond_45
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_4b
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :cond_51
    sget-object v1, Lcom/google/android/gms/internal/ads/pD;->DW:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_56
    if-nez p3, :cond_59

    return v4

    :cond_59
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/pD;->QX:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_71

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/pD;->aM:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_6b

    return v5

    :cond_6b
    int-to-long v6, p3

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pD;->J0:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_86

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/pD;->QX:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_80

    return v5

    :cond_80
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_86
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/pD;->aM:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/pD;->aM:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/pD;->tp:Lcom/google/android/gms/internal/ads/BD;

    if-eqz p2, :cond_93

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/BD;->j6(Ljava/lang/Object;I)V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_93} :catch_94

    :cond_93
    return p1

    :catch_94
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/qD;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/pD;->EQ:Lcom/google/android/gms/internal/ads/mD;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/qD;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/mD;I)V

    goto :goto_9f

    :goto_9e
    throw p2

    :goto_9f
    goto :goto_9e
.end method
