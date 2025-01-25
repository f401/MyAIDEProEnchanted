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
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Dw$c;->j6:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Labcd/Dw$c;->DW:J

    iput-object v0, p0, Labcd/Dw$c;->FH:Ljava/lang/String;

    iput-object v0, p0, Labcd/Dw$c;->Hw:Labcd/Dw$e;

    invoke-static {p1}, Labcd/Dw$c;->j6(Lorg/apache/http/HttpResponse;)Labcd/Dw$e;

    move-result-object v0

    iput-object v0, p0, Labcd/Dw$c;->Hw:Labcd/Dw$e;

    if-eqz v0, :cond_60

    invoke-static {p1, v0}, Labcd/Dw$c;->j6(Lorg/apache/http/HttpResponse;Labcd/Dw$e;)J

    move-result-wide v3

    iput-wide v3, p0, Labcd/Dw$c;->DW:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_58

    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    if-eqz p1, :cond_57

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_57

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_40

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Dw$c;->j6:Ljava/lang/String;

    :cond_40
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_57

    aget-object p1, p1, v1

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-le v0, v1, :cond_57

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/Dw$c;->FH:Ljava/lang/String;

    :cond_57
    return-void

    :cond_58
    new-instance p1, Labcd/Lw;

    const-string v0, "Error determining file size."

    invoke-direct {p1, v0}, Labcd/Lw;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    new-instance p1, Labcd/Lw;

    const-string v0, "Error parsing metadata."

    invoke-direct {p1, v0}, Labcd/Lw;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lorg/apache/http/HttpResponse;Labcd/Cw;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/Dw$c;-><init>(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method private static j6(Lorg/apache/http/HttpResponse;Labcd/Dw$e;)J
    .registers 6

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_f

    return-wide v0

    :cond_f
    if-eqz p1, :cond_14

    iget-wide p0, p1, Labcd/Dw$e;->DW:J

    return-wide p0

    :cond_14
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private static j6(Lorg/apache/http/HttpResponse;)Labcd/Dw$e;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "X-Dropbox-Metadata"

    invoke-interface {p0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    if-nez p0, :cond_d

    return-object v0

    :cond_d
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Labcd/hL;->DW(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_18

    return-object v0

    :cond_18
    new-instance v0, Labcd/Dw$e;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Labcd/Dw$e;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
