.class public Labcd/Dw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Dw$a;,
        Labcd/Dw$b;,
        Labcd/Dw$c;,
        Labcd/Dw$d;,
        Labcd/Dw$e;,
        Labcd/Dw$f;,
        Labcd/Dw$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SESS_T::",
        "Labcd/Zw;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final j6:Ljava/lang/String;


# instance fields
.field protected final DW:Labcd/Zw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSESS_T;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Labcd/Hw;->j6()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/Dw;->j6:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Labcd/Zw;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSESS_T;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Labcd/Dw;->DW:Labcd/Zw;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static DW(Ljava/util/Map;Ljava/lang/String;)J
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1e

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_11

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    goto :goto_20

    :cond_11
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1e

    check-cast p0, Ljava/lang/String;

    const/16 p1, 0x10

    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0

    goto :goto_20

    :cond_1e
    const-wide/16 p0, 0x0

    :goto_20
    return-wide p0
.end method

.method private j6(Ljava/lang/String;Ljava/io/InputStream;JZLjava/lang/String;Labcd/Fw;)Labcd/Dw$g;
    .registers 15

    if-eqz p1, :cond_9e

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    invoke-virtual {p0}, Labcd/Dw;->DW()V

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/files_put/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v2}, Labcd/Zw;->FH()Labcd/Zw$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p6, :cond_41

    move-object p6, v0

    :cond_41
    iget-object v0, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v0}, Labcd/Zw;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    iget-object v2, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v2}, Labcd/Zw;->Zo()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "overwrite"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p5

    const/4 v4, 0x1

    aput-object p5, v3, v4

    const/4 p5, 0x2

    const-string v6, "parent_rev"

    aput-object v6, v3, p5

    const/4 p5, 0x3

    aput-object p6, v3, p5

    const/4 p5, 0x4

    const-string p6, "locale"

    aput-object p6, v3, p5

    const/4 p5, 0x5

    aput-object v0, v3, p5

    invoke-static {v2, v4, p1, v3}, Labcd/Gw;->j6(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {p1, v1}, Labcd/Zw;->j6(Lorg/apache/http/HttpRequest;)V

    new-instance p1, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {p1, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    const-string p2, "application/octet-stream"

    invoke-virtual {p1, p2}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    if-eqz p7, :cond_93

    new-instance p2, Labcd/Fw$a;

    invoke-direct {p2, p1, p7}, Labcd/Fw$a;-><init>(Lorg/apache/http/HttpEntity;Labcd/Fw;)V

    move-object p1, p2

    :cond_93
    invoke-virtual {v1, p1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance p1, Labcd/Dw$b;

    iget-object p2, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-direct {p1, v1, p2}, Labcd/Dw$b;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Labcd/Zw;)V

    return-object p1

    :cond_9e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "path is null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static j6(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_11

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_11

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public DW(Ljava/lang/String;Ljava/io/InputStream;JLabcd/Fw;)Labcd/Dw$g;
    .registers 14

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Labcd/Dw;->j6(Ljava/lang/String;Ljava/io/InputStream;JZLjava/lang/String;Labcd/Fw;)Labcd/Dw$g;

    move-result-object p1

    return-object p1
.end method

.method public DW(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Labcd/Fw;)Labcd/Dw$g;
    .registers 15

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Labcd/Dw;->j6(Ljava/lang/String;Ljava/io/InputStream;JZLjava/lang/String;Labcd/Fw;)Labcd/Dw$g;

    move-result-object p1

    return-object p1
.end method

.method protected DW()V
    .registers 2

    iget-object v0, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v0}, Labcd/Zw;->DW()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Labcd/Qw;

    invoke-direct {v0}, Labcd/Qw;-><init>()V

    throw v0
.end method

.method public DW(Ljava/lang/String;)V
    .registers 12

    invoke-virtual {p0}, Labcd/Dw;->DW()V

    iget-object v0, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v0}, Labcd/Zw;->FH()Labcd/Zw$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zw$a;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v1}, Labcd/Zw;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Labcd/Gw$a;->DW:Labcd/Gw$a;

    iget-object v3, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v3}, Labcd/Zw;->Hw()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Labcd/Dw;->DW:Labcd/Zw;

    const-string v4, "/fileops/delete"

    const/4 v5, 0x1

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "root"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    aput-object v0, v6, v8

    const/4 v0, 0x2

    const-string v8, "path"

    aput-object v8, v6, v0

    const/4 v0, 0x3

    aput-object p1, v6, v0

    const/4 p1, 0x4

    const-string v0, "locale"

    aput-object v0, v6, p1

    const/4 p1, 0x5

    aput-object v1, v6, p1

    invoke-static/range {v2 .. v7}, Labcd/Gw;->j6(Labcd/Gw$a;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Labcd/Zw;)Ljava/lang/Object;

    return-void
.end method

.method public FH()Labcd/Zw;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSESS_T;"
        }
    .end annotation

    iget-object v0, p0, Labcd/Dw;->DW:Labcd/Zw;

    return-object v0
.end method

.method public j6()Labcd/Dw$a;
    .registers 11

    invoke-virtual {p0}, Labcd/Dw;->DW()V

    sget-object v0, Labcd/Gw$a;->j6:Labcd/Gw$a;

    iget-object v1, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v1}, Labcd/Zw;->Hw()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v2}, Labcd/Zw;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Labcd/Dw;->DW:Labcd/Zw;

    new-instance v6, Labcd/Dw$a;

    const-string v3, "/account/info"

    const/4 v4, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "locale"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    move-object v2, v3

    move v3, v4

    move-object v4, v7

    invoke-static/range {v0 .. v5}, Labcd/Gw;->j6(Labcd/Gw$a;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Labcd/Zw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v6, v0}, Labcd/Dw$a;-><init>(Ljava/util/Map;)V

    return-object v6
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)Labcd/Dw$d;
    .registers 9

    invoke-virtual {p0}, Labcd/Dw;->DW()V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v1}, Labcd/Zw;->FH()Labcd/Zw$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v0}, Labcd/Zw;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v2}, Labcd/Zw;->Zo()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "rev"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 p2, 0x2

    const-string v5, "locale"

    aput-object v5, v3, p2

    const/4 p2, 0x3

    aput-object v0, v3, p2

    invoke-static {v2, v4, p1, v3}, Labcd/Gw;->j6(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {p1, v1}, Labcd/Zw;->j6(Lorg/apache/http/HttpRequest;)V

    new-instance p1, Labcd/Dw$d;

    iget-object p2, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-static {p2, v1}, Labcd/Gw;->j6(Labcd/Zw;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Labcd/Dw$d;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V

    return-object p1
.end method

.method public j6(Ljava/lang/String;)Labcd/Dw$e;
    .registers 13

    invoke-virtual {p0}, Labcd/Dw;->DW()V

    iget-object v0, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v0}, Labcd/Zw;->FH()Labcd/Zw$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zw$a;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v1}, Labcd/Zw;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Labcd/Gw$a;->DW:Labcd/Gw$a;

    iget-object v3, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v3}, Labcd/Zw;->Hw()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Labcd/Dw;->DW:Labcd/Zw;

    new-instance v8, Labcd/Dw$e;

    const-string v4, "/fileops/create_folder"

    const/4 v5, 0x1

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "root"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    aput-object v0, v6, v9

    const/4 v0, 0x2

    const-string v9, "path"

    aput-object v9, v6, v0

    const/4 v0, 0x3

    aput-object p1, v6, v0

    const/4 p1, 0x4

    const-string v0, "locale"

    aput-object v0, v6, p1

    const/4 p1, 0x5

    aput-object v1, v6, p1

    invoke-static/range {v2 .. v7}, Labcd/Gw;->j6(Labcd/Gw$a;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Labcd/Zw;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {v8, p1}, Labcd/Dw$e;-><init>(Ljava/util/Map;)V

    return-object v8
.end method

.method public j6(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Labcd/Dw$e;
    .registers 15

    invoke-virtual {p0}, Labcd/Dw;->DW()V

    if-gtz p2, :cond_7

    const/16 p2, 0x61a8

    :cond_7
    iget-object v0, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v0}, Labcd/Zw;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/metadata/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v2}, Labcd/Zw;->FH()Labcd/Zw$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Labcd/Gw$a;->j6:Labcd/Gw$a;

    iget-object p1, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {p1}, Labcd/Zw;->Hw()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Labcd/Dw;->DW:Labcd/Zw;

    new-instance p1, Labcd/Dw$e;

    const/4 v6, 0x1

    const/16 v1, 0xa

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "file_limit"

    aput-object v2, v7, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v7, v1

    const/4 p2, 0x2

    const-string v1, "hash"

    aput-object v1, v7, p2

    const/4 p2, 0x3

    aput-object p3, v7, p2

    const/4 p2, 0x4

    const-string p3, "list"

    aput-object p3, v7, p2

    const/4 p2, 0x5

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v7, p2

    const/4 p2, 0x6

    const-string p3, "rev"

    aput-object p3, v7, p2

    const/4 p2, 0x7

    aput-object p5, v7, p2

    const/16 p2, 0x8

    const-string p3, "locale"

    aput-object p3, v7, p2

    const/16 p2, 0x9

    aput-object v0, v7, p2

    invoke-static/range {v3 .. v8}, Labcd/Gw;->j6(Labcd/Gw$a;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Labcd/Zw;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-direct {p1, p2}, Labcd/Dw$e;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public j6(Ljava/lang/String;Ljava/io/InputStream;JLabcd/Fw;)Labcd/Dw$e;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Labcd/Dw;->DW(Ljava/lang/String;Ljava/io/InputStream;JLabcd/Fw;)Labcd/Dw$g;

    move-result-object p1

    invoke-interface {p1}, Labcd/Dw$g;->j6()Labcd/Dw$e;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Labcd/Fw;)Labcd/Dw$e;
    .registers 7

    invoke-virtual/range {p0 .. p6}, Labcd/Dw;->DW(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Labcd/Fw;)Labcd/Dw$g;

    move-result-object p1

    invoke-interface {p1}, Labcd/Dw$g;->j6()Labcd/Dw$e;

    move-result-object p1

    return-object p1
.end method
