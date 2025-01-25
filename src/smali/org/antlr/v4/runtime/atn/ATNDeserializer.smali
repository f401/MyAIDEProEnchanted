.class public Lorg/antlr/v4/runtime/atn/ATNDeserializer;
.super Ljava/lang/Object;
.source "ATNDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;,
        Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;
    }
.end annotation


# static fields
.field private static final ADDED_LEXER_ACTIONS:Ljava/util/UUID;

.field private static final ADDED_PRECEDENCE_TRANSITIONS:Ljava/util/UUID;

.field private static final ADDED_UNICODE_SMP:Ljava/util/UUID;

.field private static final BASE_SERIALIZED_UUID:Ljava/util/UUID;

.field public static final SERIALIZED_UUID:Ljava/util/UUID;

.field public static final SERIALIZED_VERSION:I = 0x3

.field private static final SUPPORTED_UUIDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final deserializationOptions:Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 67
    const-string v0, "33761B2D-78BB-4A43-8B0B-4F5BEE8AACF3"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->BASE_SERIALIZED_UUID:Ljava/util/UUID;

    .line 68
    const-string v1, "1DA0C57D-6C06-438A-9B27-10BCB3CE0F61"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->ADDED_PRECEDENCE_TRANSITIONS:Ljava/util/UUID;

    .line 69
    const-string v2, "AADB8D7E-AEEF-4415-AD2B-8204D6CF042E"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    sput-object v2, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->ADDED_LEXER_ACTIONS:Ljava/util/UUID;

    .line 70
    const-string v3, "59627784-3BE5-417A-B9EB-8131A7286089"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    sput-object v3, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->ADDED_UNICODE_SMP:Ljava/util/UUID;

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SUPPORTED_UUIDS:Ljava/util/List;

    .line 73
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sput-object v3, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 127
    invoke-static {}, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->getDefaultOptions()Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;-><init>(Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;)V
    .registers 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_9

    .line 132
    invoke-static {}, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->getDefaultOptions()Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;

    move-result-object p1

    .line 135
    :cond_9
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->deserializationOptions:Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;

    return-void
.end method

.method private deserializeSets([CILjava/util/List;Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CI",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/misc/IntervalSet;",
            ">;",
            "Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;",
            ")I"
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 556
    aget-char p2, p1, p2

    invoke-static {p2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, p2, :cond_4b

    .line 558
    aget-char v3, p1, v0

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    .line 560
    new-instance v4, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v5, v1, [I

    invoke-direct {v4, v5}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 561
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v0, 0x2

    .line 563
    add-int/lit8 v0, v0, 0x1

    aget-char v0, p1, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    if-eqz v0, :cond_2c

    .line 565
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    :cond_2c
    move v0, v5

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v3, :cond_48

    .line 569
    invoke-interface {p4, p1, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->readUnicode([CI)I

    move-result v6

    .line 570
    invoke-interface {p4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->size()I

    move-result v7

    add-int/2addr v0, v7

    .line 571
    invoke-interface {p4, p1, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->readUnicode([CI)I

    move-result v7

    .line 572
    invoke-interface {p4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->size()I

    move-result v8

    add-int/2addr v0, v8

    .line 573
    invoke-virtual {v4, v6, v7}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_4b
    return v0
.end method

.method static getUnicodeDeserializer(Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;
    .registers 2

    .line 96
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;->UNICODE_BMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    if-ne p0, v0, :cond_a

    .line 97
    new-instance p0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$1;

    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$1;-><init>()V

    return-object p0

    .line 110
    :cond_a
    new-instance p0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$2;

    invoke-direct {p0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$2;-><init>()V

    return-object p0
.end method

.method protected static isFeatureSupported(Ljava/util/UUID;Ljava/util/UUID;)Z
    .registers 4

    .line 152
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SUPPORTED_UUIDS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v1, 0x0

    if-gez p0, :cond_a

    return v1

    .line 157
    :cond_a
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lt p1, p0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method protected static toInt(C)I
    .registers 1

    return p0
.end method

.method protected static toInt32([CI)I
    .registers 3

    .line 684
    aget-char v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget-char p0, p0, p1

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method protected static toLong([CI)J
    .registers 6

    .line 688
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt32([CI)I

    move-result v0

    int-to-long v0, v0

    .line 689
    add-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt32([CI)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method protected static toUUID([CI)Ljava/util/UUID;
    .registers 5

    .line 693
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toLong([CI)J

    move-result-wide v0

    .line 694
    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toLong([CI)J

    move-result-wide p0

    .line 695
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, p0, p1, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    return-object v2
.end method


# virtual methods
.method protected checkCondition(Z)V
    .registers 3

    .line 670
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(ZLjava/lang/String;)V

    return-void
.end method

.method protected checkCondition(ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    .line 675
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deserialize([C)Lorg/antlr/v4/runtime/atn/ATN;
    .registers 23

    .line 162
    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [C

    const/4 v11, 0x1

    const/4 v0, 0x1

    .line 179
    :goto_b
    array-length v1, v10

    const/4 v2, 0x2

    if-ge v0, v1, :cond_18

    .line 180
    aget-char v1, v10, v0

    sub-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 184
    :cond_18
    const/4 v12, 0x0

    aget-char v0, v10, v12

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    .line 185
    sget v1, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_VERSION:I

    if-ne v0, v1, :cond_588

    .line 190
    invoke-static {v10, v11}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toUUID([CI)Ljava/util/UUID;

    move-result-object v0

    .line 192
    sget-object v1, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SUPPORTED_UUIDS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_563

    .line 197
    sget-object v1, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->ADDED_PRECEDENCE_TRANSITIONS:Ljava/util/UUID;

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->isFeatureSupported(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v1

    .line 198
    sget-object v2, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->ADDED_LEXER_ACTIONS:Ljava/util/UUID;

    invoke-static {v2, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->isFeatureSupported(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v13

    .line 200
    invoke-static {}, Lorg/antlr/v4/runtime/atn/ATNType;->values()[Lorg/antlr/v4/runtime/atn/ATNType;

    move-result-object v2

    const/16 v3, 0x9

    aget-char v3, v10, v3

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    aget-object v2, v2, v3

    .line 201
    const/16 v3, 0xa

    aget-char v3, v10, v3

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    .line 202
    new-instance v14, Lorg/antlr/v4/runtime/atn/ATN;

    invoke-direct {v14, v2, v3}, Lorg/antlr/v4/runtime/atn/ATN;-><init>(Lorg/antlr/v4/runtime/atn/ATNType;I)V

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    const/16 v4, 0xb

    aget-char v4, v10, v4

    invoke-static {v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v4

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/16 v7, 0xc

    :goto_6d
    const/4 v15, 0x0

    const v8, 0xffff

    const/16 v16, -0x1

    if-ge v6, v4, :cond_d5

    add-int/lit8 v17, v7, 0x1

    .line 211
    aget-char v18, v10, v7

    invoke-static/range {v18 .. v18}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v12

    if-nez v12, :cond_85

    .line 214
    invoke-virtual {v14, v15}, Lorg/antlr/v4/runtime/atn/ATN;->addState(Lorg/antlr/v4/runtime/atn/ATNState;)V

    move/from16 v7, v17

    goto :goto_d0

    :cond_85
    add-int/lit8 v15, v7, 0x2

    .line 218
    aget-char v17, v10, v17

    invoke-static/range {v17 .. v17}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v11

    if-ne v11, v8, :cond_90

    const/4 v11, -0x1

    .line 223
    :cond_90
    invoke-virtual {v9, v12, v11}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->stateFactory(II)Lorg/antlr/v4/runtime/atn/ATNState;

    move-result-object v8

    if-ne v12, v5, :cond_af

    add-int/lit8 v7, v7, 0x3

    .line 225
    aget-char v11, v10, v15

    invoke-static {v11}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v11

    .line 226
    new-instance v12, Lorg/antlr/v4/runtime/misc/Pair;

    move-object v15, v8

    check-cast v15, Lorg/antlr/v4/runtime/atn/LoopEndState;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v12, v15, v11}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v15, v7

    goto :goto_cb

    .line 228
    :cond_af
    instance-of v11, v8, Lorg/antlr/v4/runtime/atn/BlockStartState;

    if-eqz v11, :cond_cc

    add-int/lit8 v7, v7, 0x3

    .line 229
    aget-char v11, v10, v15

    invoke-static {v11}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v11

    .line 230
    new-instance v12, Lorg/antlr/v4/runtime/misc/Pair;

    move-object v15, v8

    check-cast v15, Lorg/antlr/v4/runtime/atn/BlockStartState;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v12, v15, v11}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v15, v7

    .line 226
    :goto_cb
    nop

    .line 232
    :cond_cc
    invoke-virtual {v14, v8}, Lorg/antlr/v4/runtime/atn/ATN;->addState(Lorg/antlr/v4/runtime/atn/ATNState;)V

    move v7, v15

    :goto_d0
    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_6d

    .line 236
    :cond_d5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/misc/Pair;

    .line 237
    iget-object v5, v4, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    check-cast v5, Lorg/antlr/v4/runtime/atn/LoopEndState;

    iget-object v6, v14, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget-object v4, v4, Lorg/antlr/v4/runtime/misc/Pair;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/atn/ATNState;

    iput-object v4, v5, Lorg/antlr/v4/runtime/atn/LoopEndState;->loopBackState:Lorg/antlr/v4/runtime/atn/ATNState;

    goto :goto_d9

    .line 240
    :cond_fc
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_100
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_123

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/misc/Pair;

    .line 241
    iget-object v4, v3, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    check-cast v4, Lorg/antlr/v4/runtime/atn/BlockStartState;

    iget-object v5, v14, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget-object v3, v3, Lorg/antlr/v4/runtime/misc/Pair;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/atn/BlockEndState;

    iput-object v3, v4, Lorg/antlr/v4/runtime/atn/BlockStartState;->endState:Lorg/antlr/v4/runtime/atn/BlockEndState;

    goto :goto_100

    .line 244
    :cond_123
    aget-char v2, v10, v7

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v7, v3

    const/4 v4, 0x0

    :goto_12c
    if-ge v4, v2, :cond_144

    .line 246
    aget-char v5, v10, v7

    invoke-static {v5}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v5

    .line 247
    iget-object v6, v14, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/antlr/v4/runtime/atn/DecisionState;

    iput-boolean v3, v5, Lorg/antlr/v4/runtime/atn/DecisionState;->nonGreedy:Z

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x1

    goto :goto_12c

    :cond_144
    if-eqz v1, :cond_167

    .line 251
    aget-char v1, v10, v7

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v1

    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    :goto_14f
    if-ge v2, v1, :cond_167

    .line 253
    aget-char v3, v10, v7

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    .line 254
    iget-object v4, v14, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/atn/RuleStartState;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/antlr/v4/runtime/atn/RuleStartState;->isLeftRecursiveRule:Z

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_14f

    .line 261
    :cond_167
    aget-char v1, v10, v7

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v1

    .line 262
    iget-object v2, v14, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v3, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v2, v3, :cond_177

    .line 263
    new-array v2, v1, [I

    iput-object v2, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    .line 266
    :cond_177
    new-array v2, v1, [Lorg/antlr/v4/runtime/atn/RuleStartState;

    iput-object v2, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    const/4 v2, 0x1

    add-int/2addr v7, v2

    const/4 v2, 0x0

    :goto_17e
    if-ge v2, v1, :cond_1bf

    add-int/lit8 v3, v7, 0x1

    .line 268
    aget-char v4, v10, v7

    invoke-static {v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v4

    .line 269
    iget-object v5, v14, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/atn/RuleStartState;

    .line 270
    iget-object v5, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    aput-object v4, v5, v2

    .line 271
    iget-object v4, v14, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v5, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v4, v5, :cond_1bb

    add-int/lit8 v4, v7, 0x2

    .line 272
    aget-char v3, v10, v3

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    if-ne v3, v8, :cond_1a5

    const/4 v3, -0x1

    .line 277
    :cond_1a5
    iget-object v5, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    aput v3, v5, v2

    .line 279
    sget-object v3, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->ADDED_LEXER_ACTIONS:Ljava/util/UUID;

    invoke-static {v3, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->isFeatureSupported(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v3

    if-nez v3, :cond_1b9

    add-int/lit8 v7, v7, 0x3

    .line 282
    aget-char v3, v10, v4

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    goto :goto_1bc

    :cond_1b9
    move v7, v4

    goto :goto_1bc

    :cond_1bb
    move v7, v3

    :goto_1bc
    add-int/lit8 v2, v2, 0x1

    goto :goto_17e

    .line 287
    :cond_1bf
    new-array v1, v1, [Lorg/antlr/v4/runtime/atn/RuleStopState;

    iput-object v1, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStopState:[Lorg/antlr/v4/runtime/atn/RuleStopState;

    .line 288
    iget-object v1, v14, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ec

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 289
    instance-of v3, v2, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-nez v3, :cond_1da

    goto :goto_1c9

    .line 293
    :cond_1da
    move-object v3, v2

    check-cast v3, Lorg/antlr/v4/runtime/atn/RuleStopState;

    .line 294
    iget-object v4, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStopState:[Lorg/antlr/v4/runtime/atn/RuleStopState;

    iget v5, v2, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aput-object v3, v4, v5

    .line 295
    iget-object v4, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object v2, v4, v2

    iput-object v3, v2, Lorg/antlr/v4/runtime/atn/RuleStartState;->stopState:Lorg/antlr/v4/runtime/atn/RuleStopState;

    goto :goto_1c9

    .line 301
    :cond_1ec
    aget-char v1, v10, v7

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v7, v2

    const/4 v2, 0x0

    :goto_1f5
    if-ge v2, v1, :cond_20f

    .line 303
    aget-char v3, v10, v7

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    .line 304
    iget-object v4, v14, Lorg/antlr/v4/runtime/atn/ATN;->modeToStartState:Ljava/util/List;

    iget-object v5, v14, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/atn/TokensStartState;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1f5

    .line 310
    :cond_20f
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 313
    sget-object v1, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;->UNICODE_BMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->getUnicodeDeserializer(Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;

    move-result-object v1

    invoke-direct {v9, v10, v7, v11, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->deserializeSets([CILjava/util/List;Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I

    move-result v1

    .line 317
    sget-object v2, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->ADDED_UNICODE_SMP:Ljava/util/UUID;

    invoke-static {v2, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->isFeatureSupported(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_230

    .line 318
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;->UNICODE_SMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->getUnicodeDeserializer(Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;

    move-result-object v0

    invoke-direct {v9, v10, v1, v11, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->deserializeSets([CILjava/util/List;Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I

    move-result v1

    .line 324
    :cond_230
    aget-char v0, v10, v1

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v12

    const/4 v0, 0x1

    add-int/2addr v1, v0

    move/from16 v17, v1

    const/4 v7, 0x0

    :goto_23b
    if-ge v7, v12, :cond_296

    .line 326
    aget-char v0, v10, v17

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v6

    .line 327
    add-int/lit8 v0, v17, 0x1

    aget-char v0, v10, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v4

    .line 328
    add-int/lit8 v0, v17, 0x2

    aget-char v0, v10, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v2

    .line 329
    add-int/lit8 v0, v17, 0x3

    aget-char v0, v10, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v5

    .line 330
    add-int/lit8 v0, v17, 0x4

    aget-char v0, v10, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v19

    .line 331
    add-int/lit8 v0, v17, 0x5

    aget-char v0, v10, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v20

    .line 332
    move-object/from16 v0, p0

    move-object v1, v14

    move v3, v6

    move v15, v6

    move/from16 v6, v19

    move/from16 v19, v7

    move/from16 v7, v20

    move/from16 v20, v12

    const v12, 0xffff

    move-object v8, v11

    invoke-virtual/range {v0 .. v8}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->edgeFactory(Lorg/antlr/v4/runtime/atn/ATN;IIIIIILjava/util/List;)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v0

    .line 337
    iget-object v1, v14, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 338
    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/atn/ATNState;->addTransition(Lorg/antlr/v4/runtime/atn/Transition;)V

    add-int/lit8 v17, v17, 0x6

    add-int/lit8 v7, v19, 0x1

    move/from16 v12, v20

    const v8, 0xffff

    const/4 v15, 0x0

    goto :goto_23b

    .line 343
    :cond_296
    const v12, 0xffff

    iget-object v0, v14, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/ATNState;

    const/4 v2, 0x0

    .line 344
    :goto_2ac
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v3

    if-ge v2, v3, :cond_29f

    .line 345
    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v3

    .line 346
    instance-of v4, v3, Lorg/antlr/v4/runtime/atn/RuleTransition;

    if-nez v4, :cond_2bb

    goto :goto_2e5

    .line 350
    :cond_2bb
    check-cast v3, Lorg/antlr/v4/runtime/atn/RuleTransition;

    .line 352
    iget-object v4, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    iget-object v5, v3, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v5, v5, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object v4, v4, v5

    iget-boolean v4, v4, Lorg/antlr/v4/runtime/atn/RuleStartState;->isLeftRecursiveRule:Z

    if-eqz v4, :cond_2d2

    .line 353
    iget v4, v3, Lorg/antlr/v4/runtime/atn/RuleTransition;->precedence:I

    if-nez v4, :cond_2d2

    .line 354
    iget-object v4, v3, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v4, v4, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    goto :goto_2d3

    :cond_2d2
    const/4 v4, -0x1

    .line 358
    :goto_2d3
    new-instance v5, Lorg/antlr/v4/runtime/atn/EpsilonTransition;

    iget-object v6, v3, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v5, v6, v4}, Lorg/antlr/v4/runtime/atn/EpsilonTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V

    .line 359
    iget-object v4, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStopState:[Lorg/antlr/v4/runtime/atn/RuleStopState;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v3, v3, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object v3, v4, v3

    invoke-virtual {v3, v5}, Lorg/antlr/v4/runtime/atn/RuleStopState;->addTransition(Lorg/antlr/v4/runtime/atn/Transition;)V

    :goto_2e5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2ac

    .line 363
    :cond_2e8
    iget-object v0, v14, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2ee
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_358

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 364
    instance-of v2, v1, Lorg/antlr/v4/runtime/atn/BlockStartState;

    if-eqz v2, :cond_31c

    .line 366
    move-object v2, v1

    check-cast v2, Lorg/antlr/v4/runtime/atn/BlockStartState;

    iget-object v3, v2, Lorg/antlr/v4/runtime/atn/BlockStartState;->endState:Lorg/antlr/v4/runtime/atn/BlockEndState;

    if-eqz v3, :cond_316

    .line 371
    iget-object v3, v2, Lorg/antlr/v4/runtime/atn/BlockStartState;->endState:Lorg/antlr/v4/runtime/atn/BlockEndState;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/BlockEndState;->startState:Lorg/antlr/v4/runtime/atn/BlockStartState;

    if-nez v3, :cond_310

    .line 375
    iget-object v3, v2, Lorg/antlr/v4/runtime/atn/BlockStartState;->endState:Lorg/antlr/v4/runtime/atn/BlockEndState;

    iput-object v2, v3, Lorg/antlr/v4/runtime/atn/BlockEndState;->startState:Lorg/antlr/v4/runtime/atn/BlockStartState;

    goto :goto_31c

    .line 372
    :cond_310
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 367
    :cond_316
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 378
    :cond_31c
    :goto_31c
    instance-of v2, v1, Lorg/antlr/v4/runtime/atn/PlusLoopbackState;

    if-eqz v2, :cond_33a

    .line 379
    check-cast v1, Lorg/antlr/v4/runtime/atn/PlusLoopbackState;

    const/4 v2, 0x0

    .line 380
    :goto_323
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/PlusLoopbackState;->getNumberOfTransitions()I

    move-result v3

    if-ge v2, v3, :cond_2ee

    .line 381
    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/atn/PlusLoopbackState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v3

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 382
    instance-of v4, v3, Lorg/antlr/v4/runtime/atn/PlusBlockStartState;

    if-eqz v4, :cond_337

    .line 383
    check-cast v3, Lorg/antlr/v4/runtime/atn/PlusBlockStartState;

    iput-object v1, v3, Lorg/antlr/v4/runtime/atn/PlusBlockStartState;->loopBackState:Lorg/antlr/v4/runtime/atn/PlusLoopbackState;

    :cond_337
    add-int/lit8 v2, v2, 0x1

    goto :goto_323

    .line 387
    :cond_33a
    instance-of v2, v1, Lorg/antlr/v4/runtime/atn/StarLoopbackState;

    if-eqz v2, :cond_2ee

    .line 388
    check-cast v1, Lorg/antlr/v4/runtime/atn/StarLoopbackState;

    const/4 v2, 0x0

    .line 389
    :goto_341
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/StarLoopbackState;->getNumberOfTransitions()I

    move-result v3

    if-ge v2, v3, :cond_2ee

    .line 390
    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/atn/StarLoopbackState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v3

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 391
    instance-of v4, v3, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    if-eqz v4, :cond_355

    .line 392
    check-cast v3, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    iput-object v1, v3, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->loopBackState:Lorg/antlr/v4/runtime/atn/StarLoopbackState;

    :cond_355
    add-int/lit8 v2, v2, 0x1

    goto :goto_341

    :cond_358
    add-int/lit8 v0, v17, 0x1

    .line 401
    aget-char v1, v10, v17

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v1

    const/4 v2, 0x1

    :goto_361
    if-gt v2, v1, :cond_37f

    .line 403
    aget-char v3, v10, v0

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    .line 404
    iget-object v4, v14, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/atn/DecisionState;

    .line 405
    iget-object v4, v14, Lorg/antlr/v4/runtime/atn/ATN;->decisionToState:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    add-int/lit8 v4, v2, -0x1

    iput v4, v3, Lorg/antlr/v4/runtime/atn/DecisionState;->decision:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_361

    .line 412
    :cond_37f
    iget-object v1, v14, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v2, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v1, v2, :cond_41f

    if-eqz v13, :cond_3c9

    add-int/lit8 v1, v0, 0x1

    .line 414
    aget-char v0, v10, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    new-array v0, v0, [Lorg/antlr/v4/runtime/atn/LexerAction;

    iput-object v0, v14, Lorg/antlr/v4/runtime/atn/ATN;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    const/4 v0, 0x0

    .line 415
    :goto_394
    iget-object v2, v14, Lorg/antlr/v4/runtime/atn/ATN;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    array-length v2, v2

    if-ge v0, v2, :cond_41f

    .line 416
    invoke-static {}, Lorg/antlr/v4/runtime/atn/LexerActionType;->values()[Lorg/antlr/v4/runtime/atn/LexerActionType;

    move-result-object v2

    aget-char v3, v10, v1

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    aget-object v2, v2, v3

    .line 417
    add-int/lit8 v3, v1, 0x1

    aget-char v3, v10, v3

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    if-ne v3, v12, :cond_3b0

    const/4 v3, -0x1

    :cond_3b0
    add-int/lit8 v4, v1, 0x3

    .line 422
    add-int/lit8 v1, v1, 0x2

    aget-char v1, v10, v1

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v1

    if-ne v1, v12, :cond_3bd

    const/4 v1, -0x1

    .line 427
    :cond_3bd
    invoke-virtual {v9, v2, v3, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->lexerActionFactory(Lorg/antlr/v4/runtime/atn/LexerActionType;II)Lorg/antlr/v4/runtime/atn/LexerAction;

    move-result-object v1

    .line 429
    iget-object v2, v14, Lorg/antlr/v4/runtime/atn/ATN;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_394

    .line 436
    :cond_3c9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    iget-object v1, v14, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3d4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_411

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/ATNState;

    const/4 v3, 0x0

    .line 438
    :goto_3e1
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v4

    if-ge v3, v4, :cond_3d4

    .line 439
    invoke-virtual {v2, v3}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v4

    .line 440
    instance-of v5, v4, Lorg/antlr/v4/runtime/atn/ActionTransition;

    if-nez v5, :cond_3f0

    goto :goto_40e

    .line 444
    :cond_3f0
    move-object v5, v4

    check-cast v5, Lorg/antlr/v4/runtime/atn/ActionTransition;

    iget v6, v5, Lorg/antlr/v4/runtime/atn/ActionTransition;->ruleIndex:I

    .line 445
    iget v5, v5, Lorg/antlr/v4/runtime/atn/ActionTransition;->actionIndex:I

    .line 446
    new-instance v7, Lorg/antlr/v4/runtime/atn/LexerCustomAction;

    invoke-direct {v7, v6, v5}, Lorg/antlr/v4/runtime/atn/LexerCustomAction;-><init>(II)V

    .line 447
    new-instance v5, Lorg/antlr/v4/runtime/atn/ActionTransition;

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x0

    invoke-direct {v5, v4, v6, v8, v10}, Lorg/antlr/v4/runtime/atn/ActionTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;IIZ)V

    invoke-virtual {v2, v3, v5}, Lorg/antlr/v4/runtime/atn/ATNState;->setTransition(ILorg/antlr/v4/runtime/atn/Transition;)V

    .line 448
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_40e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e1

    .line 452
    :cond_411
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/antlr/v4/runtime/atn/LexerAction;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/LexerAction;

    iput-object v0, v14, Lorg/antlr/v4/runtime/atn/ATN;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    .line 456
    :cond_41f
    invoke-virtual {v9, v14}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->markPrecedenceDecisions(Lorg/antlr/v4/runtime/atn/ATN;)V

    .line 458
    iget-object v0, v9, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->deserializationOptions:Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->isVerifyATN()Z

    move-result v0

    if-eqz v0, :cond_42d

    .line 459
    invoke-virtual {v9, v14}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->verifyATN(Lorg/antlr/v4/runtime/atn/ATN;)V

    .line 462
    :cond_42d
    iget-object v0, v9, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->deserializationOptions:Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->isGenerateRuleBypassTransitions()Z

    move-result v0

    if-eqz v0, :cond_562

    iget-object v0, v14, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v1, Lorg/antlr/v4/runtime/atn/ATNType;->PARSER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v0, v1, :cond_562

    .line 463
    iget-object v0, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    const/4 v0, 0x0

    .line 464
    :goto_443
    iget-object v1, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    array-length v1, v1

    if-ge v0, v1, :cond_454

    .line 465
    iget-object v1, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    iget v2, v14, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_443

    :cond_454
    const/4 v0, 0x0

    .line 468
    :goto_455
    iget-object v1, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    array-length v1, v1

    if-ge v0, v1, :cond_557

    .line 469
    new-instance v1, Lorg/antlr/v4/runtime/atn/BasicBlockStartState;

    invoke-direct {v1}, Lorg/antlr/v4/runtime/atn/BasicBlockStartState;-><init>()V

    .line 470
    iput v0, v1, Lorg/antlr/v4/runtime/atn/BasicBlockStartState;->ruleIndex:I

    .line 471
    invoke-virtual {v14, v1}, Lorg/antlr/v4/runtime/atn/ATN;->addState(Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 473
    new-instance v2, Lorg/antlr/v4/runtime/atn/BlockEndState;

    invoke-direct {v2}, Lorg/antlr/v4/runtime/atn/BlockEndState;-><init>()V

    .line 474
    iput v0, v2, Lorg/antlr/v4/runtime/atn/BlockEndState;->ruleIndex:I

    .line 475
    invoke-virtual {v14, v2}, Lorg/antlr/v4/runtime/atn/ATN;->addState(Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 477
    iput-object v2, v1, Lorg/antlr/v4/runtime/atn/BasicBlockStartState;->endState:Lorg/antlr/v4/runtime/atn/BlockEndState;

    .line 478
    invoke-virtual {v14, v1}, Lorg/antlr/v4/runtime/atn/ATN;->defineDecisionState(Lorg/antlr/v4/runtime/atn/DecisionState;)I

    .line 480
    iput-object v1, v2, Lorg/antlr/v4/runtime/atn/BlockEndState;->startState:Lorg/antlr/v4/runtime/atn/BlockStartState;

    .line 484
    iget-object v3, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lorg/antlr/v4/runtime/atn/RuleStartState;->isLeftRecursiveRule:Z

    if-eqz v3, :cond_4d0

    .line 487
    iget-object v3, v14, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_483
    :goto_483
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4ba

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 488
    iget v5, v4, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    if-eq v5, v0, :cond_494

    goto :goto_483

    .line 492
    :cond_494
    instance-of v5, v4, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    if-nez v5, :cond_499

    goto :goto_483

    .line 496
    :cond_499
    invoke-virtual {v4}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v5

    iget-object v5, v5, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 497
    instance-of v6, v5, Lorg/antlr/v4/runtime/atn/LoopEndState;

    if-nez v6, :cond_4aa

    goto :goto_483

    .line 501
    :cond_4aa
    iget-boolean v6, v5, Lorg/antlr/v4/runtime/atn/ATNState;->epsilonOnlyTransitions:Z

    if-eqz v6, :cond_483

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v5

    iget-object v5, v5, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v5, v5, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v5, :cond_483

    goto :goto_4bb

    :cond_4ba
    const/4 v4, 0x0

    :goto_4bb
    if-eqz v4, :cond_4c8

    .line 511
    move-object v3, v4

    check-cast v3, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->loopBackState:Lorg/antlr/v4/runtime/atn/StarLoopbackState;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/antlr/v4/runtime/atn/StarLoopbackState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v3

    goto :goto_4d5

    .line 508
    :cond_4c8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Couldn\'t identify final state of the precedence rule prefix section."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_4d0
    iget-object v3, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStopState:[Lorg/antlr/v4/runtime/atn/RuleStopState;

    aget-object v4, v3, v0

    const/4 v3, 0x0

    .line 518
    :goto_4d5
    iget-object v5, v14, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4db
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_503

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 519
    iget-object v6, v6, Lorg/antlr/v4/runtime/atn/ATNState;->transitions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4ed
    :goto_4ed
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4db

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/antlr/v4/runtime/atn/Transition;

    if-ne v7, v3, :cond_4fc

    goto :goto_4ed

    .line 524
    :cond_4fc
    iget-object v8, v7, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    if-ne v8, v4, :cond_4ed

    .line 525
    iput-object v2, v7, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    goto :goto_4ed

    .line 531
    :cond_503
    :goto_503
    iget-object v3, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/antlr/v4/runtime/atn/RuleStartState;->getNumberOfTransitions()I

    move-result v3

    if-lez v3, :cond_523

    .line 532
    iget-object v3, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    aget-object v3, v3, v0

    iget-object v5, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/RuleStartState;->getNumberOfTransitions()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lorg/antlr/v4/runtime/atn/RuleStartState;->removeTransition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v3

    .line 533
    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/atn/BasicBlockStartState;->addTransition(Lorg/antlr/v4/runtime/atn/Transition;)V

    goto :goto_503

    .line 537
    :cond_523
    iget-object v3, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    aget-object v3, v3, v0

    new-instance v5, Lorg/antlr/v4/runtime/atn/EpsilonTransition;

    invoke-direct {v5, v1}, Lorg/antlr/v4/runtime/atn/EpsilonTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    invoke-virtual {v3, v5}, Lorg/antlr/v4/runtime/atn/RuleStartState;->addTransition(Lorg/antlr/v4/runtime/atn/Transition;)V

    .line 538
    new-instance v3, Lorg/antlr/v4/runtime/atn/EpsilonTransition;

    invoke-direct {v3, v4}, Lorg/antlr/v4/runtime/atn/EpsilonTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    invoke-virtual {v2, v3}, Lorg/antlr/v4/runtime/atn/BlockEndState;->addTransition(Lorg/antlr/v4/runtime/atn/Transition;)V

    .line 540
    new-instance v3, Lorg/antlr/v4/runtime/atn/BasicState;

    invoke-direct {v3}, Lorg/antlr/v4/runtime/atn/BasicState;-><init>()V

    .line 541
    invoke-virtual {v14, v3}, Lorg/antlr/v4/runtime/atn/ATN;->addState(Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 542
    new-instance v4, Lorg/antlr/v4/runtime/atn/AtomTransition;

    iget-object v5, v14, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    aget v5, v5, v0

    invoke-direct {v4, v2, v5}, Lorg/antlr/v4/runtime/atn/AtomTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V

    invoke-virtual {v3, v4}, Lorg/antlr/v4/runtime/atn/ATNState;->addTransition(Lorg/antlr/v4/runtime/atn/Transition;)V

    .line 543
    new-instance v2, Lorg/antlr/v4/runtime/atn/EpsilonTransition;

    invoke-direct {v2, v3}, Lorg/antlr/v4/runtime/atn/EpsilonTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/atn/BasicBlockStartState;->addTransition(Lorg/antlr/v4/runtime/atn/Transition;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_455

    .line 546
    :cond_557
    iget-object v0, v9, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->deserializationOptions:Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->isVerifyATN()Z

    move-result v0

    if-eqz v0, :cond_562

    .line 548
    invoke-virtual {v9, v14}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->verifyATN(Lorg/antlr/v4/runtime/atn/ATN;)V

    :cond_562
    return-object v14

    .line 193
    :cond_563
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_UUID:Ljava/util/UUID;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Could not deserialize ATN with UUID %s (expected %s or a legacy UUID)."

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/io/InvalidClassException;

    const-class v3, Lorg/antlr/v4/runtime/atn/ATN;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 186
    :cond_588
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v0, "Could not deserialize ATN with version %d (expected %d)."

    invoke-static {v3, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/io/InvalidClassException;

    const-class v3, Lorg/antlr/v4/runtime/atn/ATN;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5b4

    :goto_5b3
    throw v1

    :goto_5b4
    goto :goto_5b3
.end method

.method protected edgeFactory(Lorg/antlr/v4/runtime/atn/ATN;IIIIIILjava/util/List;)Lorg/antlr/v4/runtime/atn/Transition;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATN;",
            "IIIIII",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/misc/IntervalSet;",
            ">;)",
            "Lorg/antlr/v4/runtime/atn/Transition;"
        }
    .end annotation

    .line 704
    iget-object p3, p1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/antlr/v4/runtime/atn/ATNState;

    const/4 p4, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_7c

    .line 737
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The specified transition type is not valid."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 721
    :pswitch_16  #0xa
    new-instance p1, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;

    invoke-direct {p1, p3, p5}, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V

    return-object p1

    .line 734
    :pswitch_1c  #0x9
    new-instance p1, Lorg/antlr/v4/runtime/atn/WildcardTransition;

    invoke-direct {p1, p3}, Lorg/antlr/v4/runtime/atn/WildcardTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    return-object p1

    .line 733
    :pswitch_22  #0x8
    new-instance p1, Lorg/antlr/v4/runtime/atn/NotSetTransition;

    invoke-interface {p8, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-direct {p1, p3, p2}, Lorg/antlr/v4/runtime/atn/NotSetTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/misc/IntervalSet;)V

    return-object p1

    .line 732
    :pswitch_2e  #0x7
    new-instance p1, Lorg/antlr/v4/runtime/atn/SetTransition;

    invoke-interface {p8, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-direct {p1, p3, p2}, Lorg/antlr/v4/runtime/atn/SetTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/misc/IntervalSet;)V

    return-object p1

    .line 730
    :pswitch_3a  #0x6
    if-eqz p7, :cond_3d

    const/4 p4, 0x1

    :cond_3d
    new-instance p1, Lorg/antlr/v4/runtime/atn/ActionTransition;

    invoke-direct {p1, p3, p5, p6, p4}, Lorg/antlr/v4/runtime/atn/ActionTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;IIZ)V

    return-object p1

    :pswitch_43  #0x5
    if-eqz p7, :cond_4b

    .line 724
    new-instance p1, Lorg/antlr/v4/runtime/atn/AtomTransition;

    invoke-direct {p1, p3, v0}, Lorg/antlr/v4/runtime/atn/AtomTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V

    return-object p1

    .line 727
    :cond_4b
    new-instance p1, Lorg/antlr/v4/runtime/atn/AtomTransition;

    invoke-direct {p1, p3, p5}, Lorg/antlr/v4/runtime/atn/AtomTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V

    return-object p1

    .line 718
    :pswitch_51  #0x4
    if-eqz p7, :cond_54

    const/4 p4, 0x1

    :cond_54
    new-instance p1, Lorg/antlr/v4/runtime/atn/PredicateTransition;

    invoke-direct {p1, p3, p5, p6, p4}, Lorg/antlr/v4/runtime/atn/PredicateTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;IIZ)V

    return-object p1

    .line 715
    :pswitch_5a  #0x3
    new-instance p2, Lorg/antlr/v4/runtime/atn/RuleTransition;

    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/RuleStartState;

    invoke-direct {p2, p1, p6, p7, p3}, Lorg/antlr/v4/runtime/atn/RuleTransition;-><init>(Lorg/antlr/v4/runtime/atn/RuleStartState;IILorg/antlr/v4/runtime/atn/ATNState;)V

    return-object p2

    :pswitch_68  #0x2
    if-eqz p7, :cond_70

    .line 709
    new-instance p1, Lorg/antlr/v4/runtime/atn/RangeTransition;

    invoke-direct {p1, p3, v0, p6}, Lorg/antlr/v4/runtime/atn/RangeTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;II)V

    return-object p1

    .line 712
    :cond_70
    new-instance p1, Lorg/antlr/v4/runtime/atn/RangeTransition;

    invoke-direct {p1, p3, p5, p6}, Lorg/antlr/v4/runtime/atn/RangeTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;II)V

    return-object p1

    .line 706
    :pswitch_76  #0x1
    new-instance p1, Lorg/antlr/v4/runtime/atn/EpsilonTransition;

    invoke-direct {p1, p3}, Lorg/antlr/v4/runtime/atn/EpsilonTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    return-object p1

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_76  #00000001
        :pswitch_68  #00000002
        :pswitch_5a  #00000003
        :pswitch_51  #00000004
        :pswitch_43  #00000005
        :pswitch_3a  #00000006
        :pswitch_2e  #00000007
        :pswitch_22  #00000008
        :pswitch_1c  #00000009
        :pswitch_16  #0000000a
    .end packed-switch
.end method

.method protected lexerActionFactory(Lorg/antlr/v4/runtime/atn/LexerActionType;II)Lorg/antlr/v4/runtime/atn/LexerAction;
    .registers 6

    .line 766
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$3;->$SwitchMap$org$antlr$v4$runtime$atn$LexerActionType:[I

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/LexerActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 792
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "The specified lexer action type %d is not valid."

    invoke-static {p2, p1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 793
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 789
    :pswitch_21  #0x8
    new-instance p1, Lorg/antlr/v4/runtime/atn/LexerTypeAction;

    invoke-direct {p1, p2}, Lorg/antlr/v4/runtime/atn/LexerTypeAction;-><init>(I)V

    return-object p1

    .line 786
    :pswitch_27  #0x7
    sget-object p1, Lorg/antlr/v4/runtime/atn/LexerSkipAction;->INSTANCE:Lorg/antlr/v4/runtime/atn/LexerSkipAction;

    return-object p1

    .line 783
    :pswitch_2a  #0x6
    new-instance p1, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;

    invoke-direct {p1, p2}, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;-><init>(I)V

    return-object p1

    .line 780
    :pswitch_30  #0x5
    sget-object p1, Lorg/antlr/v4/runtime/atn/LexerPopModeAction;->INSTANCE:Lorg/antlr/v4/runtime/atn/LexerPopModeAction;

    return-object p1

    .line 777
    :pswitch_33  #0x4
    sget-object p1, Lorg/antlr/v4/runtime/atn/LexerMoreAction;->INSTANCE:Lorg/antlr/v4/runtime/atn/LexerMoreAction;

    return-object p1

    .line 774
    :pswitch_36  #0x3
    new-instance p1, Lorg/antlr/v4/runtime/atn/LexerModeAction;

    invoke-direct {p1, p2}, Lorg/antlr/v4/runtime/atn/LexerModeAction;-><init>(I)V

    return-object p1

    .line 771
    :pswitch_3c  #0x2
    new-instance p1, Lorg/antlr/v4/runtime/atn/LexerCustomAction;

    invoke-direct {p1, p2, p3}, Lorg/antlr/v4/runtime/atn/LexerCustomAction;-><init>(II)V

    return-object p1

    .line 768
    :pswitch_42  #0x1
    new-instance p1, Lorg/antlr/v4/runtime/atn/LexerChannelAction;

    invoke-direct {p1, p2}, Lorg/antlr/v4/runtime/atn/LexerChannelAction;-><init>(I)V

    return-object p1

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_42  #00000001
        :pswitch_3c  #00000002
        :pswitch_36  #00000003
        :pswitch_33  #00000004
        :pswitch_30  #00000005
        :pswitch_2a  #00000006
        :pswitch_27  #00000007
        :pswitch_21  #00000008
    .end packed-switch
.end method

.method protected markPrecedenceDecisions(Lorg/antlr/v4/runtime/atn/ATN;)V
    .registers 7

    .line 587
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 588
    instance-of v2, v1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    if-nez v2, :cond_17

    goto :goto_6

    .line 596
    :cond_17
    iget-object v2, p1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    iget v3, v1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lorg/antlr/v4/runtime/atn/RuleStartState;->isLeftRecursiveRule:Z

    if-eqz v2, :cond_6

    .line 597
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v2

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 598
    instance-of v4, v2, Lorg/antlr/v4/runtime/atn/LoopEndState;

    if-eqz v4, :cond_6

    .line 599
    iget-boolean v4, v2, Lorg/antlr/v4/runtime/atn/ATNState;->epsilonOnlyTransitions:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v2

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v2, v2, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v2, :cond_6

    .line 600
    check-cast v1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    iput-boolean v3, v1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->isPrecedenceDecision:Z

    goto :goto_6

    :cond_45
    return-void
.end method

.method protected stateFactory(II)Lorg/antlr/v4/runtime/atn/ATNState;
    .registers 5

    packed-switch p1, :pswitch_data_6a

    .line 757
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "The specified state type %d is not valid."

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 758
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 755
    :pswitch_1d  #0xc
    new-instance p1, Lorg/antlr/v4/runtime/atn/LoopEndState;

    invoke-direct {p1}, Lorg/antlr/v4/runtime/atn/LoopEndState;-><init>()V

    goto :goto_64

    .line 754
    :pswitch_23  #0xb
    new-instance p1, Lorg/antlr/v4/runtime/atn/PlusLoopbackState;

    invoke-direct {p1}, Lorg/antlr/v4/runtime/atn/PlusLoopbackState;-><init>()V

    goto :goto_64

    .line 753
    :pswitch_29  #0xa
    new-instance p1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    invoke-direct {p1}, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;-><init>()V

    goto :goto_64

    .line 752
    :pswitch_2f  #0x9
    new-instance p1, Lorg/antlr/v4/runtime/atn/StarLoopbackState;

    invoke-direct {p1}, Lorg/antlr/v4/runtime/atn/StarLoopbackState;-><init>()V

    goto :goto_64

    .line 751
    :pswitch_35  #0x8
    new-instance p1, Lorg/antlr/v4/runtime/atn/BlockEndState;

    invoke-direct {p1}, Lorg/antlr/v4/runtime/atn/BlockEndState;-><init>()V

    goto :goto_64

    .line 750
    :pswitch_3b  #0x7
    new-instance p1, Lorg/antlr/v4/runtime/atn/RuleStopState;

    invoke-direct {p1}, Lorg/antlr/v4/runtime/atn/RuleStopState;-><init>()V

    goto :goto_64

    .line 749
    :pswitch_41  #0x6
    new-instance p1, Lorg/antlr/v4/runtime/atn/TokensStartState;

    invoke-direct {p1}, Lorg/antlr/v4/runtime/atn/TokensStartState;-><init>()V

    goto :goto_64

    .line 748
    :pswitch_47  #0x5
    new-instance p1, Lorg/antlr/v4/runtime/atn/StarBlockStartState;

    invoke-direct {p1}, Lorg/antlr/v4/runtime/atn/StarBlockStartState;-><init>()V

    goto :goto_64

    .line 747
    :pswitch_4d  #0x4
    new-instance p1, Lorg/antlr/v4/runtime/atn/PlusBlockStartState;

    invoke-direct {p1}, Lorg/antlr/v4/runtime/atn/PlusBlockStartState;-><init>()V

    goto :goto_64

    .line 746
    :pswitch_53  #0x3
    new-instance p1, Lorg/antlr/v4/runtime/atn/BasicBlockStartState;

    invoke-direct {p1}, Lorg/antlr/v4/runtime/atn/BasicBlockStartState;-><init>()V

    goto :goto_64

    .line 745
    :pswitch_59  #0x2
    new-instance p1, Lorg/antlr/v4/runtime/atn/RuleStartState;

    invoke-direct {p1}, Lorg/antlr/v4/runtime/atn/RuleStartState;-><init>()V

    goto :goto_64

    .line 744
    :pswitch_5f  #0x1
    new-instance p1, Lorg/antlr/v4/runtime/atn/BasicState;

    invoke-direct {p1}, Lorg/antlr/v4/runtime/atn/BasicState;-><init>()V

    .line 761
    :goto_64
    iput p2, p1, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    return-object p1

    :pswitch_67  #0x0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_67  #00000000
        :pswitch_5f  #00000001
        :pswitch_59  #00000002
        :pswitch_53  #00000003
        :pswitch_4d  #00000004
        :pswitch_47  #00000005
        :pswitch_41  #00000006
        :pswitch_3b  #00000007
        :pswitch_35  #00000008
        :pswitch_2f  #00000009
        :pswitch_29  #0000000a
        :pswitch_23  #0000000b
        :pswitch_1d  #0000000c
    .end packed-switch
.end method

.method protected verifyATN(Lorg/antlr/v4/runtime/atn/ATN;)V
    .registers 8

    .line 609
    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    if-nez v0, :cond_15

    goto :goto_6

    .line 614
    :cond_15
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->onlyHasEpsilonTransitions()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_26

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v1

    if-gt v1, v3, :cond_24

    goto :goto_26

    :cond_24
    const/4 v1, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v1, 0x1

    :goto_27
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 616
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/PlusBlockStartState;

    if-eqz v1, :cond_3b

    .line 617
    move-object v1, v0

    check-cast v1, Lorg/antlr/v4/runtime/atn/PlusBlockStartState;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/PlusBlockStartState;->loopBackState:Lorg/antlr/v4/runtime/atn/PlusLoopbackState;

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 620
    :cond_3b
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    if-eqz v1, :cond_96

    .line 621
    move-object v1, v0

    check-cast v1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    .line 622
    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->loopBackState:Lorg/antlr/v4/runtime/atn/StarLoopbackState;

    if-eqz v4, :cond_48

    const/4 v4, 0x1

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    :goto_49
    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 623
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->getNumberOfTransitions()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_55

    const/4 v4, 0x1

    goto :goto_56

    :cond_55
    const/4 v4, 0x0

    :goto_56
    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 625
    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v4

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v4, v4, Lorg/antlr/v4/runtime/atn/StarBlockStartState;

    if-eqz v4, :cond_75

    .line 626
    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v4

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v4, v4, Lorg/antlr/v4/runtime/atn/LoopEndState;

    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 627
    iget-boolean v1, v1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->nonGreedy:Z

    xor-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    goto :goto_96

    .line 629
    :cond_75
    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v4

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v4, v4, Lorg/antlr/v4/runtime/atn/LoopEndState;

    if-eqz v4, :cond_90

    .line 630
    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v4

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v4, v4, Lorg/antlr/v4/runtime/atn/StarBlockStartState;

    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 631
    iget-boolean v1, v1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->nonGreedy:Z

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    goto :goto_96

    .line 634
    :cond_90
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 638
    :cond_96
    :goto_96
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/StarLoopbackState;

    if-eqz v1, :cond_b1

    .line 639
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v1

    if-ne v1, v3, :cond_a2

    const/4 v1, 0x1

    goto :goto_a3

    :cond_a2
    const/4 v1, 0x0

    :goto_a3
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 640
    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v1

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v1, v1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 643
    :cond_b1
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/LoopEndState;

    if-eqz v1, :cond_c2

    .line 644
    move-object v1, v0

    check-cast v1, Lorg/antlr/v4/runtime/atn/LoopEndState;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/LoopEndState;->loopBackState:Lorg/antlr/v4/runtime/atn/ATNState;

    if-eqz v1, :cond_be

    const/4 v1, 0x1

    goto :goto_bf

    :cond_be
    const/4 v1, 0x0

    :goto_bf
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 647
    :cond_c2
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;

    if-eqz v1, :cond_d3

    .line 648
    move-object v1, v0

    check-cast v1, Lorg/antlr/v4/runtime/atn/RuleStartState;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/RuleStartState;->stopState:Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v1, :cond_cf

    const/4 v1, 0x1

    goto :goto_d0

    :cond_cf
    const/4 v1, 0x0

    :goto_d0
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 651
    :cond_d3
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/BlockStartState;

    if-eqz v1, :cond_e4

    .line 652
    move-object v1, v0

    check-cast v1, Lorg/antlr/v4/runtime/atn/BlockStartState;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/BlockStartState;->endState:Lorg/antlr/v4/runtime/atn/BlockEndState;

    if-eqz v1, :cond_e0

    const/4 v1, 0x1

    goto :goto_e1

    :cond_e0
    const/4 v1, 0x0

    :goto_e1
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 655
    :cond_e4
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/BlockEndState;

    if-eqz v1, :cond_f5

    .line 656
    move-object v1, v0

    check-cast v1, Lorg/antlr/v4/runtime/atn/BlockEndState;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/BlockEndState;->startState:Lorg/antlr/v4/runtime/atn/BlockStartState;

    if-eqz v1, :cond_f1

    const/4 v1, 0x1

    goto :goto_f2

    :cond_f1
    const/4 v1, 0x0

    :goto_f2
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 659
    :cond_f5
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/DecisionState;

    if-eqz v1, :cond_10b

    .line 660
    check-cast v0, Lorg/antlr/v4/runtime/atn/DecisionState;

    .line 661
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/DecisionState;->getNumberOfTransitions()I

    move-result v1

    if-le v1, v3, :cond_105

    iget v0, v0, Lorg/antlr/v4/runtime/atn/DecisionState;->decision:I

    if-ltz v0, :cond_106

    :cond_105
    const/4 v2, 0x1

    :cond_106
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    goto/16 :goto_6

    .line 664
    :cond_10b
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v1

    if-le v1, v3, :cond_115

    instance-of v0, v0, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v0, :cond_116

    :cond_115
    const/4 v2, 0x1

    :cond_116
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    goto/16 :goto_6

    :cond_11b
    return-void
.end method
