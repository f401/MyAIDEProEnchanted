.class public Labcd/Hz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Hz$b;,
        Labcd/Hz$c;,
        Labcd/Hz$e;
    }
.end annotation


# static fields
.field private static DW:Labcd/Hz$b;

.field private static final j6:[Ljava/lang/String;


# instance fields
.field private EQ:Ljava/lang/String;

.field private FH:Ljava/net/HttpURLConnection;

.field public final Hw:Ljava/net/URL;

.field private VH:Z

.field private Zo:Labcd/Hz$e;

.field private gn:Z

.field private tp:I

.field private u7:Z

.field private final v5:Ljava/lang/String;

.field private we:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Labcd/Hz;->j6:[Ljava/lang/String;

    sget-object v0, Labcd/Hz$b;->j6:Labcd/Hz$b;

    sput-object v0, Labcd/Hz;->DW:Labcd/Hz$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Hz;->FH:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Hz;->gn:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Hz;->u7:Z

    const/16 v0, 0x2000

    iput v0, p0, Labcd/Hz;->tp:I

    :try_start_10
    new-instance v0, Ljava/net/URL;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Labcd/Hz;->Hw:Ljava/net/URL;
    :try_end_1b
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_1b} :catch_1e

    iput-object p2, p0, Labcd/Hz;->v5:Ljava/lang/String;

    return-void

    :catch_1e
    move-exception p1

    new-instance p2, Labcd/Hz$c;

    invoke-direct {p2, p1}, Labcd/Hz$c;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public static DW(Ljava/lang/CharSequence;Ljava/util/Map;Z)Labcd/Hz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Labcd/Hz;"
        }
    .end annotation

    invoke-static {p0, p1}, Labcd/Hz;->j6(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_a

    invoke-static {p0}, Labcd/Hz;->DW(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Labcd/Hz;->Hw(Ljava/lang/CharSequence;)Labcd/Hz;

    move-result-object p0

    return-object p0
.end method

.method public static DW(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 8

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_91

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2c
    move-object v3, p0

    :try_start_2d
    new-instance p0, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_7f

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "+"

    const-string v2, "%2B"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    const-string v2, "%23"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_7f
    .catch Ljava/net/URISyntaxException; {:try_start_2d .. :try_end_7f} :catch_80

    :cond_7f
    return-object p0

    :catch_80
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Parsing URI failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance p0, Labcd/Hz$c;

    invoke-direct {p0, v0}, Labcd/Hz$c;-><init>(Ljava/io/IOException;)V

    throw p0

    :catch_91
    move-exception p0

    new-instance v0, Labcd/Hz$c;

    invoke-direct {v0, p0}, Labcd/Hz$c;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method private static DW(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ne v0, p0, :cond_13

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    return-object p1
.end method

.method public static FH(Ljava/lang/CharSequence;)Labcd/Hz;
    .registers 3

    new-instance v0, Labcd/Hz;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Labcd/Hz;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static Hw(Ljava/lang/CharSequence;)Labcd/Hz;
    .registers 3

    new-instance v0, Labcd/Hz;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Labcd/Hz;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method private QX()Ljava/net/HttpURLConnection;
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/Hz;->EQ:Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Labcd/Hz;->DW:Labcd/Hz$b;

    iget-object v1, p0, Labcd/Hz;->Hw:Ljava/net/URL;

    invoke-direct {p0}, Labcd/Hz;->XL()Ljava/net/Proxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Labcd/Hz$b;->j6(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_19

    :cond_11
    sget-object v0, Labcd/Hz;->DW:Labcd/Hz$b;

    iget-object v1, p0, Labcd/Hz;->Hw:Ljava/net/URL;

    invoke-interface {v0, v1}, Labcd/Hz$b;->j6(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    :goto_19
    iget-object v1, p0, Labcd/Hz;->v5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    new-instance v1, Labcd/Hz$c;

    invoke-direct {v1, v0}, Labcd/Hz$c;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private XL()Ljava/net/Proxy;
    .registers 6

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Labcd/Hz;->EQ:Ljava/lang/String;

    iget v4, p0, Labcd/Hz;->we:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method private static Zo(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    return-object p0

    :cond_9
    const-string p0, "UTF-8"

    return-object p0
.end method

.method static synthetic j6(Labcd/Hz;)I
    .registers 1

    iget p0, p0, Labcd/Hz;->tp:I

    return p0
.end method

.method public static j6(Ljava/lang/CharSequence;)Labcd/Hz;
    .registers 3

    new-instance v0, Labcd/Hz;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Labcd/Hz;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static j6(Ljava/lang/CharSequence;Ljava/util/Map;Z)Labcd/Hz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Labcd/Hz;"
        }
    .end annotation

    invoke-static {p0, p1}, Labcd/Hz;->j6(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_a

    invoke-static {p0}, Labcd/Hz;->DW(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Labcd/Hz;->FH(Ljava/lang/CharSequence;)Labcd/Hz;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_69

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_69

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Labcd/Hz;->DW(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3f

    :goto_3c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_65

    const/16 p1, 0x26

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3f

    goto :goto_3c

    :cond_65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_69
    :goto_69
    return-object p0
.end method

.method static synthetic j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Labcd/Hz;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 6

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_13

    :goto_f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_13
    if-ge v1, v2, :cond_1e

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x26

    if-eq p0, v0, :cond_1e

    goto :goto_f

    :cond_1e
    :goto_1e
    return-object p1
.end method

.method public static v5(Ljava/lang/CharSequence;)Labcd/Hz;
    .registers 3

    new-instance v0, Labcd/Hz;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Labcd/Hz;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_17

    const-string p1, "\"; filename=\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const/16 p1, 0x22

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Labcd/Hz;->Zo(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    if-eqz p3, :cond_2c

    const-string p1, "Content-Type"

    invoke-virtual {p0, p1, p3}, Labcd/Hz;->Zo(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    :cond_2c
    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Labcd/Hz;->Zo(Ljava/lang/CharSequence;)Labcd/Hz;

    return-object p0
.end method

.method public DW()Ljava/io/BufferedInputStream;
    .registers 4

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Labcd/Hz;->J8()Ljava/io/InputStream;

    move-result-object v1

    iget v2, p0, Labcd/Hz;->tp:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Labcd/Hz;->FH()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    :try_start_4
    invoke-virtual {p0}, Labcd/Hz;->DW()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Labcd/Hz;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)Labcd/Hz;

    invoke-static {p1}, Labcd/Hz;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    move-exception p1

    new-instance v0, Labcd/Hz$c;

    invoke-direct {v0, p1}, Labcd/Hz$c;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method protected DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    if-eqz p1, :cond_72

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_72

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-eqz v2, :cond_72

    if-ne v2, v0, :cond_1b

    goto :goto_72

    :cond_1b
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    :goto_22
    move v4, v0

    goto :goto_70

    :cond_24
    :goto_24
    if-ge v2, v4, :cond_72

    const/16 v6, 0x3d

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-eq v6, v5, :cond_67

    if-ge v6, v4, :cond_67

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_67

    const/4 p1, 0x2

    if-le v6, p1, :cond_66

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x22

    if-ne p2, p1, :cond_66

    sub-int/2addr v6, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p2, p1, :cond_66

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_66
    return-object v2

    :cond_67
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v5, :cond_24

    goto :goto_22

    :goto_70
    move v0, v4

    goto :goto_24

    :cond_72
    :goto_72
    const/4 p1, 0x0

    return-object p1
.end method

.method public EQ()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/Hz;->tp()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public FH(Ljava/lang/String;)Labcd/Hz;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    return-object p0
.end method

.method public FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;
    .registers 4

    invoke-virtual {p0}, Labcd/Hz;->tp()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method protected FH()Ljava/io/ByteArrayOutputStream;
    .registers 3

    invoke-virtual {p0}, Labcd/Hz;->u7()I

    move-result v0

    if-lez v0, :cond_c

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-object v1

    :cond_c
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-object v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 3

    const-string v0, "Content-Type"

    const-string v1, "charset"

    invoke-virtual {p0, v0, v1}, Labcd/Hz;->Hw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Labcd/Hz;->Zo()Labcd/Hz;

    invoke-virtual {p0}, Labcd/Hz;->tp()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Hw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Hz;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Labcd/Hz;->DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected J0()Labcd/Hz;
    .registers 3

    iget-boolean v0, p0, Labcd/Hz;->VH:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Hz;->VH:Z

    const-string v0, "multipart/form-data; boundary=00content0boundary00"

    invoke-virtual {p0, v0}, Labcd/Hz;->FH(Ljava/lang/String;)Labcd/Hz;

    invoke-virtual {p0}, Labcd/Hz;->we()Labcd/Hz;

    iget-object v0, p0, Labcd/Hz;->Zo:Labcd/Hz$e;

    const-string v1, "--00content0boundary00\r\n"

    goto :goto_18

    :cond_14
    iget-object v0, p0, Labcd/Hz;->Zo:Labcd/Hz$e;

    const-string v1, "\r\n--00content0boundary00\r\n"

    :goto_18
    invoke-virtual {v0, v1}, Labcd/Hz$e;->j6(Ljava/lang/String;)Labcd/Hz$e;

    return-object p0
.end method

.method public J8()Ljava/io/InputStream;
    .registers 4

    invoke-virtual {p0}, Labcd/Hz;->VH()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_18

    :try_start_8
    invoke-virtual {p0}, Labcd/Hz;->tp()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_32

    :catch_11
    move-exception v0

    new-instance v1, Labcd/Hz$c;

    invoke-direct {v1, v0}, Labcd/Hz$c;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_18
    invoke-virtual {p0}, Labcd/Hz;->tp()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_32

    :try_start_22
    invoke-virtual {p0}, Labcd/Hz;->tp()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2b

    goto :goto_32

    :catch_2b
    move-exception v0

    new-instance v1, Labcd/Hz$c;

    invoke-direct {v1, v0}, Labcd/Hz$c;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_32
    :goto_32
    iget-boolean v1, p0, Labcd/Hz;->u7:Z

    if-eqz v1, :cond_50

    const-string v1, "gzip"

    invoke-virtual {p0}, Labcd/Hz;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_50

    :cond_43
    :try_start_43
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_48} :catch_49

    return-object v1

    :catch_49
    move-exception v0

    new-instance v1, Labcd/Hz$c;

    invoke-direct {v1, v0}, Labcd/Hz$c;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_50
    :goto_50
    return-object v0
.end method

.method public VH()I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Labcd/Hz;->v5()Labcd/Hz;

    invoke-virtual {p0}, Labcd/Hz;->tp()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    new-instance v1, Labcd/Hz$c;

    invoke-direct {v1, v0}, Labcd/Hz$c;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public Ws()Ljava/net/URL;
    .registers 2

    invoke-virtual {p0}, Labcd/Hz;->tp()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method protected Zo()Labcd/Hz;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Labcd/Hz;->v5()Labcd/Hz;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    return-object p0

    :catch_4
    move-exception v0

    new-instance v1, Labcd/Hz$c;

    invoke-direct {v1, v0}, Labcd/Hz$c;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public Zo(Ljava/lang/CharSequence;)Labcd/Hz;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Labcd/Hz;->we()Labcd/Hz;

    iget-object v0, p0, Labcd/Hz;->Zo:Labcd/Hz$e;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/Hz$e;->j6(Ljava/lang/String;)Labcd/Hz$e;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p1

    new-instance v0, Labcd/Hz$c;

    invoke-direct {v0, p1}, Labcd/Hz$c;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public Zo(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Hz;->Zo(Ljava/lang/CharSequence;)Labcd/Hz;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Labcd/Hz;->Zo(Ljava/lang/CharSequence;)Labcd/Hz;

    invoke-virtual {p0, p2}, Labcd/Hz;->Zo(Ljava/lang/CharSequence;)Labcd/Hz;

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Labcd/Hz;->Zo(Ljava/lang/CharSequence;)Labcd/Hz;

    return-object p0
.end method

.method public gn()Ljava/lang/String;
    .registers 2

    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Labcd/Hz;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;I)I
    .registers 4

    invoke-virtual {p0}, Labcd/Hz;->Zo()Labcd/Hz;

    invoke-virtual {p0}, Labcd/Hz;->tp()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public j6(I)Labcd/Hz;
    .registers 3

    invoke-virtual {p0}, Labcd/Hz;->tp()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-object p0
.end method

.method protected j6(Ljava/io/InputStream;Ljava/io/OutputStream;)Labcd/Hz;
    .registers 10

    new-instance v6, Labcd/Gz;

    iget-boolean v3, p0, Labcd/Hz;->gn:Z

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Labcd/Gz;-><init>(Labcd/Hz;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v6}, Labcd/Hz$d;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Hz;

    return-object p1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/Number;)Labcd/Hz;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Labcd/Hz;

    return-object p0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;
    .registers 5

    const-string v0, "Content-Type"

    if-eqz p2, :cond_22

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; charset="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    return-object p0

    :cond_22
    invoke-virtual {p0, v0, p1}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    return-object p0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Labcd/Hz;
    .registers 4

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_8

    :cond_7
    const/4 p3, 0x0

    :goto_8
    invoke-virtual {p0, p1, p2, p3}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    return-object p0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    return-object p0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Labcd/Hz;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_1b
    .catchall {:try_start_1 .. :try_end_b} :catchall_19

    :try_start_b
    invoke-virtual {p0, p1, p2, p3, v1}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Labcd/Hz;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_16
    .catchall {:try_start_b .. :try_end_e} :catchall_14

    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception p1

    :goto_13
    return-object p0

    :catchall_14
    move-exception p1

    goto :goto_23

    :catch_16
    move-exception p1

    move-object v0, v1

    goto :goto_1c

    :catchall_19
    move-exception p1

    goto :goto_22

    :catch_1b
    move-exception p1

    :goto_1c
    :try_start_1c
    new-instance p2, Labcd/Hz$c;

    invoke-direct {p2, p1}, Labcd/Hz$c;-><init>(Ljava/io/IOException;)V

    throw p2
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_19

    :goto_22
    move-object v1, v0

    :goto_23
    if-eqz v1, :cond_2a

    :try_start_25
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2a

    :catch_29
    move-exception p2

    :cond_2a
    :goto_2a
    throw p1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Labcd/Hz;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Labcd/Hz;->J0()Labcd/Hz;

    invoke-virtual {p0, p1, p2, p3}, Labcd/Hz;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    iget-object p1, p0, Labcd/Hz;->Zo:Labcd/Hz$e;

    invoke-virtual {p0, p4, p1}, Labcd/Hz;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)Labcd/Hz;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p1

    new-instance p2, Labcd/Hz$c;

    invoke-direct {p2, p1}, Labcd/Hz$c;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Labcd/Hz;->J0()Labcd/Hz;

    invoke-virtual {p0, p1, p2, p3}, Labcd/Hz;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    iget-object p1, p0, Labcd/Hz;->Zo:Labcd/Hz$e;

    invoke-virtual {p1, p4}, Labcd/Hz$e;->j6(Ljava/lang/String;)Labcd/Hz$e;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p1

    new-instance p2, Labcd/Hz$c;

    invoke-direct {p2, p1}, Labcd/Hz$c;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public j6(Ljava/util/Map$Entry;)Labcd/Hz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Labcd/Hz;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    return-object p0
.end method

.method public j6(Z)Labcd/Hz;
    .registers 3

    invoke-virtual {p0}, Labcd/Hz;->tp()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-object p0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/Hz;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Hz;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Hz;->EQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Hz;->Ws()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()Ljava/net/HttpURLConnection;
    .registers 2

    iget-object v0, p0, Labcd/Hz;->FH:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_a

    invoke-direct {p0}, Labcd/Hz;->QX()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Labcd/Hz;->FH:Ljava/net/HttpURLConnection;

    :cond_a
    iget-object v0, p0, Labcd/Hz;->FH:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public u7()I
    .registers 2

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Labcd/Hz;->v5(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public v5(Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Labcd/Hz;->j6(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected v5()Labcd/Hz;
    .registers 3

    iget-object v0, p0, Labcd/Hz;->Zo:Labcd/Hz$e;

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    iget-boolean v1, p0, Labcd/Hz;->VH:Z

    if-eqz v1, :cond_e

    const-string v1, "\r\n--00content0boundary00--\r\n"

    invoke-virtual {v0, v1}, Labcd/Hz$e;->j6(Ljava/lang/String;)Labcd/Hz$e;

    :cond_e
    iget-boolean v0, p0, Labcd/Hz;->gn:Z

    if-eqz v0, :cond_1a

    :try_start_12
    iget-object v0, p0, Labcd/Hz;->Zo:Labcd/Hz$e;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_1f

    :catch_18
    move-exception v0

    goto :goto_1f

    :cond_1a
    iget-object v0, p0, Labcd/Hz;->Zo:Labcd/Hz$e;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    :goto_1f
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Hz;->Zo:Labcd/Hz$e;

    return-object p0
.end method

.method public v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    return-object p0
.end method

.method protected we()Labcd/Hz;
    .registers 5

    iget-object v0, p0, Labcd/Hz;->Zo:Labcd/Hz$e;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {p0}, Labcd/Hz;->tp()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p0}, Labcd/Hz;->tp()Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset"

    invoke-virtual {p0, v0, v1}, Labcd/Hz;->DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Labcd/Hz$e;

    invoke-virtual {p0}, Labcd/Hz;->tp()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget v3, p0, Labcd/Hz;->tp:I

    invoke-direct {v1, v2, v0, v3}, Labcd/Hz$e;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    iput-object v1, p0, Labcd/Hz;->Zo:Labcd/Hz$e;

    return-object p0
.end method
