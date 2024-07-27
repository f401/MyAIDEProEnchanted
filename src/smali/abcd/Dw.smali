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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSESS_T;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Labcd/Dw;->DW:Labcd/Zw;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static DW(Ljava/util/Map;Ljava/lang/String;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private j6(Ljava/lang/String;Ljava/io/InputStream;JZLjava/lang/String;Labcd/Fw;)Labcd/Dw$g;
    .registers 19

    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Labcd/Dw;->DW()V

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
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

    move-result-object v1

    if-nez p6, :cond_1

    const-string p6, ""

    :cond_1
    iget-object v2, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v2}, Labcd/Zw;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/http/client/methods/HttpPut;

    iget-object v4, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v4}, Labcd/Zw;->Zo()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "overwrite"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "parent_rev"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p6, v6, v7

    const/4 v7, 0x4

    const-string v8, "locale"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object v2, v6, v7

    invoke-static {v4, v5, v1, v6}, Labcd/Gw;->j6(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v1, v3}, Labcd/Zw;->j6(Lorg/apache/http/HttpRequest;)V

    new-instance v2, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v2, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    const-string v1, "application/octet-stream"

    invoke-virtual {v2, v1}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    if-eqz p7, :cond_3

    new-instance v1, Labcd/Fw$a;

    move-object/from16 v0, p7

    invoke-direct {v1, v2, v0}, Labcd/Fw$a;-><init>(Lorg/apache/http/HttpEntity;Labcd/Fw;)V

    :goto_0
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v1, Labcd/Dw$b;

    iget-object v2, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-direct {v1, v3, v2}, Labcd/Dw$b;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Labcd/Zw;)V

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "path is null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method protected static j6(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DW(Ljava/lang/String;Ljava/io/InputStream;JLabcd/Fw;)Labcd/Dw$g;
    .registers 15

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Labcd/Dw;->j6(Ljava/lang/String;Ljava/io/InputStream;JZLjava/lang/String;Labcd/Fw;)Labcd/Dw$g;

    move-result-object v0

    return-object v0
.end method

.method public DW(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Labcd/Fw;)Labcd/Dw$g;
    .registers 16

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Labcd/Dw;->j6(Ljava/lang/String;Ljava/io/InputStream;JZLjava/lang/String;Labcd/Fw;)Labcd/Dw$g;

    move-result-object v0

    return-object v0
.end method

.method protected DW()V
    .registers 2

    iget-object v0, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v0}, Labcd/Zw;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Labcd/Qw;

    invoke-direct {v0}, Labcd/Qw;-><init>()V

    throw v0
.end method

.method public DW(Ljava/lang/String;)V
    .registers 12

    const/4 v3, 0x1

    invoke-virtual {p0}, Labcd/Dw;->DW()V

    iget-object v0, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v0}, Labcd/Zw;->FH()Labcd/Zw$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zw$a;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v0}, Labcd/Zw;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Labcd/Gw$a;->DW:Labcd/Gw$a;

    iget-object v1, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v1}, Labcd/Zw;->Hw()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Labcd/Dw;->DW:Labcd/Zw;

    const-string v2, "/fileops/delete"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "root"

    aput-object v9, v4, v8

    aput-object v6, v4, v3

    const/4 v6, 0x2

    const-string v8, "path"

    aput-object v8, v4, v6

    const/4 v6, 0x3

    aput-object p1, v4, v6

    const/4 v6, 0x4

    const-string v8, "locale"

    aput-object v8, v4, v6

    const/4 v6, 0x5

    aput-object v7, v4, v6

    invoke-static/range {v0 .. v5}, Labcd/Gw;->j6(Labcd/Gw$a;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Labcd/Zw;)Ljava/lang/Object;

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

    const/4 v3, 0x1

    invoke-virtual {p0}, Labcd/Dw;->DW()V

    sget-object v0, Labcd/Gw$a;->j6:Labcd/Gw$a;

    iget-object v1, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v1}, Labcd/Zw;->Hw()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v2}, Labcd/Zw;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Labcd/Dw;->DW:Labcd/Zw;

    new-instance v7, Labcd/Dw$a;

    const-string v2, "/account/info"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "locale"

    aput-object v9, v4, v8

    aput-object v6, v4, v3

    invoke-static/range {v0 .. v5}, Labcd/Gw;->j6(Labcd/Gw$a;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Labcd/Zw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v7, v0}, Labcd/Dw$a;-><init>(Ljava/util/Map;)V

    return-object v7
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)Labcd/Dw$d;
    .registers 11

    const/4 v7, 0x1

    invoke-virtual {p0}, Labcd/Dw;->DW()V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
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

    move-result-object v0

    iget-object v1, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v1}, Labcd/Zw;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v3}, Labcd/Zw;->Zo()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "rev"

    aput-object v6, v4, v5

    aput-object p2, v4, v7

    const/4 v5, 0x2

    const-string v6, "locale"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-static {v3, v7, v0, v4}, Labcd/Gw;->j6(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v0, v2}, Labcd/Zw;->j6(Lorg/apache/http/HttpRequest;)V

    new-instance v0, Labcd/Dw$d;

    iget-object v1, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-static {v1, v2}, Labcd/Gw;->j6(Labcd/Zw;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Labcd/Dw$d;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V

    return-object v0
.end method

.method public j6(Ljava/lang/String;)Labcd/Dw$e;
    .registers 13

    const/4 v3, 0x1

    invoke-virtual {p0}, Labcd/Dw;->DW()V

    iget-object v0, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v0}, Labcd/Zw;->FH()Labcd/Zw$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zw$a;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v0}, Labcd/Zw;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Labcd/Gw$a;->DW:Labcd/Gw$a;

    iget-object v1, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v1}, Labcd/Zw;->Hw()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Labcd/Dw;->DW:Labcd/Zw;

    new-instance v8, Labcd/Dw$e;

    const-string v2, "/fileops/create_folder"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "root"

    aput-object v10, v4, v9

    aput-object v6, v4, v3

    const/4 v6, 0x2

    const-string v9, "path"

    aput-object v9, v4, v6

    const/4 v6, 0x3

    aput-object p1, v4, v6

    const/4 v6, 0x4

    const-string v9, "locale"

    aput-object v9, v4, v6

    const/4 v6, 0x5

    aput-object v7, v4, v6

    invoke-static/range {v0 .. v5}, Labcd/Gw;->j6(Labcd/Gw$a;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Labcd/Zw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v8, v0}, Labcd/Dw$e;-><init>(Ljava/util/Map;)V

    return-object v8
.end method

.method public j6(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Labcd/Dw$e;
    .registers 16

    const/4 v3, 0x1

    invoke-virtual {p0}, Labcd/Dw;->DW()V

    if-gtz p2, :cond_0

    const/16 p2, 0x61a8

    :cond_0
    iget-object v0, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v0}, Labcd/Zw;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/metadata/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v1}, Labcd/Zw;->FH()Labcd/Zw$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Labcd/Gw$a;->j6:Labcd/Gw$a;

    iget-object v1, p0, Labcd/Dw;->DW:Labcd/Zw;

    invoke-interface {v1}, Labcd/Zw;->Hw()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Labcd/Dw;->DW:Labcd/Zw;

    new-instance v7, Labcd/Dw$e;

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "file_limit"

    aput-object v9, v4, v8

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v3

    const/4 v8, 0x2

    const-string v9, "hash"

    aput-object v9, v4, v8

    const/4 v8, 0x3

    aput-object p3, v4, v8

    const/4 v8, 0x4

    const-string v9, "list"

    aput-object v9, v4, v8

    const/4 v8, 0x5

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x6

    const-string v9, "rev"

    aput-object v9, v4, v8

    const/4 v8, 0x7

    aput-object p5, v4, v8

    const/16 v8, 0x8

    const-string v9, "locale"

    aput-object v9, v4, v8

    const/16 v8, 0x9

    aput-object v6, v4, v8

    invoke-static/range {v0 .. v5}, Labcd/Gw;->j6(Labcd/Gw$a;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Labcd/Zw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v7, v0}, Labcd/Dw$e;-><init>(Ljava/util/Map;)V

    return-object v7
.end method

.method public j6(Ljava/lang/String;Ljava/io/InputStream;JLabcd/Fw;)Labcd/Dw$e;
    .registers 7

    invoke-virtual/range {p0 .. p5}, Labcd/Dw;->DW(Ljava/lang/String;Ljava/io/InputStream;JLabcd/Fw;)Labcd/Dw$g;

    move-result-object v0

    invoke-interface {v0}, Labcd/Dw$g;->j6()Labcd/Dw$e;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Labcd/Fw;)Labcd/Dw$e;
    .registers 8

    invoke-virtual/range {p0 .. p6}, Labcd/Dw;->DW(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Labcd/Fw;)Labcd/Dw$g;

    move-result-object v0

    invoke-interface {v0}, Labcd/Dw$g;->j6()Labcd/Dw$e;

    move-result-object v0

    return-object v0
.end method
