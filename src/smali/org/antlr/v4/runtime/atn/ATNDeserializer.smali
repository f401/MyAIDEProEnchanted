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
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final deserializationOptions:Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 5

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
    .locals 1

    .line 127
    invoke-static {}, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->getDefaultOptions()Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;-><init>(Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 132
    invoke-static {}, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->getDefaultOptions()Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;

    move-result-object p1

    .line 135
    :cond_0
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->deserializationOptions:Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;

    return-void
.end method

.method private deserializeSets([CILjava/util/List;Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CI",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/misc/IntervalSet;",
            ">;",
            "Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;",
            ")I"
        }
    .end annotation

    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x1

    .line 556
    aget-char v0, p1, p2

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v4

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_2

    .line 558
    aget-char v0, p1, v2

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v5

    .line 560
    new-instance v6, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v0, v1, [I

    invoke-direct {v6, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 561
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    add-int/lit8 v0, v2, 0x1

    aget-char v0, p1, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x2

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_1

    .line 569
    invoke-interface {p4, p1, v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->readUnicode([CI)I

    move-result v7

    .line 570
    invoke-interface {p4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->size()I

    move-result v8

    add-int/2addr v2, v8

    .line 571
    invoke-interface {p4, p1, v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->readUnicode([CI)I

    move-result v8

    .line 572
    invoke-interface {p4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;->size()I

    move-result v9

    add-int/2addr v2, v9

    .line 573
    invoke-virtual {v6, v7, v8}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    return v2
.end method

.method static getUnicodeDeserializer(Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;
    .locals 1

    .line 96
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;->UNICODE_BMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    if-ne p0, v0, :cond_0

    .line 97
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$1;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$1;-><init>()V

    .line 110
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$2;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer$2;-><init>()V

    goto :goto_0
.end method

.method protected static isFeatureSupported(Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 3

    const/4 v0, 0x0

    .line 152
    sget-object v1, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SUPPORTED_UUIDS:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static toInt(C)I
    .locals 0

    return p0
.end method

.method protected static toInt32([CI)I
    .locals 2

    .line 684
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method protected static toLong([CI)J
    .locals 6

    .line 688
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt32([CI)I

    move-result v0

    int-to-long v0, v0

    .line 689
    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt32([CI)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected static toUUID([CI)Ljava/util/UUID;
    .locals 5

    .line 693
    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toLong([CI)J

    move-result-wide v0

    .line 694
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toLong([CI)J

    move-result-wide v2

    .line 695
    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v2, v3, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    return-object v4
.end method


# virtual methods
.method protected checkCondition(Z)V
    .locals 1

    .line 670
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(ZLjava/lang/String;)V

    return-void
.end method

.method protected checkCondition(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 675
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deserialize([C)Lorg/antlr/v4/runtime/atn/ATN;
    .locals 14

    .line 162
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [C

    const/4 v0, 0x1

    .line 179
    :goto_0
    array-length v1, v9

    if-ge v0, v1, :cond_0

    .line 180
    aget-char v1, v9, v0

    add-int/lit8 v1, v1, -0x2

    int-to-char v1, v1

    aput-char v1, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    const/4 v0, 0x0

    aget-char v0, v9, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    .line 185
    sget v1, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_VERSION:I

    if-ne v0, v1, :cond_34

    .line 190
    const/4 v0, 0x1

    invoke-static {v9, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toUUID([CI)Ljava/util/UUID;

    move-result-object v6

    .line 192
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SUPPORTED_UUIDS:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 197
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->ADDED_PRECEDENCE_TRANSITIONS:Ljava/util/UUID;

    invoke-static {v0, v6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->isFeatureSupported(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v7

    .line 198
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->ADDED_LEXER_ACTIONS:Ljava/util/UUID;

    invoke-static {v0, v6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->isFeatureSupported(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v12

    .line 200
    invoke-static {}, Lorg/antlr/v4/runtime/atn/ATNType;->values()[Lorg/antlr/v4/runtime/atn/ATNType;

    move-result-object v0

    const/16 v1, 0x9

    aget-char v1, v9, v1

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v1

    aget-object v0, v0, v1

    .line 201
    const/16 v1, 0xa

    aget-char v1, v9, v1

    invoke-static {v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v2

    .line 202
    new-instance v1, Lorg/antlr/v4/runtime/atn/ATN;

    invoke-direct {v1, v0, v2}, Lorg/antlr/v4/runtime/atn/ATN;-><init>(Lorg/antlr/v4/runtime/atn/ATNType;I)V

    .line 207
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 208
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 209
    const/16 v0, 0xb

    aget-char v0, v9, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v11

    const/4 v2, 0x0

    const/16 v0, 0xc

    move v4, v0

    move v5, v2

    :goto_1
    if-ge v5, v11, :cond_4

    add-int/lit8 v0, v4, 0x1

    .line 211
    aget-char v2, v9, v4

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v13

    if-nez v13, :cond_1

    .line 214
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/atn/ATN;->addState(Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 226
    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v4, v0

    move v5, v2

    goto :goto_1

    .line 214
    :cond_1
    add-int/lit8 v3, v4, 0x2

    .line 218
    aget-char v0, v9, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    const v2, 0xffff

    if-ne v0, v2, :cond_2

    const/4 v0, -0x1

    .line 223
    :cond_2
    invoke-virtual {p0, v13, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->stateFactory(II)Lorg/antlr/v4/runtime/atn/ATNState;

    move-result-object v2

    const/16 v0, 0xc

    if-ne v13, v0, :cond_3

    .line 225
    aget-char v0, v9, v3

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    .line 226
    new-instance v13, Lorg/antlr/v4/runtime/misc/Pair;

    move-object v0, v2

    check-cast v0, Lorg/antlr/v4/runtime/atn/LoopEndState;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v13, v0, v3}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v4, 0x3

    :goto_3
    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/atn/ATN;->addState(Lorg/antlr/v4/runtime/atn/ATNState;)V

    goto :goto_2

    .line 228
    :cond_3
    instance-of v0, v2, Lorg/antlr/v4/runtime/atn/BlockStartState;

    if-eqz v0, :cond_35

    .line 229
    aget-char v0, v9, v3

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    .line 230
    new-instance v13, Lorg/antlr/v4/runtime/misc/Pair;

    move-object v0, v2

    check-cast v0, Lorg/antlr/v4/runtime/atn/BlockStartState;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v13, v0, v3}, Lorg/antlr/v4/runtime/misc/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v4, 0x3

    goto :goto_3

    .line 236
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Pair;

    .line 237
    iget-object v2, v0, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    check-cast v2, Lorg/antlr/v4/runtime/atn/LoopEndState;

    iget-object v5, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget-object v0, v0, Lorg/antlr/v4/runtime/misc/Pair;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    iput-object v0, v2, Lorg/antlr/v4/runtime/atn/LoopEndState;->loopBackState:Lorg/antlr/v4/runtime/atn/ATNState;

    goto :goto_4

    .line 240
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/antlr/v4/runtime/misc/Pair;

    .line 241
    iget-object v0, v2, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    check-cast v0, Lorg/antlr/v4/runtime/atn/BlockStartState;

    iget-object v5, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    iget-object v2, v2, Lorg/antlr/v4/runtime/misc/Pair;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/BlockEndState;

    iput-object v2, v0, Lorg/antlr/v4/runtime/atn/BlockStartState;->endState:Lorg/antlr/v4/runtime/atn/BlockEndState;

    goto :goto_5

    .line 244
    :cond_6
    aget-char v0, v9, v4

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v5

    add-int/lit8 v2, v4, 0x1

    const/4 v0, 0x0

    move v3, v0

    :goto_6
    if-ge v3, v5, :cond_7

    .line 246
    aget-char v0, v9, v2

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    .line 247
    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/DecisionState;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lorg/antlr/v4/runtime/atn/DecisionState;->nonGreedy:Z

    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_6

    :cond_7
    if-eqz v7, :cond_8

    .line 251
    aget-char v0, v9, v2

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    move v3, v0

    :goto_7
    if-ge v3, v4, :cond_8

    .line 253
    aget-char v0, v9, v2

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    .line 254
    iget-object v5, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/RuleStartState;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;->isLeftRecursiveRule:Z

    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_7

    :cond_8
    move v0, v2

    .line 261
    aget-char v2, v9, v0

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v7

    .line 262
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v3, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v2, v3, :cond_9

    .line 263
    new-array v2, v7, [I

    iput-object v2, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    .line 266
    :cond_9
    new-array v2, v7, [Lorg/antlr/v4/runtime/atn/RuleStartState;

    iput-object v2, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    add-int/lit8 v2, v0, 0x1

    const/4 v0, 0x0

    move v4, v0

    move v5, v2

    :goto_8
    if-ge v4, v7, :cond_d

    add-int/lit8 v3, v5, 0x1

    .line 268
    aget-char v0, v9, v5

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    .line 269
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/RuleStartState;

    .line 270
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    aput-object v0, v2, v4

    .line 271
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v2, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v0, v2, :cond_c

    add-int/lit8 v2, v5, 0x2

    .line 272
    aget-char v0, v9, v3

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    const v3, 0xffff

    if-ne v0, v3, :cond_a

    const/4 v0, -0x1

    .line 277
    :cond_a
    iget-object v3, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    aput v0, v3, v4

    .line 279
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->ADDED_LEXER_ACTIONS:Ljava/util/UUID;

    invoke-static {v0, v6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->isFeatureSupported(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_b

    add-int/lit8 v0, v5, 0x3

    .line 282
    aget-char v2, v9, v2

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    :goto_9
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v5, v0

    goto :goto_8

    :cond_b
    move v0, v2

    goto :goto_9

    :cond_c
    move v0, v3

    goto :goto_9

    .line 287
    :cond_d
    new-array v0, v7, [Lorg/antlr/v4/runtime/atn/RuleStopState;

    iput-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStopState:[Lorg/antlr/v4/runtime/atn/RuleStopState;

    .line 288
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 289
    instance-of v2, v0, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v2, :cond_e

    move-object v2, v0

    .line 293
    check-cast v2, Lorg/antlr/v4/runtime/atn/RuleStopState;

    .line 294
    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStopState:[Lorg/antlr/v4/runtime/atn/RuleStopState;

    iget v7, v0, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aput-object v2, v4, v7

    .line 295
    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    iget v0, v0, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object v0, v4, v0

    iput-object v2, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;->stopState:Lorg/antlr/v4/runtime/atn/RuleStopState;

    goto :goto_a

    .line 301
    :cond_f
    aget-char v0, v9, v5

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v4

    add-int/lit8 v3, v5, 0x1

    const/4 v0, 0x0

    move v2, v0

    :goto_b
    if-ge v2, v4, :cond_10

    .line 303
    aget-char v0, v9, v3

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    .line 304
    iget-object v5, v1, Lorg/antlr/v4/runtime/atn/ATN;->modeToStartState:Ljava/util/List;

    iget-object v7, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/TokensStartState;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_b

    .line 310
    :cond_10
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 313
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;->UNICODE_BMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->getUnicodeDeserializer(Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;

    move-result-object v0

    invoke-direct {p0, v9, v3, v8, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->deserializeSets([CILjava/util/List;Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I

    move-result v0

    .line 317
    sget-object v2, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->ADDED_UNICODE_SMP:Ljava/util/UUID;

    invoke-static {v2, v6}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->isFeatureSupported(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 318
    sget-object v2, Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;->UNICODE_SMP:Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->getUnicodeDeserializer(Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;

    move-result-object v2

    invoke-direct {p0, v9, v0, v8, v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->deserializeSets([CILjava/util/List;Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;)I

    move-result v0

    .line 324
    :cond_11
    aget-char v2, v9, v0

    invoke-static {v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v13

    add-int/lit8 v2, v0, 0x1

    const/4 v0, 0x0

    move v10, v0

    move v11, v2

    :goto_c
    if-ge v10, v13, :cond_12

    .line 326
    aget-char v0, v9, v11

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    .line 327
    add-int/lit8 v0, v11, 0x1

    aget-char v0, v9, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v4

    .line 328
    add-int/lit8 v0, v11, 0x2

    aget-char v0, v9, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v2

    .line 329
    add-int/lit8 v0, v11, 0x3

    aget-char v0, v9, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v5

    .line 330
    add-int/lit8 v0, v11, 0x4

    aget-char v0, v9, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v6

    .line 331
    add-int/lit8 v0, v11, 0x5

    aget-char v0, v9, v0

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v7

    move-object v0, p0

    .line 332
    invoke-virtual/range {v0 .. v8}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->edgeFactory(Lorg/antlr/v4/runtime/atn/ATN;IIIIIILjava/util/List;)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v2

    .line 337
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 338
    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/atn/ATNState;->addTransition(Lorg/antlr/v4/runtime/atn/Transition;)V

    add-int/lit8 v2, v11, 0x6

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    move v11, v2

    goto :goto_c

    .line 343
    :cond_12
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    const/4 v2, 0x0

    move v3, v2

    .line 344
    :goto_d
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v2

    if-ge v3, v2, :cond_13

    .line 345
    invoke-virtual {v0, v3}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v2

    .line 346
    instance-of v4, v2, Lorg/antlr/v4/runtime/atn/RuleTransition;

    if-nez v4, :cond_14

    .line 359
    :goto_e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_d

    .line 350
    :cond_14
    check-cast v2, Lorg/antlr/v4/runtime/atn/RuleTransition;

    .line 352
    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    iget-object v6, v2, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v6, v6, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object v4, v4, v6

    iget-boolean v4, v4, Lorg/antlr/v4/runtime/atn/RuleStartState;->isLeftRecursiveRule:Z

    if-eqz v4, :cond_15

    .line 353
    iget v4, v2, Lorg/antlr/v4/runtime/atn/RuleTransition;->precedence:I

    if-nez v4, :cond_15

    .line 354
    iget-object v4, v2, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v4, v4, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    .line 358
    :goto_f
    new-instance v6, Lorg/antlr/v4/runtime/atn/EpsilonTransition;

    iget-object v7, v2, Lorg/antlr/v4/runtime/atn/RuleTransition;->followState:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-direct {v6, v7, v4}, Lorg/antlr/v4/runtime/atn/EpsilonTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V

    .line 359
    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStopState:[Lorg/antlr/v4/runtime/atn/RuleStopState;

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/RuleTransition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    iget v2, v2, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object v2, v4, v2

    invoke-virtual {v2, v6}, Lorg/antlr/v4/runtime/atn/RuleStopState;->addTransition(Lorg/antlr/v4/runtime/atn/Transition;)V

    goto :goto_e

    .line 354
    :cond_15
    const/4 v4, -0x1

    goto :goto_f

    .line 363
    :cond_16
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 364
    instance-of v2, v0, Lorg/antlr/v4/runtime/atn/BlockStartState;

    if-eqz v2, :cond_18

    move-object v2, v0

    .line 366
    check-cast v2, Lorg/antlr/v4/runtime/atn/BlockStartState;

    iget-object v3, v2, Lorg/antlr/v4/runtime/atn/BlockStartState;->endState:Lorg/antlr/v4/runtime/atn/BlockEndState;

    if-eqz v3, :cond_1b

    .line 371
    iget-object v3, v2, Lorg/antlr/v4/runtime/atn/BlockStartState;->endState:Lorg/antlr/v4/runtime/atn/BlockEndState;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/BlockEndState;->startState:Lorg/antlr/v4/runtime/atn/BlockStartState;

    if-nez v3, :cond_1a

    .line 375
    iget-object v3, v2, Lorg/antlr/v4/runtime/atn/BlockStartState;->endState:Lorg/antlr/v4/runtime/atn/BlockEndState;

    iput-object v2, v3, Lorg/antlr/v4/runtime/atn/BlockEndState;->startState:Lorg/antlr/v4/runtime/atn/BlockStartState;

    .line 378
    :cond_18
    instance-of v2, v0, Lorg/antlr/v4/runtime/atn/PlusLoopbackState;

    if-eqz v2, :cond_1c

    .line 379
    check-cast v0, Lorg/antlr/v4/runtime/atn/PlusLoopbackState;

    const/4 v2, 0x0

    move v3, v2

    .line 380
    :goto_10
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/PlusLoopbackState;->getNumberOfTransitions()I

    move-result v2

    if-ge v3, v2, :cond_17

    .line 381
    invoke-virtual {v0, v3}, Lorg/antlr/v4/runtime/atn/PlusLoopbackState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v2

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 382
    instance-of v5, v2, Lorg/antlr/v4/runtime/atn/PlusBlockStartState;

    if-eqz v5, :cond_19

    .line 383
    check-cast v2, Lorg/antlr/v4/runtime/atn/PlusBlockStartState;

    iput-object v0, v2, Lorg/antlr/v4/runtime/atn/PlusBlockStartState;->loopBackState:Lorg/antlr/v4/runtime/atn/PlusLoopbackState;

    :cond_19
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_10

    .line 372
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 367
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 387
    :cond_1c
    instance-of v2, v0, Lorg/antlr/v4/runtime/atn/StarLoopbackState;

    if-eqz v2, :cond_17

    .line 388
    check-cast v0, Lorg/antlr/v4/runtime/atn/StarLoopbackState;

    const/4 v2, 0x0

    move v3, v2

    .line 389
    :goto_11
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/StarLoopbackState;->getNumberOfTransitions()I

    move-result v2

    if-ge v3, v2, :cond_17

    .line 390
    invoke-virtual {v0, v3}, Lorg/antlr/v4/runtime/atn/StarLoopbackState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v2

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 391
    instance-of v5, v2, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    if-eqz v5, :cond_1d

    .line 392
    check-cast v2, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    iput-object v0, v2, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->loopBackState:Lorg/antlr/v4/runtime/atn/StarLoopbackState;

    :cond_1d
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_11

    :cond_1e
    add-int/lit8 v3, v11, 0x1

    .line 401
    aget-char v0, v9, v11

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v4

    const/4 v0, 0x1

    move v2, v0

    :goto_12
    if-gt v2, v4, :cond_1f

    .line 403
    aget-char v0, v9, v3

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    .line 404
    iget-object v5, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/DecisionState;

    .line 405
    iget-object v5, v1, Lorg/antlr/v4/runtime/atn/ATN;->decisionToState:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    add-int/lit8 v5, v2, -0x1

    iput v5, v0, Lorg/antlr/v4/runtime/atn/DecisionState;->decision:I

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_12

    .line 412
    :cond_1f
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v2, Lorg/antlr/v4/runtime/atn/ATNType;->LEXER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v0, v2, :cond_26

    if-eqz v12, :cond_22

    add-int/lit8 v2, v3, 0x1

    .line 414
    aget-char v0, v9, v3

    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v0

    new-array v0, v0, [Lorg/antlr/v4/runtime/atn/LexerAction;

    iput-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    const/4 v0, 0x0

    .line 415
    :goto_13
    iget-object v3, v1, Lorg/antlr/v4/runtime/atn/ATN;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    array-length v3, v3

    if-ge v0, v3, :cond_26

    .line 416
    invoke-static {}, Lorg/antlr/v4/runtime/atn/LexerActionType;->values()[Lorg/antlr/v4/runtime/atn/LexerActionType;

    move-result-object v3

    aget-char v4, v9, v2

    invoke-static {v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v4

    aget-object v5, v3, v4

    .line 417
    add-int/lit8 v3, v2, 0x1

    aget-char v3, v9, v3

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v3

    const v4, 0xffff

    if-ne v3, v4, :cond_20

    const/4 v3, -0x1

    .line 422
    :cond_20
    add-int/lit8 v4, v2, 0x2

    aget-char v4, v9, v4

    invoke-static {v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result v4

    const v6, 0xffff

    if-ne v4, v6, :cond_21

    const/4 v4, -0x1

    .line 427
    :cond_21
    invoke-virtual {p0, v5, v3, v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->lexerActionFactory(Lorg/antlr/v4/runtime/atn/LexerActionType;II)Lorg/antlr/v4/runtime/atn/LexerAction;

    move-result-object v3

    .line 429
    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/ATN;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x3

    goto :goto_13

    .line 436
    :cond_22
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 437
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    const/4 v2, 0x0

    move v4, v2

    .line 438
    :goto_14
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v2

    if-ge v4, v2, :cond_23

    .line 439
    invoke-virtual {v0, v4}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v3

    .line 440
    instance-of v2, v3, Lorg/antlr/v4/runtime/atn/ActionTransition;

    if-nez v2, :cond_24

    .line 448
    :goto_15
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_14

    :cond_24
    move-object v2, v3

    .line 444
    check-cast v2, Lorg/antlr/v4/runtime/atn/ActionTransition;

    iget v7, v2, Lorg/antlr/v4/runtime/atn/ActionTransition;->ruleIndex:I

    .line 445
    iget v2, v2, Lorg/antlr/v4/runtime/atn/ActionTransition;->actionIndex:I

    .line 446
    new-instance v8, Lorg/antlr/v4/runtime/atn/LexerCustomAction;

    invoke-direct {v8, v7, v2}, Lorg/antlr/v4/runtime/atn/LexerCustomAction;-><init>(II)V

    .line 447
    new-instance v2, Lorg/antlr/v4/runtime/atn/ActionTransition;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct {v2, v3, v7, v9, v10}, Lorg/antlr/v4/runtime/atn/ActionTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;IIZ)V

    invoke-virtual {v0, v4, v2}, Lorg/antlr/v4/runtime/atn/ATNState;->setTransition(ILorg/antlr/v4/runtime/atn/Transition;)V

    .line 448
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 452
    :cond_25
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/antlr/v4/runtime/atn/LexerAction;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/LexerAction;

    iput-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->lexerActions:[Lorg/antlr/v4/runtime/atn/LexerAction;

    .line 456
    :cond_26
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->markPrecedenceDecisions(Lorg/antlr/v4/runtime/atn/ATN;)V

    .line 458
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->deserializationOptions:Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->isVerifyATN()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 459
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->verifyATN(Lorg/antlr/v4/runtime/atn/ATN;)V

    .line 462
    :cond_27
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->deserializationOptions:Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->isGenerateRuleBypassTransitions()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->grammarType:Lorg/antlr/v4/runtime/atn/ATNType;

    sget-object v2, Lorg/antlr/v4/runtime/atn/ATNType;->PARSER:Lorg/antlr/v4/runtime/atn/ATNType;

    if-ne v0, v2, :cond_32

    .line 463
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    const/4 v0, 0x0

    .line 464
    :goto_16
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    array-length v2, v2

    if-ge v0, v2, :cond_28

    .line 465
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    iget v3, v1, Lorg/antlr/v4/runtime/atn/ATN;->maxTokenType:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_28
    const/4 v0, 0x0

    move v3, v0

    .line 468
    :goto_17
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    array-length v0, v0

    if-ge v3, v0, :cond_31

    .line 469
    new-instance v5, Lorg/antlr/v4/runtime/atn/BasicBlockStartState;

    invoke-direct {v5}, Lorg/antlr/v4/runtime/atn/BasicBlockStartState;-><init>()V

    .line 470
    iput v3, v5, Lorg/antlr/v4/runtime/atn/BasicBlockStartState;->ruleIndex:I

    .line 471
    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/atn/ATN;->addState(Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 473
    new-instance v6, Lorg/antlr/v4/runtime/atn/BlockEndState;

    invoke-direct {v6}, Lorg/antlr/v4/runtime/atn/BlockEndState;-><init>()V

    .line 474
    iput v3, v6, Lorg/antlr/v4/runtime/atn/BlockEndState;->ruleIndex:I

    .line 475
    invoke-virtual {v1, v6}, Lorg/antlr/v4/runtime/atn/ATN;->addState(Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 477
    iput-object v6, v5, Lorg/antlr/v4/runtime/atn/BasicBlockStartState;->endState:Lorg/antlr/v4/runtime/atn/BlockEndState;

    .line 478
    invoke-virtual {v1, v5}, Lorg/antlr/v4/runtime/atn/ATN;->defineDecisionState(Lorg/antlr/v4/runtime/atn/DecisionState;)I

    .line 480
    iput-object v5, v6, Lorg/antlr/v4/runtime/atn/BlockEndState;->startState:Lorg/antlr/v4/runtime/atn/BlockStartState;

    .line 484
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    aget-object v0, v0, v3

    iget-boolean v0, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;->isLeftRecursiveRule:Z

    if-eqz v0, :cond_2e

    .line 487
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 488
    iget v4, v0, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    if-ne v4, v3, :cond_29

    .line 492
    instance-of v4, v0, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    if-eqz v4, :cond_29

    .line 496
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v4

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 497
    instance-of v7, v4, Lorg/antlr/v4/runtime/atn/LoopEndState;

    if-eqz v7, :cond_29

    .line 501
    iget-boolean v7, v4, Lorg/antlr/v4/runtime/atn/ATNState;->epsilonOnlyTransitions:Z

    if-eqz v7, :cond_29

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v4

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v4, v4, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v4, :cond_29

    move-object v2, v0

    :goto_18
    if-eqz v2, :cond_2d

    move-object v0, v2

    .line 511
    check-cast v0, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->loopBackState:Lorg/antlr/v4/runtime/atn/StarLoopbackState;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/antlr/v4/runtime/atn/StarLoopbackState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v0

    move-object v4, v0

    .line 518
    :goto_19
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 519
    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/ATNState;->transitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2b
    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/Transition;

    if-eq v0, v4, :cond_2b

    .line 524
    iget-object v9, v0, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    if-ne v9, v2, :cond_2b

    .line 525
    iput-object v6, v0, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    goto :goto_1a

    .line 501
    :cond_2c
    const/4 v2, 0x0

    goto :goto_18

    .line 508
    :cond_2d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Couldn\'t identify final state of the precedence rule prefix section."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_2e
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStopState:[Lorg/antlr/v4/runtime/atn/RuleStopState;

    aget-object v2, v0, v3

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_19

    .line 531
    :cond_2f
    :goto_1b
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/RuleStartState;->getNumberOfTransitions()I

    move-result v0

    if-lez v0, :cond_30

    .line 532
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    aget-object v0, v0, v3

    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/antlr/v4/runtime/atn/RuleStartState;->getNumberOfTransitions()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Lorg/antlr/v4/runtime/atn/RuleStartState;->removeTransition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v0

    .line 533
    invoke-virtual {v5, v0}, Lorg/antlr/v4/runtime/atn/BasicBlockStartState;->addTransition(Lorg/antlr/v4/runtime/atn/Transition;)V

    goto :goto_1b

    .line 537
    :cond_30
    iget-object v0, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    aget-object v0, v0, v3

    new-instance v4, Lorg/antlr/v4/runtime/atn/EpsilonTransition;

    invoke-direct {v4, v5}, Lorg/antlr/v4/runtime/atn/EpsilonTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    invoke-virtual {v0, v4}, Lorg/antlr/v4/runtime/atn/RuleStartState;->addTransition(Lorg/antlr/v4/runtime/atn/Transition;)V

    .line 538
    new-instance v0, Lorg/antlr/v4/runtime/atn/EpsilonTransition;

    invoke-direct {v0, v2}, Lorg/antlr/v4/runtime/atn/EpsilonTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    invoke-virtual {v6, v0}, Lorg/antlr/v4/runtime/atn/BlockEndState;->addTransition(Lorg/antlr/v4/runtime/atn/Transition;)V

    .line 540
    new-instance v0, Lorg/antlr/v4/runtime/atn/BasicState;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/BasicState;-><init>()V

    .line 541
    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/atn/ATN;->addState(Lorg/antlr/v4/runtime/atn/ATNState;)V

    .line 542
    new-instance v2, Lorg/antlr/v4/runtime/atn/AtomTransition;

    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToTokenType:[I

    aget v4, v4, v3

    invoke-direct {v2, v6, v4}, Lorg/antlr/v4/runtime/atn/AtomTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V

    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/atn/ATNState;->addTransition(Lorg/antlr/v4/runtime/atn/Transition;)V

    .line 543
    new-instance v2, Lorg/antlr/v4/runtime/atn/EpsilonTransition;

    invoke-direct {v2, v0}, Lorg/antlr/v4/runtime/atn/EpsilonTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    invoke-virtual {v5, v2}, Lorg/antlr/v4/runtime/atn/BasicBlockStartState;->addTransition(Lorg/antlr/v4/runtime/atn/Transition;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_17

    .line 546
    :cond_31
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->deserializationOptions:Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializationOptions;->isVerifyATN()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 548
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->verifyATN(Lorg/antlr/v4/runtime/atn/ATN;)V

    :cond_32
    return-object v1

    .line 193
    :cond_33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Could not deserialize ATN with UUID %s (expected %s or a legacy UUID)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->SERIALIZED_UUID:Ljava/util/UUID;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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
    :cond_34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "Could not deserialize ATN with version %d (expected %d)."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/io/InvalidClassException;

    const-class v3, Lorg/antlr/v4/runtime/atn/ATN;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_35
    move v0, v3

    goto/16 :goto_3
.end method

.method protected edgeFactory(Lorg/antlr/v4/runtime/atn/ATN;IIIIIILjava/util/List;)Lorg/antlr/v4/runtime/atn/Transition;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/ATN;",
            "IIIIII",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/misc/IntervalSet;",
            ">;)",
            "Lorg/antlr/v4/runtime/atn/Transition;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 704
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    packed-switch p2, :pswitch_data_0

    .line 737
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified transition type is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :pswitch_0
    new-instance v1, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;

    invoke-direct {v1, v0, p5}, Lorg/antlr/v4/runtime/atn/PrecedencePredicateTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V

    move-object v0, v1

    .line 734
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v1, Lorg/antlr/v4/runtime/atn/WildcardTransition;

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/atn/WildcardTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    move-object v0, v1

    goto :goto_0

    .line 733
    :pswitch_2
    new-instance v2, Lorg/antlr/v4/runtime/atn/NotSetTransition;

    invoke-interface {p8, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-direct {v2, v0, v1}, Lorg/antlr/v4/runtime/atn/NotSetTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/misc/IntervalSet;)V

    move-object v0, v2

    goto :goto_0

    .line 732
    :pswitch_3
    new-instance v2, Lorg/antlr/v4/runtime/atn/SetTransition;

    invoke-interface {p8, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-direct {v2, v0, v1}, Lorg/antlr/v4/runtime/atn/SetTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;Lorg/antlr/v4/runtime/misc/IntervalSet;)V

    move-object v0, v2

    goto :goto_0

    .line 730
    :pswitch_4
    if-eqz p7, :cond_3

    :goto_1
    new-instance v2, Lorg/antlr/v4/runtime/atn/ActionTransition;

    invoke-direct {v2, v0, p5, p6, v1}, Lorg/antlr/v4/runtime/atn/ActionTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;IIZ)V

    move-object v0, v2

    goto :goto_0

    :pswitch_5
    if-eqz p7, :cond_0

    .line 724
    new-instance v1, Lorg/antlr/v4/runtime/atn/AtomTransition;

    invoke-direct {v1, v0, v3}, Lorg/antlr/v4/runtime/atn/AtomTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V

    move-object v0, v1

    goto :goto_0

    .line 727
    :cond_0
    new-instance v1, Lorg/antlr/v4/runtime/atn/AtomTransition;

    invoke-direct {v1, v0, p5}, Lorg/antlr/v4/runtime/atn/AtomTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;I)V

    move-object v0, v1

    goto :goto_0

    .line 718
    :pswitch_6
    if-eqz p7, :cond_2

    :goto_2
    new-instance v2, Lorg/antlr/v4/runtime/atn/PredicateTransition;

    invoke-direct {v2, v0, p5, p6, v1}, Lorg/antlr/v4/runtime/atn/PredicateTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;IIZ)V

    move-object v0, v2

    goto :goto_0

    .line 715
    :pswitch_7
    new-instance v2, Lorg/antlr/v4/runtime/atn/RuleTransition;

    iget-object v1, p1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/RuleStartState;

    invoke-direct {v2, v1, p6, p7, v0}, Lorg/antlr/v4/runtime/atn/RuleTransition;-><init>(Lorg/antlr/v4/runtime/atn/RuleStartState;IILorg/antlr/v4/runtime/atn/ATNState;)V

    move-object v0, v2

    goto :goto_0

    :pswitch_8
    if-eqz p7, :cond_1

    .line 709
    new-instance v1, Lorg/antlr/v4/runtime/atn/RangeTransition;

    invoke-direct {v1, v0, v3, p6}, Lorg/antlr/v4/runtime/atn/RangeTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;II)V

    move-object v0, v1

    goto :goto_0

    .line 712
    :cond_1
    new-instance v1, Lorg/antlr/v4/runtime/atn/RangeTransition;

    invoke-direct {v1, v0, p5, p6}, Lorg/antlr/v4/runtime/atn/RangeTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;II)V

    move-object v0, v1

    goto :goto_0

    .line 706
    :pswitch_9
    new-instance v1, Lorg/antlr/v4/runtime/atn/EpsilonTransition;

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/atn/EpsilonTransition;-><init>(Lorg/antlr/v4/runtime/atn/ATNState;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1

    .line 704
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected lexerActionFactory(Lorg/antlr/v4/runtime/atn/LexerActionType;II)Lorg/antlr/v4/runtime/atn/LexerAction;
    .locals 4

    .line 766
    sget-object v0, Lorg/antlr/v4/runtime/atn/ATNDeserializer$3;->$SwitchMap$org$antlr$v4$runtime$atn$LexerActionType:[I

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/atn/LexerActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 792
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "The specified lexer action type %d is not valid."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 793
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 789
    :pswitch_0
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerTypeAction;

    invoke-direct {v0, p2}, Lorg/antlr/v4/runtime/atn/LexerTypeAction;-><init>(I)V

    :goto_0
    return-object v0

    .line 786
    :pswitch_1
    sget-object v0, Lorg/antlr/v4/runtime/atn/LexerSkipAction;->INSTANCE:Lorg/antlr/v4/runtime/atn/LexerSkipAction;

    goto :goto_0

    .line 783
    :pswitch_2
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;

    invoke-direct {v0, p2}, Lorg/antlr/v4/runtime/atn/LexerPushModeAction;-><init>(I)V

    goto :goto_0

    .line 780
    :pswitch_3
    sget-object v0, Lorg/antlr/v4/runtime/atn/LexerPopModeAction;->INSTANCE:Lorg/antlr/v4/runtime/atn/LexerPopModeAction;

    goto :goto_0

    .line 777
    :pswitch_4
    sget-object v0, Lorg/antlr/v4/runtime/atn/LexerMoreAction;->INSTANCE:Lorg/antlr/v4/runtime/atn/LexerMoreAction;

    goto :goto_0

    .line 774
    :pswitch_5
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerModeAction;

    invoke-direct {v0, p2}, Lorg/antlr/v4/runtime/atn/LexerModeAction;-><init>(I)V

    goto :goto_0

    .line 771
    :pswitch_6
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerCustomAction;

    invoke-direct {v0, p2, p3}, Lorg/antlr/v4/runtime/atn/LexerCustomAction;-><init>(II)V

    goto :goto_0

    .line 768
    :pswitch_7
    new-instance v0, Lorg/antlr/v4/runtime/atn/LexerChannelAction;

    invoke-direct {v0, p2}, Lorg/antlr/v4/runtime/atn/LexerChannelAction;-><init>(I)V

    goto :goto_0

    .line 766
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected markPrecedenceDecisions(Lorg/antlr/v4/runtime/atn/ATN;)V
    .locals 4

    .line 587
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    .line 588
    instance-of v2, v0, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p1, Lorg/antlr/v4/runtime/atn/ATN;->ruleToStartState:[Lorg/antlr/v4/runtime/atn/RuleStartState;

    iget v3, v0, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lorg/antlr/v4/runtime/atn/RuleStartState;->isLeftRecursiveRule:Z

    if-eqz v2, :cond_0

    .line 597
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v2

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    .line 598
    instance-of v3, v2, Lorg/antlr/v4/runtime/atn/LoopEndState;

    if-eqz v3, :cond_0

    .line 599
    iget-boolean v3, v2, Lorg/antlr/v4/runtime/atn/ATNState;->epsilonOnlyTransitions:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v2

    iget-object v2, v2, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v2, v2, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v2, :cond_0

    .line 600
    check-cast v0, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->isPrecedenceDecision:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected stateFactory(II)Lorg/antlr/v4/runtime/atn/ATNState;
    .locals 5

    packed-switch p1, :pswitch_data_0

    .line 757
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "The specified state type %d is not valid."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 758
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 755
    :pswitch_0
    new-instance v0, Lorg/antlr/v4/runtime/atn/LoopEndState;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/LoopEndState;-><init>()V

    .line 761
    :goto_0
    iput p2, v0, Lorg/antlr/v4/runtime/atn/ATNState;->ruleIndex:I

    :goto_1
    return-object v0

    .line 754
    :pswitch_1
    new-instance v0, Lorg/antlr/v4/runtime/atn/PlusLoopbackState;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/PlusLoopbackState;-><init>()V

    goto :goto_0

    .line 753
    :pswitch_2
    new-instance v0, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;-><init>()V

    goto :goto_0

    .line 752
    :pswitch_3
    new-instance v0, Lorg/antlr/v4/runtime/atn/StarLoopbackState;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/StarLoopbackState;-><init>()V

    goto :goto_0

    .line 751
    :pswitch_4
    new-instance v0, Lorg/antlr/v4/runtime/atn/BlockEndState;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/BlockEndState;-><init>()V

    goto :goto_0

    .line 750
    :pswitch_5
    new-instance v0, Lorg/antlr/v4/runtime/atn/RuleStopState;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/RuleStopState;-><init>()V

    goto :goto_0

    .line 749
    :pswitch_6
    new-instance v0, Lorg/antlr/v4/runtime/atn/TokensStartState;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/TokensStartState;-><init>()V

    goto :goto_0

    .line 748
    :pswitch_7
    new-instance v0, Lorg/antlr/v4/runtime/atn/StarBlockStartState;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/StarBlockStartState;-><init>()V

    goto :goto_0

    .line 747
    :pswitch_8
    new-instance v0, Lorg/antlr/v4/runtime/atn/PlusBlockStartState;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/PlusBlockStartState;-><init>()V

    goto :goto_0

    .line 746
    :pswitch_9
    new-instance v0, Lorg/antlr/v4/runtime/atn/BasicBlockStartState;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/BasicBlockStartState;-><init>()V

    goto :goto_0

    .line 745
    :pswitch_a
    new-instance v0, Lorg/antlr/v4/runtime/atn/RuleStartState;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/RuleStartState;-><init>()V

    goto :goto_0

    .line 744
    :pswitch_b
    new-instance v0, Lorg/antlr/v4/runtime/atn/BasicState;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/BasicState;-><init>()V

    goto :goto_0

    .line 761
    :pswitch_c
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected verifyATN(Lorg/antlr/v4/runtime/atn/ATN;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 609
    iget-object v0, p1, Lorg/antlr/v4/runtime/atn/ATN;->states:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/ATNState;

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->onlyHasEpsilonTransitions()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v1

    if-gt v1, v3, :cond_a

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 616
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/PlusBlockStartState;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 617
    check-cast v1, Lorg/antlr/v4/runtime/atn/PlusBlockStartState;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/PlusBlockStartState;->loopBackState:Lorg/antlr/v4/runtime/atn/PlusLoopbackState;

    if-eqz v1, :cond_b

    move v1, v3

    :goto_2
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 620
    :cond_2
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 621
    check-cast v1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    .line 622
    iget-object v4, v1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->loopBackState:Lorg/antlr/v4/runtime/atn/StarLoopbackState;

    if-eqz v4, :cond_c

    move v4, v3

    :goto_3
    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 623
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->getNumberOfTransitions()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_d

    move v4, v3

    :goto_4
    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 625
    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v4

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v4, v4, Lorg/antlr/v4/runtime/atn/StarBlockStartState;

    if-eqz v4, :cond_e

    .line 626
    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v4

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v4, v4, Lorg/antlr/v4/runtime/atn/LoopEndState;

    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 627
    iget-boolean v1, v1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->nonGreedy:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 638
    :cond_3
    :goto_5
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/StarLoopbackState;

    if-eqz v1, :cond_4

    .line 639
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v1

    if-ne v1, v3, :cond_10

    move v1, v3

    :goto_6
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 640
    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/atn/ATNState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v1

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v1, v1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 643
    :cond_4
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/LoopEndState;

    if-eqz v1, :cond_5

    move-object v1, v0

    .line 644
    check-cast v1, Lorg/antlr/v4/runtime/atn/LoopEndState;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/LoopEndState;->loopBackState:Lorg/antlr/v4/runtime/atn/ATNState;

    if-eqz v1, :cond_11

    move v1, v3

    :goto_7
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 647
    :cond_5
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/RuleStartState;

    if-eqz v1, :cond_6

    move-object v1, v0

    .line 648
    check-cast v1, Lorg/antlr/v4/runtime/atn/RuleStartState;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/RuleStartState;->stopState:Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v1, :cond_12

    move v1, v3

    :goto_8
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 651
    :cond_6
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/BlockStartState;

    if-eqz v1, :cond_7

    move-object v1, v0

    .line 652
    check-cast v1, Lorg/antlr/v4/runtime/atn/BlockStartState;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/BlockStartState;->endState:Lorg/antlr/v4/runtime/atn/BlockEndState;

    if-eqz v1, :cond_13

    move v1, v3

    :goto_9
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 655
    :cond_7
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/BlockEndState;

    if-eqz v1, :cond_8

    move-object v1, v0

    .line 656
    check-cast v1, Lorg/antlr/v4/runtime/atn/BlockEndState;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/BlockEndState;->startState:Lorg/antlr/v4/runtime/atn/BlockStartState;

    if-eqz v1, :cond_14

    move v1, v3

    :goto_a
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 659
    :cond_8
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/DecisionState;

    if-eqz v1, :cond_15

    .line 660
    check-cast v0, Lorg/antlr/v4/runtime/atn/DecisionState;

    .line 661
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/DecisionState;->getNumberOfTransitions()I

    move-result v1

    if-le v1, v3, :cond_9

    iget v0, v0, Lorg/antlr/v4/runtime/atn/DecisionState;->decision:I

    if-ltz v0, :cond_19

    :cond_9
    move v0, v3

    :goto_b
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    goto/16 :goto_0

    :cond_a
    move v1, v2

    .line 614
    goto/16 :goto_1

    :cond_b
    move v1, v2

    .line 617
    goto/16 :goto_2

    :cond_c
    move v4, v2

    .line 622
    goto/16 :goto_3

    :cond_d
    move v4, v2

    .line 623
    goto/16 :goto_4

    .line 629
    :cond_e
    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v4

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v4, v4, Lorg/antlr/v4/runtime/atn/LoopEndState;

    if-eqz v4, :cond_f

    .line 630
    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->transition(I)Lorg/antlr/v4/runtime/atn/Transition;

    move-result-object v4

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/Transition;->target:Lorg/antlr/v4/runtime/atn/ATNState;

    instance-of v4, v4, Lorg/antlr/v4/runtime/atn/StarBlockStartState;

    invoke-virtual {p0, v4}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    .line 631
    iget-boolean v1, v1, Lorg/antlr/v4/runtime/atn/StarLoopEntryState;->nonGreedy:Z

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    goto/16 :goto_5

    .line 634
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_10
    move v1, v2

    .line 639
    goto/16 :goto_6

    :cond_11
    move v1, v2

    .line 644
    goto :goto_7

    :cond_12
    move v1, v2

    .line 648
    goto :goto_8

    :cond_13
    move v1, v2

    .line 652
    goto :goto_9

    :cond_14
    move v1, v2

    .line 656
    goto :goto_a

    .line 664
    :cond_15
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/ATNState;->getNumberOfTransitions()I

    move-result v1

    if-le v1, v3, :cond_16

    instance-of v0, v0, Lorg/antlr/v4/runtime/atn/RuleStopState;

    if-eqz v0, :cond_18

    :cond_16
    move v0, v3

    :goto_c
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->checkCondition(Z)V

    goto/16 :goto_0

    :cond_17
    return-void

    :cond_18
    move v0, v2

    goto :goto_c

    :cond_19
    move v0, v2

    goto :goto_b
.end method
