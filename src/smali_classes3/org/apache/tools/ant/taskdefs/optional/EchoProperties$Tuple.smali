.class final Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;
.super Ljava/lang/Object;
.source "EchoProperties.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Tuple"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;",
        ">;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->key:Ljava/lang/String;

    .line 392
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->value:Ljava/lang/String;

    .line 393
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1;)V
    .registers 4

    .line 386
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;)Ljava/lang/String;
    .registers 2

    .line 386
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;)Ljava/lang/String;
    .registers 2

    .line 386
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->value:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 386
    check-cast p1, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->compareTo(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;)I
    .registers 5

    .line 405
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple$$ExternalSyntheticStaticInterfaceCall0;->m()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->key:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->key:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 410
    if-ne p1, p0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return v0

    .line 413
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 414
    goto :goto_0

    .line 416
    :cond_3
    check-cast p1, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;

    .line 417
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->key:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/tools/ant/UnknownElement$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->value:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->value:Ljava/lang/String;

    .line 418
    invoke-static {v2, v3}, Lorg/apache/tools/ant/UnknownElement$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 4

    .line 423
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->key:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
