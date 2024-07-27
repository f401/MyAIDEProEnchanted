.class Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1;
.super Ljava/util/Properties;
.source "EchoProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;->saveProperties(Ljava/util/Hashtable;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x46a6a3b8a9ee4ef6L


# instance fields
.field final this$0:Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;

.field final val$keyList:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;Ljava/util/List;)V
    .registers 3

    .line 349
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1;->this$0:Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1;->val$keyList:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 362
    invoke-super {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 363
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isKaffe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1$$ExternalSyntheticLambda0;

    sget-object v2, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1$$ExternalSyntheticLambda1;

    .line 367
    invoke-interface {v0, v2}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v2

    .line 365
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Checksum$$ExternalSyntheticStaticInterfaceCall1;->m(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 368
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 371
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1;->val$keyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1$$ExternalSyntheticLambda1;

    .line 355
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Checksum$$ExternalSyntheticStaticInterfaceCall1;->m(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 356
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda5;->INSTANCE:Lorg/apache/tools/ant/AntClassLoader$$ExternalSyntheticLambda5;

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    .line 354
    return-object v0
.end method
