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
.field static final $assertionsDisabled:Z = false


# instance fields
.field public atn:Lorg/antlr/v4/runtime/atn/ATN;

.field private tokenNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATN;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATN;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATN;",
            "Ljava/util/List<",
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
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->serializeInt(Lorg/antlr/v4/runtime/misc/IntegerList;I)V

    return-void
.end method

.method private appendSets(Ljava/lang/StringBuilder;[CIIILorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p4, :cond_66

    .line 531
    aget-char v2, p2, p3

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v2

    .line 532
    add-int v3, v1, p5

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p3, 0x2

    .line 533
    add-int/lit8 p3, p3, 0x1

    aget-char p3, p2, p3

    if-eqz p3, :cond_1e

    const/4 p3, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p3, 0x0

    :goto_1f
    if-eqz p3, :cond_29

    .line 535
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->getTokenName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    const/4 v4, 0x0

    :goto_2a
    if-ge v4, v2, :cond_5d

    if-nez p3, :cond_30

    if-lez v4, :cond_35

    .line 540
    :cond_30
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_35
    invoke-interface {p6, p2, v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->readUnicode([CI)I

    move-result v5

    .line 544
    invoke-interface {p6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->size()I

    move-result v6

    add-int/2addr v3, v6

    .line 545
    invoke-interface {p6, p2, v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->readUnicode([CI)I

    move-result v6

    .line 546
    invoke-interface {p6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->size()I

    move-result v7

    add-int/2addr v3, v7

    .line 547
    invoke-virtual {p0, v5}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->getTokenName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".."

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->getTokenName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 549
    :cond_5d
    const-string p3, "\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    move p3, v3

    goto :goto_2

    :cond_66
    return p3
.end method

.method public static getDecoded(Lorg/antlr/v4/runtime/atn/ATN;Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATN;",
            "Ljava/util/List<",
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

    move-result-object p0

    return-object p0
.end method

.method public static getSerialized(Lorg/antlr/v4/runtime/atn/ATN;)Lorg/antlr/v4/runtime/misc/IntegerList;
    .registers 2

    .line 601
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;

    invoke-direct {v0, p0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;-><init>(Lorg/antlr/v4/runtime/atn/ATN;)V

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->serialize()Lorg/antlr/v4/runtime/misc/IntegerList;

    move-result-object p0

    return-object p0
.end method

.method public static getSerializedAsChars(Lorg/antlr/v4/runtime/atn/ATN;)[C
    .registers 1

    .line 605
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->getSerialized(Lorg/antlr/v4/runtime/atn/ATN;)Lorg/antlr/v4/runtime/misc/IntegerList;

    move-result-object p0

    invoke-static {p0}, Lorg/antlr/v4/runtime/misc/Utils;->toCharArray(Lorg/antlr/v4/runtime/misc/IntegerList;)[C

    move-result-object p0

    return-object p0
.end method

.method public static getSerializedAsString(Lorg/antlr/v4/runtime/atn/ATN;)Ljava/lang/String;
    .registers 2

    .line 597
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->getSerializedAsChars(Lorg/antlr/v4/runtime/atn/ATN;)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private serializeInt(Lorg/antlr/v4/runtime/misc/IntegerList;I)V
    .registers 4

    int-to-char v0, p2

    .line 625
    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    shr-int/lit8 p2, p2, 0x10

    int-to-char p2, p2

    .line 626
    invoke-virtual {p1, p2}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    return-void
.end method

.method private serializeLong(Lorg/antlr/v4/runtime/misc/IntegerList;J)V
    .registers 5

    long-to-int v0, p2

    .line 620
    invoke-direct {p0, p1, v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->serializeInt(Lorg/antlr/v4/runtime/misc/IntegerList;I)V

    const/16 v0, 0x20

    shr-long/2addr p2, v0

    long-to-int p3, p2

    .line 621
    invoke-direct {p0, p1, p3}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->serializeInt(Lorg/antlr/v4/runtime/misc/IntegerList;I)V

    return-void
.end method

.method private static serializeSets(Lorg/antlr/v4/runtime/misc/IntegerList;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/misc/IntegerList;",
            "Ljava/util/Collection<",
            "Lorg/antlr/v4/runtime/misc/IntervalSet;",
            ">;",
            "Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;",
            ")V"
        }
    .end annotation

    .line 381
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 382
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 384
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 385
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->contains(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3b

    .line 386
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->getIntervals()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/misc/Interval;

    iget v4, v4, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-ne v4, v1, :cond_3b

    .line 387
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->getIntervals()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_46

    .line 390
    :cond_3b
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->getIntervals()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 393
    :goto_46
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 394
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->getIntervals()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/misc/Interval;

    .line 395
    iget v4, v2, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-ne v4, v1, :cond_6a

    .line 396
    iget v4, v2, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-ne v4, v1, :cond_66

    goto :goto_51

    .line 400
    :cond_66
    invoke-interface {p2, p0, v3}, Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;->serializeCodePoint(Lorg/antlr/v4/runtime/misc/IntegerList;I)V

    goto :goto_6f

    .line 404
    :cond_6a
    iget v4, v2, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    invoke-interface {p2, p0, v4}, Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;->serializeCodePoint(Lorg/antlr/v4/runtime/misc/IntegerList;I)V

    .line 407
    :goto_6f
    iget v2, v2, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    invoke-interface {p2, p0, v2}, Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;->serializeCodePoint(Lorg/antlr/v4/runtime/misc/IntegerList;I)V

    goto :goto_51

    :cond_75
    return-void
.end method

.method private serializeUUID(Lorg/antlr/v4/runtime/misc/IntegerList;Ljava/util/UUID;)V
    .registers 5

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
    .registers 19

    .line 413
    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [C

    const/4 v9, 0x1

    const/4 v0, 0x1

    .line 415
    :goto_b
    array-length v1, v8

    const/4 v10, 0x2

    if-ge v0, v1, :cond_18

    .line 416
    aget-char v1, v8, v0

    sub-int/2addr v1, v10

    int-to-char v1, v1

    aput-char v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 419
    :cond_18
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    const/4 v12, 0x0

    aget-char v0, v8, v12

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    .line 422
    sget v1, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_VERSION:I

    if-ne v0, v1, :cond_28f

    .line 427
    invoke-static {v8, v9}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toUUID([CI)Ljava/util/UUID;

    move-result-object v0

    .line 429
    sget-object v1, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26a

    .line 435
    const/16 v0, 0xa

    aget-char v1, v8, v0

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v1

    .line 436
    const-string v2, "max type "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const/16 v1, 0xb

    aget-char v1, v8, v1

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/16 v4, 0xc

    .line 438
    :goto_56
    const-string v14, ":"

    const-string v15, " "

    if-ge v3, v1, :cond_d9

    add-int/lit8 v5, v4, 0x1

    .line 439
    aget-char v6, v8, v4

    invoke-static {v6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v6

    if-nez v6, :cond_68

    move v4, v5

    goto :goto_d2

    :cond_68
    add-int/lit8 v16, v4, 0x2

    .line 441
    aget-char v5, v8, v5

    invoke-static {v5}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v5

    const v12, 0xffff

    if-ne v5, v12, :cond_76

    const/4 v5, -0x1

    :cond_76
    if-ne v6, v2, :cond_8f

    add-int/lit8 v4, v4, 0x3

    .line 448
    aget-char v12, v8, v16

    invoke-static {v12}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v12

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v16, v4

    goto :goto_b2

    :cond_8f
    const/4 v2, 0x4

    if-eq v6, v2, :cond_9c

    const/4 v2, 0x5

    if-eq v6, v2, :cond_9c

    const/4 v2, 0x3

    if-ne v6, v2, :cond_99

    goto :goto_9c

    .line 451
    :cond_99
    const-string v2, ""

    goto :goto_b3

    :cond_9c
    :goto_9c
    add-int/lit8 v4, v4, 0x3

    .line 452
    aget-char v2, v8, v16

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v2

    .line 453
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v16, v4

    .line 449
    :goto_b2
    nop

    .line 455
    :goto_b3
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/antlr/v4/runtime/atn/ATNState;->serializationNames:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v16

    :goto_d2
    add-int/lit8 v3, v3, 0x1

    const/16 v2, 0xc

    const/4 v12, 0x0

    goto/16 :goto_56

    .line 465
    :cond_d9
    aget-char v1, v8, v4

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v1

    add-int/2addr v4, v9

    const/4 v2, 0x0

    :goto_e1
    if-ge v2, v1, :cond_ed

    .line 467
    aget-char v3, v8, v4

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_e1

    .line 469
    :cond_ed
    aget-char v1, v8, v4

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v1

    add-int/2addr v4, v9

    const/4 v2, 0x0

    :goto_f5
    if-ge v2, v1, :cond_101

    .line 471
    aget-char v3, v8, v4

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_f5

    .line 474
    :cond_101
    aget-char v1, v8, v4

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v1

    add-int/2addr v4, v9

    const/4 v2, 0x0

    :goto_109
    if-ge v2, v1, :cond_14f

    add-int/lit8 v3, v4, 0x1

    .line 476
    aget-char v5, v8, v4

    invoke-static {v5}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v5

    .line 477
    iget-object v6, v7, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v6, v6, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v12, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    const-string v10, "rule "

    if-ne v6, v12, :cond_13b

    add-int/lit8 v4, v4, 0x2

    .line 478
    aget-char v3, v8, v3

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    .line 479
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14b

    .line 482
    :cond_13b
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v3

    :goto_14b
    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x2

    goto :goto_109

    .line 485
    :cond_14f
    aget-char v1, v8, v4

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v1

    add-int/2addr v4, v9

    const/4 v2, 0x0

    :goto_157
    if-ge v2, v1, :cond_175

    .line 487
    aget-char v3, v8, v4

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    .line 488
    const-string v5, "mode "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_157

    .line 490
    :cond_175
    aget-char v0, v8, v4

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v10

    .line 491
    add-int/lit8 v3, v4, 0x1

    const/4 v5, 0x0

    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;->UNICODE_BMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->getUnicodeDeserializer(Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v8

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->appendSets(Ljava/lang/StringBuilder;[CIIILorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I

    move-result v0

    .line 492
    aget-char v1, v8, v0

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v4

    .line 493
    add-int/lit8 v3, v0, 0x1

    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;->UNICODE_SMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->getUnicodeDeserializer(Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v11

    move v5, v10

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->appendSets(Ljava/lang/StringBuilder;[CIIILorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I

    move-result v0

    .line 494
    aget-char v1, v8, v0

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v1

    add-int/2addr v0, v9

    move v2, v0

    const/4 v0, 0x0

    :goto_1ac
    if-ge v0, v1, :cond_211

    .line 496
    aget-char v3, v8, v2

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    .line 497
    add-int/lit8 v4, v2, 0x1

    aget-char v4, v8, v4

    invoke-static {v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v4

    .line 498
    add-int/lit8 v5, v2, 0x2

    aget-char v5, v8, v5

    invoke-static {v5}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v5

    .line 499
    add-int/lit8 v6, v2, 0x3

    aget-char v6, v8, v6

    invoke-static {v6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v6

    .line 500
    add-int/lit8 v10, v2, 0x4

    aget-char v10, v8, v10

    invoke-static {v10}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v10

    .line 501
    add-int/lit8 v12, v2, 0x5

    aget-char v12, v8, v12

    invoke-static {v12}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v12

    .line 502
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/antlr/v4/runtime/atn/Transition;->serializationNames:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1ac

    .line 508
    :cond_211
    aget-char v0, v8, v2

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    add-int/2addr v2, v9

    const/4 v1, 0x0

    :goto_219
    if-ge v1, v0, :cond_232

    .line 510
    aget-char v3, v8, v2

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    .line 511
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_219

    .line 513
    :cond_232
    iget-object v0, v7, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v1, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v0, v1, :cond_265

    add-int/lit8 v0, v2, 0x1

    .line 519
    aget-char v1, v8, v2

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v1

    const/4 v12, 0x0

    :goto_243
    if-ge v12, v1, :cond_265

    .line 521
    invoke-static {}, Lorg/antlr/v4/runtime/atn/LexerActionType;->values()[Lorg/antlr/v4/runtime/atn/LexerActionType;

    move-result-object v2

    aget-char v3, v8, v0

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    aget-object v2, v2, v3

    .line 522
    add-int/lit8 v2, v0, 0x1

    aget-char v2, v8, v2

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    add-int/lit8 v2, v0, 0x3

    .line 523
    const/4 v3, 0x2

    add-int/2addr v0, v3

    aget-char v0, v8, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    add-int/lit8 v12, v12, 0x1

    move v0, v2

    goto :goto_243

    .line 526
    :cond_265
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 430
    :cond_26a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_UUID:Ljava/util/UUID;

    aput-object v0, v2, v9

    const-string v0, "Could not deserialize ATN with UUID %s (expected %s)."

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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
    :cond_28f
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sget v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_VERSION:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v9

    const-string v0, "Could not deserialize ATN with version %d (expected %d)."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 424
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/io/InvalidClassException;

    const-class v3, Lorg/antlr/v4/runtime/atn/ATN;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2b9

    :goto_2b8
    throw v1

    :goto_2b9
    goto :goto_2b8
.end method

.method public getTokenName(I)Ljava/lang/String;
    .registers 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 555
    const-string p1, "EOF"

    return-object p1

    .line 557
    :cond_6
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v1, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v0, v1, :cond_85

    if-ltz p1, :cond_85

    const v0, 0xffff

    if-gt p1, v0, :cond_85

    const/16 v0, 0xc

    if-eq p1, v0, :cond_82

    const/16 v0, 0xd

    if-eq p1, v0, :cond_7f

    const/16 v0, 0x27

    if-eq p1, v0, :cond_7c

    const/16 v1, 0x5c

    if-eq p1, v1, :cond_79

    packed-switch p1, :pswitch_data_a0

    int-to-char v1, p1

    .line 576
    invoke-static {v1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    sget-object v3, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    const-string v4, "\'"

    if-ne v2, v3, :cond_56

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-nez v2, :cond_56

    .line 578
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 562
    :pswitch_4d  #0xa
    const-string p1, "\'\\n\'"

    return-object p1

    .line 566
    :pswitch_50  #0x9
    const-string p1, "\'\\t\'"

    return-object p1

    .line 568
    :pswitch_53  #0x8
    const-string p1, "\'\\b\'"

    return-object p1

    .line 582
    :cond_56
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'\\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 572
    :cond_79
    const-string p1, "\'\\\\\'"

    return-object p1

    .line 574
    :cond_7c
    const-string p1, "\'\\\'\'"

    return-object p1

    .line 564
    :cond_7f
    const-string p1, "\'\\r\'"

    return-object p1

    .line 570
    :cond_82
    const-string p1, "\'\\f\'"

    return-object p1

    .line 588
    :cond_85
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->tokenNames:Ljava/util/List;

    if-eqz v0, :cond_9a

    if-ltz p1, :cond_9a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_9a

    .line 589
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->tokenNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 592
    :cond_9a
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_a0
    .packed-switch 0x8
        :pswitch_53  #00000008
        :pswitch_50  #00000009
        :pswitch_4d  #0000000a
    .end packed-switch
.end method

.method public serialize()Lorg/antlr/v4/runtime/misc/IntegerList;
    .registers 18

    .line 68
    move-object/from16 v0, p0

    new-instance v1, Lorg/antlr/v4/runtime/misc/IntegerList;

    invoke-direct {v1}, Lorg/antlr/v4/runtime/misc/IntegerList;-><init>()V

    .line 69
    sget v2, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_VERSION:I

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 70
    sget-object v2, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_UUID:Ljava/util/UUID;

    invoke-direct {v0, v1, v2}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->serializeUUID(Lorg/antlr/v4/runtime/misc/IntegerList;Ljava/util/UUID;)V

    .line 73
    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/ATNType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 74
    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 80
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 83
    new-instance v3, Lorg/antlr/v4/runtime/misc/IntegerList;

    invoke-direct {v3}, Lorg/antlr/v4/runtime/misc/IntegerList;-><init>()V

    .line 84
    new-instance v4, Lorg/antlr/v4/runtime/misc/IntegerList;

    invoke-direct {v4}, Lorg/antlr/v4/runtime/misc/IntegerList;-><init>()V

    .line 85
    iget-object v5, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v5, v5, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 86
    iget-object v5, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v5, v5, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_47
    :goto_47
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x7

    const/4 v10, -0x1

    const v11, 0xffff

    const/4 v12, 0x1

    if-eqz v8, :cond_ee

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/antlr/v4/runtime/atn/ATNState;

    if-nez v8, :cond_5f

    .line 88
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_47

    .line 92
    :cond_5f
    invoke-virtual {v8}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v13

    .line 93
    instance-of v14, v8, Lorg/antlr/v4/runtime/atn/DecisionState;

    if-eqz v14, :cond_73

    move-object v14, v8

    check-cast v14, Lorg/antlr/v4/runtime/atn/DecisionState;

    iget-boolean v14, v14, Lorg/antlr/v4/runtime/atn/DecisionState;->nonGreedy:Z

    if-eqz v14, :cond_73

    .line 94
    iget v14, v8, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {v3, v14}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 97
    :cond_73
    instance-of v14, v8, Lorg/antlr/v4/runtime/atn/RuleStartState;

    if-eqz v14, :cond_83

    move-object v14, v8

    check-cast v14, Lorg/antlr/v4/runtime/atn/RuleStartState;

    iget-boolean v14, v14, Lorg/antlr/v4/runtime/atn/RuleStartState;->isLeftRecursiveRule:Z

    if-eqz v14, :cond_83

    .line 98
    iget v14, v8, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {v4, v14}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 101
    :cond_83
    invoke-virtual {v1, v13}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 103
    iget v13, v8, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    if-ne v13, v10, :cond_8e

    .line 104
    invoke-virtual {v1, v11}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_93

    .line 107
    :cond_8e
    iget v10, v8, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    invoke-virtual {v1, v10}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 110
    :goto_93
    invoke-virtual {v8}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v10

    const/16 v11, 0xc

    if-ne v10, v11, :cond_a6

    .line 111
    move-object v10, v8

    check-cast v10, Lorg/antlr/v4/runtime/atn/LoopEndState;

    iget-object v10, v10, Lorg/antlr/v4/runtime/atn/LoopEndState;->loopBackState:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v10, v10, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {v1, v10}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_b4

    .line 113
    :cond_a6
    instance-of v10, v8, Lorg/antlr/v4/runtime/atn/BlockStartState;

    if-eqz v10, :cond_b4

    .line 114
    move-object v10, v8

    check-cast v10, Lorg/antlr/v4/runtime/atn/BlockStartState;

    iget-object v10, v10, Lorg/antlr/v4/runtime/atn/BlockStartState;->endState:Lorg/antlr/v4/runtime/atn/BlockEndState;

    iget v10, v10, Lorg/antlr/v4/runtime/atn/BlockEndState;->stateNumber:I

    invoke-virtual {v1, v10}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 117
    :cond_b4
    :goto_b4
    invoke-virtual {v8}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v10

    if-eq v10, v9, :cond_bf

    .line 119
    invoke-virtual {v8}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v10

    add-int/2addr v7, v10

    :cond_bf
    const/4 v10, 0x0

    .line 122
    :goto_c0
    invoke-virtual {v8}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v11

    if-ge v10, v11, :cond_47

    .line 123
    invoke-virtual {v8, v10}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v11

    .line 124
    sget-object v13, Lorg/antlr/v4/runtime/atn/Transition;->serializationTypes:Ljava/util/Map;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v13, v9, :cond_e0

    const/16 v14, 0x8

    if-ne v13, v14, :cond_eb

    .line 126
    :cond_e0
    check-cast v11, Lorg/antlr/v4/runtime/atn/SetTransition;

    .line 127
    iget-object v11, v11, Lorg/antlr/v4/runtime/atn/SetTransition;->set:Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v2, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_eb
    add-int/lit8 v10, v10, 0x1

    goto :goto_c0

    .line 133
    :cond_ee
    invoke-virtual {v3}, Lorg/antlr/v4/runtime/misc/IntegerList;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    const/4 v5, 0x0

    .line 134
    :goto_f6
    invoke-virtual {v3}, Lorg/antlr/v4/runtime/misc/IntegerList;->size()I

    move-result v8

    if-ge v5, v8, :cond_106

    .line 135
    invoke-virtual {v3, v5}, Lorg/antlr/v4/runtime/misc/IntegerList;->get(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f6

    .line 139
    :cond_106
    invoke-virtual {v4}, Lorg/antlr/v4/runtime/misc/IntegerList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    const/4 v3, 0x0

    .line 140
    :goto_10e
    invoke-virtual {v4}, Lorg/antlr/v4/runtime/misc/IntegerList;->size()I

    move-result v5

    if-ge v3, v5, :cond_11e

    .line 141
    invoke-virtual {v4, v3}, Lorg/antlr/v4/runtime/misc/IntegerList;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10e

    .line 144
    :cond_11e
    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    array-length v3, v3

    .line 145
    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    const/4 v4, 0x0

    :goto_127
    if-ge v4, v3, :cond_154

    .line 147
    iget-object v5, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v5, v5, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    aget-object v5, v5, v4

    .line 148
    iget v5, v5, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 149
    iget-object v5, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v5, v5, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v8, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v5, v8, :cond_151

    .line 150
    iget-object v5, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v5, v5, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    aget v5, v5, v4

    if-ne v5, v10, :cond_148

    .line 151
    invoke-virtual {v1, v11}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_151

    .line 154
    :cond_148
    iget-object v5, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v5, v5, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    aget v5, v5, v4

    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    :cond_151
    :goto_151
    add-int/lit8 v4, v4, 0x1

    goto :goto_127

    .line 159
    :cond_154
    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/ATN;->modeToStartState:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 160
    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    if-lez v3, :cond_17b

    .line 162
    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/ATN;->modeToStartState:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_169
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 163
    iget v4, v4, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-virtual {v1, v4}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_169

    .line 166
    :cond_17b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 169
    invoke-virtual {v5}, Lorg/antlr/v4/runtime/misc/IntervalSet;->getMaxElement()I

    move-result v8

    if-gt v8, v11, :cond_1a3

    .line 170
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18d

    .line 173
    :cond_1a3
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18d

    .line 176
    :cond_1a7
    new-instance v2, Lorg/antlr/v4/runtime/atn/ATNSerializer$1;

    invoke-direct {v2, v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer$1;-><init>(Lorg/antlr/v4/runtime/atn/ATNSerializer;)V

    invoke-static {v1, v3, v2}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->serializeSets(Lorg/antlr/v4/runtime/misc/IntegerList;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;)V

    .line 185
    new-instance v2, Lorg/antlr/v4/runtime/atn/ATNSerializer$2;

    invoke-direct {v2, v0}, Lorg/antlr/v4/runtime/atn/ATNSerializer$2;-><init>(Lorg/antlr/v4/runtime/atn/ATNSerializer;)V

    invoke-static {v1, v4, v2}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->serializeSets(Lorg/antlr/v4/runtime/misc/IntegerList;Ljava/util/Collection;Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;)V

    .line 194
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 196
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_1c1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 197
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c1

    .line 199
    :cond_1d7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1db
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 200
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v5, v12

    goto :goto_1db

    .line 203
    :cond_1f0
    invoke-virtual {v1, v7}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 204
    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1fb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/atn/ATNState;

    if-nez v4, :cond_20a

    goto :goto_1fb

    .line 210
    :cond_20a
    invoke-virtual {v4}, Lorg/antlr/v4/runtime/atn/ATNState;->getStateType()I

    move-result v5

    if-ne v5, v9, :cond_211

    goto :goto_1fb

    :cond_211
    const/4 v5, 0x0

    .line 214
    :goto_212
    invoke-virtual {v4}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v7

    if-ge v5, v7, :cond_2d2

    .line 215
    invoke-virtual {v4, v5}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v7

    .line 217
    iget-object v8, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v8, v8, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget-object v13, v7, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v13, v13, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2ca

    .line 221
    iget v8, v4, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    .line 222
    iget-object v13, v7, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v13, v13, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    .line 223
    sget-object v14, Lorg/antlr/v4/runtime/atn/Transition;->serializationTypes:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    packed-switch v14, :pswitch_data_40e

    :pswitch_243  #0x9
    const/4 v7, 0x0

    goto/16 :goto_2b0

    .line 235
    :pswitch_246  #0xa
    check-cast v7, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;

    .line 236
    iget v7, v7, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;->precedence:I

    goto/16 :goto_2b0

    .line 275
    :pswitch_24c  #0x8
    check-cast v7, Lorg/antlr/v4/runtime/atn/SetTransition;

    iget-object v7, v7, Lorg/antlr/v4/runtime/atn/SetTransition;->set:Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2b0

    .line 272
    :pswitch_25b  #0x7
    check-cast v7, Lorg/antlr/v4/runtime/atn/SetTransition;

    iget-object v7, v7, Lorg/antlr/v4/runtime/atn/SetTransition;->set:Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2b0

    .line 262
    :pswitch_26a  #0x6
    check-cast v7, Lorg/antlr/v4/runtime/atn/ActionTransition;

    .line 263
    iget v15, v7, Lorg/antlr/v4/runtime/atn/ActionTransition;->ruleIndex:I

    .line 264
    iget v9, v7, Lorg/antlr/v4/runtime/atn/ActionTransition;->actionIndex:I

    if-ne v9, v10, :cond_275

    const v9, 0xffff

    .line 269
    :cond_275
    iget-boolean v7, v7, Lorg/antlr/v4/runtime/atn/ActionTransition;->isCtxDependent:Z

    goto :goto_2b3

    .line 254
    :pswitch_278  #0x5
    check-cast v7, Lorg/antlr/v4/runtime/atn/AtomTransition;

    iget v7, v7, Lorg/antlr/v4/runtime/atn/AtomTransition;->label:I

    if-ne v7, v10, :cond_2b0

    const/4 v7, 0x1

    const/4 v15, 0x0

    goto :goto_2b2

    .line 239
    :pswitch_281  #0x4
    check-cast v7, Lorg/antlr/v4/runtime/atn/PredicateTransition;

    .line 240
    iget v9, v7, Lorg/antlr/v4/runtime/atn/PredicateTransition;->ruleIndex:I

    .line 241
    iget v15, v7, Lorg/antlr/v4/runtime/atn/PredicateTransition;->predIndex:I

    .line 242
    iget-boolean v7, v7, Lorg/antlr/v4/runtime/atn/PredicateTransition;->isCtxDependent:Z

    move/from16 v16, v15

    move v15, v9

    move/from16 v9, v16

    goto :goto_2a2

    .line 229
    :pswitch_28f  #0x3
    check-cast v7, Lorg/antlr/v4/runtime/atn/RuleTransition;

    iget-object v9, v7, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v13, v9, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    .line 230
    iget-object v9, v7, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v9, v9, Lorg/antlr/v4/runtime/atn/ATNState;->stateNumber:I

    .line 231
    iget v15, v7, Lorg/antlr/v4/runtime/atn/RuleTransition;->ruleIndex:I

    .line 232
    iget v7, v7, Lorg/antlr/v4/runtime/atn/RuleTransition;->precedence:I

    move/from16 v16, v15

    move v15, v9

    move/from16 v9, v16

    :goto_2a2
    goto :goto_2b3

    .line 245
    :pswitch_2a3  #0x2
    check-cast v7, Lorg/antlr/v4/runtime/atn/RangeTransition;

    iget v15, v7, Lorg/antlr/v4/runtime/atn/RangeTransition;->from:I

    .line 246
    iget v9, v7, Lorg/antlr/v4/runtime/atn/RangeTransition;->to:I

    if-ne v15, v10, :cond_2ae

    const/4 v7, 0x1

    const/4 v15, 0x0

    goto :goto_2b3

    :cond_2ae
    const/4 v7, 0x0

    goto :goto_2b3

    .line 223
    :cond_2b0
    :goto_2b0
    move v15, v7

    const/4 v7, 0x0

    :goto_2b2
    const/4 v9, 0x0

    .line 281
    :goto_2b3
    invoke-virtual {v1, v8}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 282
    invoke-virtual {v1, v13}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 283
    invoke-virtual {v1, v14}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 284
    invoke-virtual {v1, v15}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 285
    invoke-virtual {v1, v9}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 286
    invoke-virtual {v1, v7}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x7

    goto/16 :goto_212

    .line 218
    :cond_2ca
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot serialize a transition to a removed state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_2d2
    const/4 v9, 0x7

    goto/16 :goto_1fb

    .line 290
    :cond_2d5
    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ATN;->decisionToState:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 291
    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 292
    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ATN;->decisionToState:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2fa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/atn/DecisionState;

    .line 293
    iget v3, v3, Lorg/antlr/v4/runtime/atn/DecisionState;->stateNumber:I

    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_2e8

    .line 299
    :cond_2fa
    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v3, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v2, v3, :cond_3c8

    .line 300
    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ATN;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    array-length v2, v2

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 301
    iget-object v2, v0, Lorg/antlr/v4/runtime/atn/ATNSerializer;->atn:Lorg/antlr/v4/runtime/atn/ATN;

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/ATN;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_310
    if-ge v4, v3, :cond_3c8

    aget-object v5, v2, v4

    .line 302
    invoke-interface {v5}, Lorg/antlr/v4/runtime/atn/LexerAction;->getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/antlr/v4/runtime/atn/LexerActionType;->ordinal()I

    move-result v7

    invoke-virtual {v1, v7}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 303
    sget-object v7, Lorg/antlr/v4/runtime/atn/ATNSerializer$3;->$SwitchMap$org$antlr$v4$runtime$atn$LexerActionType:[I

    invoke-interface {v5}, Lorg/antlr/v4/runtime/atn/LexerAction;->getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;

    move-result-object v8

    invoke-virtual {v8}, Lorg/antlr/v4/runtime/atn/LexerActionType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_424

    .line 351
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/Object;

    invoke-interface {v5}, Lorg/antlr/v4/runtime/atn/LexerAction;->getActionType()Lorg/antlr/v4/runtime/atn/LexerActionType;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "The specified lexer action type %s is not valid."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 352
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    :pswitch_346  #0x8
    check-cast v5, Lorg/antlr/v4/runtime/atn/LexerTypeAction;

    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/LexerTypeAction;->getType()I

    move-result v5

    if-eq v5, v10, :cond_34f

    goto :goto_352

    :cond_34f
    const v5, 0xffff

    .line 346
    :goto_352
    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 347
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto/16 :goto_3c4

    .line 340
    :pswitch_35a  #0x7
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 341
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_3c4

    .line 334
    :pswitch_361  #0x6
    check-cast v5, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;

    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;->getMode()I

    move-result v5

    if-eq v5, v10, :cond_36a

    goto :goto_36d

    :cond_36a
    const v5, 0xffff

    .line 335
    :goto_36d
    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 336
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_3c4

    .line 329
    :pswitch_374  #0x5
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 330
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_3c4

    .line 324
    :pswitch_37b  #0x4
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 325
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_3c4

    .line 318
    :pswitch_382  #0x3
    check-cast v5, Lorg/antlr/v4/runtime/atn/LexerModeAction;

    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/LexerModeAction;->getMode()I

    move-result v5

    if-eq v5, v10, :cond_38b

    goto :goto_38e

    :cond_38b
    const v5, 0xffff

    .line 319
    :goto_38e
    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 320
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_3c4

    .line 311
    :pswitch_395  #0x2
    check-cast v5, Lorg/antlr/v4/runtime/atn/LexerCustomAction;

    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->getRuleIndex()I

    move-result v7

    .line 312
    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/LexerCustomAction;->getActionIndex()I

    move-result v5

    if-eq v7, v10, :cond_3a2

    goto :goto_3a5

    :cond_3a2
    const v7, 0xffff

    .line 313
    :goto_3a5
    invoke-virtual {v1, v7}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    if-eq v5, v10, :cond_3ab

    goto :goto_3ae

    :cond_3ab
    const v5, 0xffff

    .line 314
    :goto_3ae
    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    goto :goto_3c4

    .line 305
    :pswitch_3b2  #0x1
    check-cast v5, Lorg/antlr/v4/runtime/atn/LexerChannelAction;

    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/LexerChannelAction;->getChannel()I

    move-result v5

    if-eq v5, v10, :cond_3bb

    goto :goto_3be

    :cond_3bb
    const v5, 0xffff

    .line 306
    :goto_3be
    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    .line 307
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    :goto_3c4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_310

    .line 359
    :cond_3c8
    :goto_3c8
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/misc/IntegerList;->size()I

    move-result v2

    if-ge v12, v2, :cond_40c

    .line 360
    invoke-virtual {v1, v12}, Lorg/antlr/v4/runtime/misc/IntegerList;->get(I)I

    move-result v2

    if-ltz v2, :cond_3e7

    invoke-virtual {v1, v12}, Lorg/antlr/v4/runtime/misc/IntegerList;->get(I)I

    move-result v2

    if-gt v2, v11, :cond_3e7

    .line 369
    invoke-virtual {v1, v12}, Lorg/antlr/v4/runtime/misc/IntegerList;->get(I)I

    move-result v2

    .line 370
    add-int/lit8 v2, v2, 0x2

    and-int/2addr v2, v11

    invoke-virtual {v1, v12, v2}, Lorg/antlr/v4/runtime/misc/IntegerList;->set(II)I

    add-int/lit8 v12, v12, 0x1

    goto :goto_3c8

    .line 361
    :cond_3e7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Serialized ATN data element "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Lorg/antlr/v4/runtime/misc/IntegerList;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " element "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of range 0..65535"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_40c
    return-object v1

    nop

    :pswitch_data_40e
    .packed-switch 0x2
        :pswitch_2a3  #00000002
        :pswitch_28f  #00000003
        :pswitch_281  #00000004
        :pswitch_278  #00000005
        :pswitch_26a  #00000006
        :pswitch_25b  #00000007
        :pswitch_24c  #00000008
        :pswitch_243  #00000009
        :pswitch_246  #0000000a
    .end packed-switch

    :pswitch_data_424
    .packed-switch 0x1
        :pswitch_3b2  #00000001
        :pswitch_395  #00000002
        :pswitch_382  #00000003
        :pswitch_37b  #00000004
        :pswitch_374  #00000005
        :pswitch_361  #00000006
        :pswitch_35a  #00000007
        :pswitch_346  #00000008
    .end packed-switch
.end method
