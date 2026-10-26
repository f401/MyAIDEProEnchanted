.class public Lorg/antlr/v4/runtime/atn/ATNSerializer;
.super Ljava/lang/Object;
.source "ATNSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field public atn:Lorg/antlr/v4/runtime/atn/ATN;

.field private tokenNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATN;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATN;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATN;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    .line 41
    iput-object p2, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->tokenNames:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/antlr/v4/runtime/atn/ATNSerializer;Lorg/antlr/v4/runtime/misc/IntegerList;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->serializeInt(Lorg/antlr/v4/runtime/misc/IntegerList;I)V

    return-void
.end method

.method private appendSets(Ljava/lang/StringBuilder;[CIIILorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I
    .locals 9

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, p4, :cond_5

    .line 531
    aget-char v0, p2, p3

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v5

    .line 532
    add-int v0, v4, p5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p3, 0x2

    .line 533
    add-int/lit8 v0, p3, 0x1

    aget-char v0, p2, v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v3, v0

    :goto_1
    if-eqz v3, :cond_0

    .line 535
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->getTokenName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_4

    if-nez v3, :cond_1

    if-lez v0, :cond_2

    .line 540
    :cond_1
    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_2
    invoke-interface {p6, p2, v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->readUnicode([CI)I

    move-result v6

    .line 544
    invoke-interface {p6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->size()I

    move-result v7

    add-int/2addr v2, v7

    .line 545
    invoke-interface {p6, p2, v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->readUnicode([CI)I

    move-result v7

    .line 546
    invoke-interface {p6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->size()I

    move-result v8

    add-int/2addr v2, v8

    .line 547
    invoke-virtual {p0, v6}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->getTokenName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".."

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->getTokenName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v3, v1

    .line 533
    goto :goto_1

    .line 549
    :cond_4
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move p3, v2

    goto :goto_0

    :cond_5
    return p3
.end method

.method public static getDecoded(Lorg/antlr/v4/runtime/atn/ATN;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATN;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 609
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->getSerialized(Lorg/antlr/v4/runtime/atn/ATN;)Lorg/antlr/v4/runtime/misc/IntegerList;

    move-result-object v0

    .line 610
    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/Utils;->toCharArray(Lorg/antlr/v4/runtime/misc/IntegerList;)[C

    move-result-object v0

    .line 611
    new-instance v1, Lorg/antlr/v4/runtime/atn/ATNSerializer;

    invoke-direct {v1, p0, p1}, Lorg/antlr/v4/runtime/atn/ATNSerializer;-><init>(Lorg/antlr/v4/runtime/atn/ATN;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->decode([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSerialized(Lorg/antlr/v4/runtime/atn/ATN;)Lorg/antlr/v4/runtime/misc/IntegerList;
    .locals 1

    .line 601
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;

    invoke-direct {v0, p0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;-><init>(Lorg/antlr/v4/runtime/atn/ATN;)V

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->serialize()Lorg/antlr/v4/runtime/misc/IntegerList;

    move-result-object v0

    return-object v0
.end method

.method public static getSerializedAsChars(Lorg/antlr/v4/runtime/atn/ATN;)[C
    .locals 1

    .line 605
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->getSerialized(Lorg/antlr/v4/runtime/atn/ATN;)Lorg/antlr/v4/runtime/misc/IntegerList;

    move-result-object v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/Utils;->toCharArray(Lorg/antlr/v4/runtime/misc/IntegerList;)[C

    move-result-object v0

    return-object v0
.end method

.method public static getSerializedAsString(Lorg/antlr/v4/runtime/atn/ATN;)Ljava/lang/String;
    .locals 2

    .line 597
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->getSerializedAsChars(Lorg/antlr/v4/runtime/atn/ATN;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private serializeInt(Lorg/antlr/v4/runtime/misc/IntegerList;I)V
    .locals 1

    int-to-char v0, p2

    .line 625
    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    shr-int/lit8 v0, p2, 0x10

    int-to-char v0, v0

    .line 626
    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    return-void
.end method

.method private serializeLong(Lorg/antlr/v4/runtime/misc/IntegerList;J)V
    .locals 2

    long-to-int v0, p2

    .line 620
    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->serializeInt(Lorg/antlr/v4/runtime/misc/IntegerList;I)V

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v0, v0

    .line 621
    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->serializeInt(Lorg/antlr/v4/runtime/misc/IntegerList;I)V

    return-void
.end method

.method private static serializeSets(Lorg/antlr/v4/runtime/misc/IntegerList;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/misc/IntegerList;",
            "Ljava/util/Collection",
            "<",
            "Lorg/antlr/v4/runtime/misc/IntervalSet;",
            ">;",
            "Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 381
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 382
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 384
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 385
    invoke-virtual {v0, v4}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 386
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->getIntervals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/misc/Interval;

    iget v1, v1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-ne v1, v4, :cond_2

    .line 387
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->getIntervals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 393
    :goto_0
    invoke-virtual {p0, v3}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 394
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->getIntervals()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 395
    iget v3, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-ne v3, v4, :cond_3

    .line 396
    iget v3, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-eq v3, v4, :cond_1

    .line 400
    invoke-interface {p2, p0, v5}, Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;->serializeCodePoint(Lorg/antlr/v4/runtime/misc/IntegerList;I)V

    .line 407
    :goto_2
    iget v0, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    invoke-interface {p2, p0, v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;->serializeCodePoint(Lorg/antlr/v4/runtime/misc/IntegerList;I)V

    goto :goto_1

    .line 390
    :cond_2
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->getIntervals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_0

    .line 404
    :cond_3
    iget v3, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    invoke-interface {p2, p0, v3}, Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;->serializeCodePoint(Lorg/antlr/v4/runtime/misc/IntegerList;I)V

    goto :goto_2

    .line 407
    :cond_4
    return-void
.end method

.method private serializeUUID(Lorg/antlr/v4/runtime/misc/IntegerList;Ljava/util/UUID;)V
    .locals 2

    .line 615
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->serializeLong(Lorg/antlr/v4/runtime/misc/IntegerList;J)V

    .line 616
    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->serializeLong(Lorg/antlr/v4/runtime/misc/IntegerList;J)V

    return-void
.end method


# virtual methods
.method public decode([C)Ljava/lang/String;
    .locals 13

    const/16 v9, 0xc

    const/4 v6, 0x2

    const/16 v12, 0xa

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 413
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    move v0, v3

    .line 415
    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    .line 416
    aget-char v1, v2, v0

    add-int/lit8 v1, v1, -0x2

    int-to-char v1, v1

    aput-char v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    aget-char v0, v2, v5

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    .line 422
    sget v4, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_VERSION:I

    if-ne v0, v4, :cond_f

    .line 427
    invoke-static {v2, v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toUUID([CI)Ljava/util/UUID;

    move-result-object v0

    .line 429
    sget-object v4, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 435
    aget-char v0, v2, v12

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    .line 436
    const-string v3, "max type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const/16 v0, 0xb

    aget-char v0, v2, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v10

    move v7, v5

    move v8, v9

    .line 438
    :goto_1
    if-ge v7, v10, :cond_5

    add-int/lit8 v3, v8, 0x1

    .line 439
    aget-char v0, v2, v8

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v11

    if-nez v11, :cond_1

    .line 449
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v8, v3

    goto :goto_1

    .line 439
    :cond_1
    add-int/lit8 v0, v8, 0x2

    .line 441
    aget-char v3, v2, v3

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    const v4, 0xffff

    if-ne v3, v4, :cond_10

    const/4 v3, -0x1

    move v6, v3

    :goto_3
    if-ne v11, v9, :cond_2

    .line 448
    aget-char v0, v2, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v8, 0x3

    move v3, v0

    :goto_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNState;->serializationNames:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/4 v3, 0x4

    if-eq v11, v3, :cond_3

    const/4 v3, 0x5

    if-eq v11, v3, :cond_3

    const/4 v3, 0x3

    if-ne v11, v3, :cond_4

    .line 452
    :cond_3
    aget-char v0, v2, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v8, 0x3

    move v3, v0

    goto :goto_4

    .line 451
    :cond_4
    const-string v4, ""

    move v3, v0

    goto :goto_4

    .line 465
    :cond_5
    aget-char v0, v2, v8

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v4

    add-int/lit8 v3, v8, 0x1

    move v0, v5

    :goto_5
    if-ge v0, v4, :cond_6

    .line 467
    aget-char v6, v2, v3

    invoke-static {v6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 469
    :cond_6
    aget-char v0, v2, v3

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    move v0, v5

    :goto_6
    if-ge v0, v4, :cond_7

    .line 471
    aget-char v6, v2, v3

    invoke-static {v6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 474
    :cond_7
    aget-char v0, v2, v3

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v6

    add-int/lit8 v0, v3, 0x1

    move v4, v5

    :goto_7
    if-ge v4, v6, :cond_9

    add-int/lit8 v3, v0, 0x1

    .line 476
    aget-char v7, v2, v0

    invoke-static {v7}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v7

    .line 477
    iget-object v8, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v8, v8, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v9, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v8, v9, :cond_8

    add-int/lit8 v0, v0, 0x2

    .line 478
    aget-char v3, v2, v3

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    .line 479
    const-string v8, "rule "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    :goto_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_7

    :cond_8
    const-string v0, "rule "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    goto :goto_8

    .line 485
    :cond_9
    aget-char v3, v2, v0

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v4

    add-int/lit8 v3, v0, 0x1

    move v0, v5

    :goto_9
    if-ge v0, v4, :cond_a

    .line 487
    aget-char v6, v2, v3

    invoke-static {v6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v6

    .line 488
    const-string v7, "mode "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 490
    :cond_a
    aget-char v0, v2, v3

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v4

    .line 491
    add-int/lit8 v3, v3, 0x1

    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;->UNICODE_BMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->getUnicodeDeserializer(Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->appendSets(Ljava/lang/StringBuilder;[CIIILorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I

    move-result v0

    .line 492
    aget-char v3, v2, v0

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v10

    .line 493
    add-int/lit8 v9, v0, 0x1

    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;->UNICODE_SMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->getUnicodeDeserializer(Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;

    move-result-object v12

    move-object v6, p0

    move-object v7, v1

    move-object v8, v2

    move v11, v4

    invoke-direct/range {v6 .. v12}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->appendSets(Ljava/lang/StringBuilder;[CIIILorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I

    move-result v0

    .line 494
    aget-char v3, v2, v0

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v6

    add-int/lit8 v0, v0, 0x1

    move v3, v5

    move v4, v0

    :goto_a
    if-ge v3, v6, :cond_b

    .line 496
    aget-char v0, v2, v4

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    .line 497
    add-int/lit8 v7, v4, 0x1

    aget-char v7, v2, v7

    invoke-static {v7}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v7

    .line 498
    add-int/lit8 v8, v4, 0x2

    aget-char v8, v2, v8

    invoke-static {v8}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v8

    .line 499
    add-int/lit8 v9, v4, 0x3

    aget-char v9, v2, v9

    invoke-static {v9}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v9

    .line 500
    add-int/lit8 v10, v4, 0x4

    aget-char v10, v2, v10

    invoke-static {v10}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v10

    .line 501
    add-int/lit8 v11, v4, 0x5

    aget-char v11, v2, v11

    invoke-static {v11}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v11

    .line 502
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/antlr/v4/runtime/atn/Transition;->serializationNames:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a

    .line 508
    :cond_b
    aget-char v0, v2, v4

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v6

    add-int/lit8 v3, v4, 0x1

    move v0, v5

    :goto_b
    if-ge v0, v6, :cond_c

    .line 510
    aget-char v4, v2, v3

    invoke-static {v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v4

    .line 511
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 513
    :cond_c
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v4, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v0, v4, :cond_d

    add-int/lit8 v0, v3, 0x1

    .line 519
    aget-char v3, v2, v3

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    :goto_c
    if-ge v5, v3, :cond_d

    .line 521
    invoke-static {}, Lorg/antlr/v4/runtime/atn/LexerActionType;->values()[Lorg/antlr/v4/runtime/atn/LexerActionType;

    move-result-object v4

    aget-char v6, v2, v0

    invoke-static {v6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v6

    aget-object v4, v4, v6

    .line 522
    add-int/lit8 v4, v0, 0x1

    aget-char v4, v2, v4

    invoke-static {v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    .line 523
    add-int/lit8 v4, v0, 0x2

    aget-char v4, v2, v4

    invoke-static {v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, 0x3

    goto :goto_c

    .line 526
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 430
    :cond_e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "Could not deserialize ATN with UUID %s (expected %s)."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_UUID:Ljava/util/UUID;

    aput-object v0, v4, v3

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 431
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/io/InvalidClassException;

    const-class v3, Lorg/antlr/v4/runtime/atn/ATN;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 423
    :cond_f
    const-string v1, "Could not deserialize ATN with version %d (expected %d)."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    sget v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_VERSION:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 424
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/io/InvalidClassException;

    const-class v3, Lorg/antlr/v4/runtime/atn/ATN;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    move v6, v3

    goto/16 :goto_3
.end method

.method public getTokenName(I)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x27

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 555
    const-string v0, "EOF"

    .line 592
    :goto_0
    return-object v0

    .line 557
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v1, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v0, v1, :cond_6

    if-ltz p1, :cond_6

    const v0, 0xffff

    if-gt p1, v0, :cond_6

    const/16 v0, 0xc

    if-eq p1, v0, :cond_5

    const/16 v0, 0xd

    if-eq p1, v0, :cond_4

    if-eq p1, v3, :cond_3

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    int-to-char v0, p1

    .line 576
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 562
    :pswitch_0
    const-string v0, "\'\\n\'"

    goto :goto_0

    .line 566
    :pswitch_1
    const-string v0, "\'\\t\'"

    goto :goto_0

    .line 568
    :pswitch_2
    const-string v0, "\'\\b\'"

    goto :goto_0

    .line 582
    :cond_1
    const/high16 v0, 0x10000

    or-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'\\u"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 572
    :cond_2
    const-string v0, "\'\\\\\'"

    goto :goto_0

    .line 574
    :cond_3
    const-string v0, "\'\\\'\'"

    goto :goto_0

    .line 564
    :cond_4
    const-string v0, "\'\\r\'"

    goto :goto_0

    .line 570
    :cond_5
    const-string v0, "\'\\f\'"

    goto :goto_0

    .line 588
    :cond_6
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->tokenNames:Ljava/util/List;

    if-eqz v0, :cond_7

    if-ltz p1, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    .line 589
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->tokenNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 592
    :cond_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public serialize()Lorg/antlr/v4/runtime/misc/IntegerList;
    .locals 14

    .line 68
    new-instance v9, Lorg/antlr/v4/runtime/misc/IntegerList;

    invoke-direct {v9}, Lorg/antlr/v4/runtime/misc/IntegerList;-><init>()V

    .line 69
    sget v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_VERSION:I

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 70
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_UUID:Ljava/util/UUID;

    invoke-direct {p0, v9, v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->serializeUUID(Lorg/antlr/v4/runtime/misc/IntegerList;Ljava/util/UUID;)V

    .line 73
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNType;->ordinal()I

    move-result v0

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 74
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 80
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 83
    new-instance v6, Lorg/antlr/v4/runtime/misc/IntegerList;

    invoke-direct {v6}, Lorg/antlr/v4/runtime/misc/IntegerList;-><init>()V

    .line 84
    new-instance v7, Lorg/antlr/v4/runtime/misc/IntegerList;

    invoke-direct {v7}, Lorg/antlr/v4/runtime/misc/IntegerList;-><init>()V

    .line 85
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 86
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v3

    .line 93
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/DecisionState;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/antlr/v4/runtime/atn/DecisionState;

    iget-boolean v1, v1, Lorg/antlr/v4/runtime/atn/DecisionState;->nonGreedy:Z

    if-eqz v1, :cond_1

    .line 94
    iget v1, v0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {v6, v1}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 97
    :cond_1
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/antlr/v4/runtime/atn/RuleStartState;

    iget-boolean v1, v1, Lorg/antlr/v4/runtime/atn/RuleStartState;->isLeftRecursiveRule:Z

    if-eqz v1, :cond_2

    .line 98
    iget v1, v0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {v7, v1}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 101
    :cond_2
    invoke-virtual {v9, v3}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 103
    iget v1, v0, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    .line 104
    const v1, 0xffff

    invoke-virtual {v9, v1}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 110
    :goto_1
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_7

    move-object v1, v0

    .line 111
    check-cast v1, Lorg/antlr/v4/runtime/atn/LoopEndState;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/LoopEndState;->loopBackState:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {v9, v1}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 117
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v1

    const/4 v3, 0x7

    if-eq v1, v3, :cond_24

    .line 119
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v1

    add-int v3, v2, v1

    :goto_3
    const/4 v1, 0x0

    move v4, v1

    .line 122
    :goto_4
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v1

    if-ge v4, v1, :cond_23

    .line 123
    invoke-virtual {v0, v4}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v2

    .line 124
    sget-object v1, Lorg/antlr/v4/runtime/atn/Transition;->serializationTypes:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v8, 0x7

    if-eq v1, v8, :cond_4

    const/16 v8, 0x8

    if-ne v1, v8, :cond_5

    :cond_4
    move-object v1, v2

    .line 126
    check-cast v1, Lorg/antlr/v4/runtime/atn/SetTransition;

    .line 127
    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/SetTransition;->set:Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    .line 107
    :cond_6
    iget v1, v0, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    invoke-virtual {v9, v1}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_1

    .line 113
    :cond_7
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/BlockStartState;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 114
    check-cast v1, Lorg/antlr/v4/runtime/atn/BlockStartState;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/BlockStartState;->endState:Lorg/antlr/v4/runtime/atn/BlockEndState;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/BlockEndState;->stateNumber:I

    invoke-virtual {v9, v1}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_2

    .line 133
    :cond_8
    invoke-virtual {v6}, Lorg/antlr/v4/runtime/misc/IntegerList;->size()I

    move-result v0

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    const/4 v0, 0x0

    .line 134
    :goto_5
    invoke-virtual {v6}, Lorg/antlr/v4/runtime/misc/IntegerList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 135
    invoke-virtual {v6, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->get(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 139
    :cond_9
    invoke-virtual {v7}, Lorg/antlr/v4/runtime/misc/IntegerList;->size()I

    move-result v0

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    const/4 v0, 0x0

    .line 140
    :goto_6
    invoke-virtual {v7}, Lorg/antlr/v4/runtime/misc/IntegerList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 141
    invoke-virtual {v7, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->get(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 144
    :cond_a
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    array-length v1, v0

    .line 145
    invoke-virtual {v9, v1}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_d

    .line 147
    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    aget-object v3, v3, v0

    .line 148
    iget v3, v3, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {v9, v3}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 149
    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v4, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v3, v4, :cond_b

    .line 150
    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    aget v3, v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_c

    .line 151
    const v3, 0xffff

    invoke-virtual {v9, v3}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 154
    :cond_b
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_c
    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    aget v3, v3, v0

    invoke-virtual {v9, v3}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_8

    .line 159
    :cond_d
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->modeToStartState:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 160
    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    if-lez v0, :cond_e

    .line 162
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->modeToStartState:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 163
    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_9

    .line 166
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 169
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->getMaxElement()I

    move-result v5

    const v6, 0xffff

    if-gt v5, v6, :cond_f

    .line 170
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 173
    :cond_f
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 176
    :cond_10
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNSerializer$1;

    invoke-direct {v0, p0}, Lorg/antlr/v4/runtime/atn/ATNSerializer$1;-><init>(Lorg/antlr/v4/runtime/atn/ATNSerializer;)V

    invoke-static {v9, v1, v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->serializeSets(Lorg/antlr/v4/runtime/misc/IntegerList;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;)V

    .line 185
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNSerializer$2;

    invoke-direct {v0, p0}, Lorg/antlr/v4/runtime/atn/ATNSerializer$2;-><init>(Lorg/antlr/v4/runtime/atn/ATNSerializer;)V

    invoke-static {v9, v3, v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->serializeSets(Lorg/antlr/v4/runtime/misc/IntegerList;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;)V

    .line 194
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 196
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v10, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 199
    :cond_11
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 203
    :cond_12
    invoke-virtual {v9, v2}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 204
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_13
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    if-eqz v0, :cond_13

    .line 210
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_13

    const/4 v1, 0x0

    move v3, v1

    .line 214
    :goto_d
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v1

    if-ge v3, v1, :cond_13

    .line 215
    invoke-virtual {v0, v3}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v2

    .line 217
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget-object v4, v2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v4, v4, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 221
    iget v12, v0, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    .line 222
    iget-object v1, v2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v4, v1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    .line 223
    sget-object v1, Lorg/antlr/v4/runtime/atn/Transition;->serializationTypes:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    :cond_14
    :goto_e
    const/4 v2, 0x0

    :goto_f
    const/4 v5, 0x0

    move v6, v1

    move v7, v2

    .line 281
    :goto_10
    invoke-virtual {v9, v12}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 282
    invoke-virtual {v9, v4}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 283
    invoke-virtual {v9, v13}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 284
    invoke-virtual {v9, v6}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 285
    invoke-virtual {v9, v5}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 286
    invoke-virtual {v9, v7}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_d

    :pswitch_1
    move-object v1, v2

    .line 235
    check-cast v1, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;

    .line 236
    iget v1, v1, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->precedence:I

    goto :goto_e

    .line 275
    :pswitch_2
    check-cast v2, Lorg/antlr/v4/runtime/atn/SetTransition;

    iget-object v1, v2, Lorg/antlr/v4/runtime/atn/SetTransition;->set:Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_e

    .line 272
    :pswitch_3
    check-cast v2, Lorg/antlr/v4/runtime/atn/SetTransition;

    iget-object v1, v2, Lorg/antlr/v4/runtime/atn/SetTransition;->set:Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_e

    .line 262
    :pswitch_4
    check-cast v2, Lorg/antlr/v4/runtime/atn/ActionTransition;

    .line 263
    iget v6, v2, Lorg/antlr/v4/runtime/atn/ActionTransition;->ruleIndex:I

    .line 264
    iget v1, v2, Lorg/antlr/v4/runtime/atn/ActionTransition;->actionIndex:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_15

    const v1, 0xffff

    .line 269
    :cond_15
    iget-boolean v7, v2, Lorg/antlr/v4/runtime/atn/ActionTransition;->isCtxDependent:Z

    move v5, v1

    goto :goto_10

    .line 254
    :pswitch_5
    check-cast v2, Lorg/antlr/v4/runtime/atn/AtomTransition;

    iget v1, v2, Lorg/antlr/v4/runtime/atn/AtomTransition;->label:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    const/4 v2, 0x1

    const/4 v1, 0x0

    goto :goto_f

    .line 239
    :pswitch_6
    check-cast v2, Lorg/antlr/v4/runtime/atn/PredicateTransition;

    .line 240
    iget v6, v2, Lorg/antlr/v4/runtime/atn/PredicateTransition;->ruleIndex:I

    .line 241
    iget v5, v2, Lorg/antlr/v4/runtime/atn/PredicateTransition;->predIndex:I

    .line 242
    iget-boolean v7, v2, Lorg/antlr/v4/runtime/atn/PredicateTransition;->isCtxDependent:Z

    move v1, v4

    move v2, v5

    :goto_11
    move v4, v1

    move v5, v2

    .line 232
    goto :goto_10

    .line 229
    :pswitch_7
    check-cast v2, Lorg/antlr/v4/runtime/atn/RuleTransition;

    iget-object v1, v2, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v1, v1, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    .line 230
    iget-object v4, v2, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v5, v4, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    .line 231
    iget v4, v2, Lorg/antlr/v4/runtime/atn/RuleTransition;->ruleIndex:I

    .line 232
    iget v7, v2, Lorg/antlr/v4/runtime/atn/RuleTransition;->precedence:I

    move v2, v4

    move v6, v5

    goto :goto_11

    .line 245
    :pswitch_8
    check-cast v2, Lorg/antlr/v4/runtime/atn/RangeTransition;

    iget v6, v2, Lorg/antlr/v4/runtime/atn/RangeTransition;->from:I

    .line 246
    iget v1, v2, Lorg/antlr/v4/runtime/atn/RangeTransition;->to:I

    const/4 v2, -0x1

    if-ne v6, v2, :cond_16

    const/4 v7, 0x1

    const/4 v6, 0x0

    move v5, v1

    goto :goto_10

    :cond_16
    const/4 v7, 0x0

    move v5, v1

    goto/16 :goto_10

    .line 218
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot serialize a transition to a removed state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_18
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->decisionToState:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 291
    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 292
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->decisionToState:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/DecisionState;

    .line 293
    iget v0, v0, Lorg/antlr/v4/runtime/atn/DecisionState;->stateNumber:I

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_12

    .line 299
    :cond_19
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v1, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v0, v1, :cond_22

    .line 300
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    array-length v0, v0

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 301
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v4, v0, Lorg/antlr/v4/runtime/atn/ATN;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_13
    if-ge v3, v5, :cond_22

    aget-object v0, v4, v3

    .line 302
    invoke-interface {v0}, Lorg/antlr/v4/runtime/atn/LexerAction;->getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/LexerActionType;->ordinal()I

    move-result v1

    invoke-virtual {v9, v1}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 303
    sget-object v1, Lorg/antlr/v4/runtime/atn/ATNSerializer$3;->$SwitchMap$org$antlr$v4$runtime$atn$LexerActionType:[I

    invoke-interface {v0}, Lorg/antlr/v4/runtime/atn/LexerAction;->getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/LexerActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 351
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "The specified lexer action type %s is not valid."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/atn/LexerAction;->getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 352
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :pswitch_9
    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerTypeAction;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/LexerTypeAction;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 346
    :goto_14
    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 347
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 307
    :goto_15
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_13

    .line 345
    :cond_1a
    const v0, 0xffff

    goto :goto_14

    .line 340
    :pswitch_a
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 341
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_15

    .line 334
    :pswitch_b
    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;->getMode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 335
    :goto_16
    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 336
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_15

    .line 334
    :cond_1b
    const v0, 0xffff

    goto :goto_16

    .line 329
    :pswitch_c
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 330
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_15

    .line 324
    :pswitch_d
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 325
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_15

    .line 318
    :pswitch_e
    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerModeAction;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/LexerModeAction;->getMode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 319
    :goto_17
    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 320
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_15

    .line 318
    :cond_1c
    const v0, 0xffff

    goto :goto_17

    .line 311
    :pswitch_f
    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->getRuleIndex()I

    move-result v1

    .line 312
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->getActionIndex()I

    move-result v2

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1d

    move v0, v1

    .line 313
    :goto_18
    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    const/4 v0, -0x1

    if-eq v2, v0, :cond_1e

    move v0, v2

    .line 314
    :goto_19
    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_15

    .line 312
    :cond_1d
    const v0, 0xffff

    goto :goto_18

    .line 313
    :cond_1e
    const v0, 0xffff

    goto :goto_19

    .line 305
    :pswitch_10
    check-cast v0, Lorg/antlr/v4/runtime/atn/LexerChannelAction;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/LexerChannelAction;->getChannel()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    .line 306
    :goto_1a
    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 307
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_15

    .line 305
    :cond_1f
    const v0, 0xffff

    goto :goto_1a

    .line 359
    :goto_1b
    invoke-virtual {v9}, Lorg/antlr/v4/runtime/misc/IntegerList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 360
    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->get(I)I

    move-result v1

    if-ltz v1, :cond_20

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->get(I)I

    move-result v1

    const v2, 0xffff

    if-gt v1, v2, :cond_20

    .line 369
    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->get(I)I

    move-result v1

    .line 370
    add-int/lit8 v1, v1, 0x2

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-virtual {v9, v0, v1}, Lorg/antlr/v4/runtime/misc/IntegerList;->set(II)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 361
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Serialized ATN data element "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " out of range 0..65535"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    return-object v9

    :cond_22
    move v0, v8

    goto :goto_1b

    :cond_23
    move v2, v3

    goto/16 :goto_0

    :cond_24
    move v3, v2

    goto/16 :goto_3

    .line 223
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 303
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
