.class public Lorg/apache/tools/ant/types/spi/Service;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "Service.java"


# instance fields
.field private providerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/spi/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/spi/Service;->providerList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addConfiguredProvider(Lorg/apache/tools/ant/types/spi/Provider;)V
    .registers 3

    .line 56
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/spi/Provider;->check()V

    .line 57
    iget-object v0, p0, Lorg/apache/tools/ant/types/spi/Service;->providerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public check()V
    .registers 4

    .line 95
    iget-object v0, p0, Lorg/apache/tools/ant/types/spi/Service;->type:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/types/spi/Service;->providerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 105
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "provider attribute or nested provider element must be set!"

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/spi/Service;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 101
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Invalid empty type classname"

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/spi/Service;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 96
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "type attribute must be set for service element"

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/spi/Service;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public getAsStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/types/spi/Service;->providerList:Ljava/util/List;

    .line 86
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/types/spi/Service$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/types/spi/Service$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "\n"

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 85
    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lorg/apache/tools/ant/types/spi/Service;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)V
    .registers 4

    .line 46
    new-instance v0, Lorg/apache/tools/ant/types/spi/Provider;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/spi/Provider;-><init>()V

    .line 47
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/spi/Provider;->setClassName(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lorg/apache/tools/ant/types/spi/Service;->providerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lorg/apache/tools/ant/types/spi/Service;->type:Ljava/lang/String;

    .line 75
    return-void
.end method
