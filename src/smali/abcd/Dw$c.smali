.class public final Labcd/Dw$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private DW:J

.field private FH:Ljava/lang/String;

.field private Hw:Labcd/Dw$e;

.field private j6:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/apache/http/HttpResponse;)V
    .registers 8

    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/Dw$c;->j6:Ljava/lang/String;

    iput-wide v4, p0, Labcd/Dw$c;->DW:J

    iput-object v0, p0, Labcd/Dw$c;->FH:Ljava/lang/String;

    iput-object v0, p0, Labcd/Dw$c;->Hw:Labcd/Dw$e;

    invoke-static {p1}, Labcd/Dw$c;->j6(Lorg/apache/http/HttpResponse;)Labcd/Dw$e;

    move-result-object v0

    iput-object v0, p0, Labcd/Dw$c;->Hw:Labcd/Dw$e;

    iget-object v0, p0, Labcd/Dw$c;->Hw:Labcd/Dw$e;

    if-eqz v0, :cond_3

    invoke-static {p1, v0}, Labcd/Dw$c;->j6(Lorg/apache/http/HttpResponse;Labcd/Dw$e;)J

    move-result-wide v0

    iput-wide v0, p0, Labcd/Dw$c;->DW:J

    iget-wide v0, p0, Labcd/Dw$c;->DW:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/Dw$c;->j6:Ljava/lang/String;

    :cond_0
    array-length v1, v0

    if-le v1, v2, :cond_1

    aget-object v0, v0, v2

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-le v1, v2, :cond_1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Dw$c;->FH:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    new-instance v0, Labcd/Lw;

    const-string v1, "Error determining file size."

    invoke-direct {v0, v1}, Labcd/Lw;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Labcd/Lw;

    const-string v1, "Error parsing metadata."

    invoke-direct {v0, v1}, Labcd/Lw;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lorg/apache/http/HttpResponse;Labcd/Cw;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/Dw$c;-><init>(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method private static j6(Lorg/apache/http/HttpResponse;Labcd/Dw$e;)J
    .registers 6

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    if-eqz p1, :cond_1

    iget-wide v0, p1, Labcd/Dw$e;->DW:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static j6(Lorg/apache/http/HttpResponse;)Labcd/Dw$e;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "X-Dropbox-Metadata"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hL;->DW(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Labcd/Dw$e;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Labcd/Dw$e;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    goto :goto_0
.end method
