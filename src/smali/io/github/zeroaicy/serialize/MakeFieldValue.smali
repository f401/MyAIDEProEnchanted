.class public Lio/github/zeroaicy/serialize/MakeFieldValue;
.super Ljava/lang/Object;
.source "MakeFieldValue.java"


# static fields
.field static i:I

.field public static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lio/github/zeroaicy/serialize/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/github/zeroaicy/serialize/MakeFieldValue;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-object v1

    .line 4294967295
    :cond_1
    const/16 v0, 0x14

    if-le p1, v0, :cond_2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u6b7b\u5faa\u73af\u4e86 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 20
    :cond_2
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    sget-object v0, Lio/github/zeroaicy/serialize/MakeFieldValue;->map:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/serialize/Value;

    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 27
    const-class v2, Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 32
    new-instance v2, Lio/github/zeroaicy/serialize/Value$ArrayTypeValue;

    invoke-direct {v2}, Lio/github/zeroaicy/serialize/Value$ArrayTypeValue;-><init>()V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 38
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 39
    check-cast p0, [J

    .line 40
    array-length v1, p0

    .line 41
    new-array v0, v1, [Lio/github/zeroaicy/serialize/Value;

    :goto_1
    if-ge v3, v1, :cond_d

    .line 43
    aget-wide v6, p0, v3

    .line 44
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v5

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 49
    :cond_4
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 50
    check-cast p0, [I

    .line 51
    array-length v1, p0

    .line 52
    new-array v0, v1, [Lio/github/zeroaicy/serialize/Value;

    :goto_2
    if-ge v3, v1, :cond_d

    .line 54
    aget v5, p0, v3

    .line 55
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v5

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 60
    :cond_5
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 61
    check-cast p0, [S

    .line 62
    array-length v1, p0

    .line 63
    new-array v0, v1, [Lio/github/zeroaicy/serialize/Value;

    :goto_3
    if-ge v3, v1, :cond_d

    .line 65
    aget-short v5, p0, v3

    .line 66
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v5

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 71
    :cond_6
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 72
    check-cast p0, [B

    .line 73
    array-length v1, p0

    .line 74
    new-array v0, v1, [Lio/github/zeroaicy/serialize/Value;

    :goto_4
    if-ge v3, v1, :cond_d

    .line 76
    aget-byte v5, p0, v3

    .line 77
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v5

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 82
    :cond_7
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 83
    check-cast p0, [C

    .line 84
    array-length v1, p0

    .line 85
    new-array v0, v1, [Lio/github/zeroaicy/serialize/Value;

    :goto_5
    if-ge v3, v1, :cond_d

    .line 87
    aget-char v5, p0, v3

    .line 88
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v5

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 93
    :cond_8
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 94
    check-cast p0, [F

    .line 95
    array-length v1, p0

    .line 96
    new-array v0, v1, [Lio/github/zeroaicy/serialize/Value;

    :goto_6
    if-ge v3, v1, :cond_d

    .line 98
    aget v5, p0, v3

    .line 99
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v5

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 104
    :cond_9
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 105
    check-cast p0, [D

    .line 106
    array-length v1, p0

    .line 107
    new-array v0, v1, [Lio/github/zeroaicy/serialize/Value;

    :goto_7
    if-ge v3, v1, :cond_d

    .line 109
    aget-wide v6, p0, v3

    .line 110
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v5

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 115
    :cond_a
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 116
    check-cast p0, [Z

    .line 117
    array-length v1, p0

    .line 118
    new-array v0, v1, [Lio/github/zeroaicy/serialize/Value;

    :goto_8
    if-ge v3, v1, :cond_d

    .line 120
    aget-boolean v5, p0, v3

    .line 121
    :try_start_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :catchall_0
    move-exception v0

    throw v0

    .line 128
    :cond_b
    check-cast p0, [Ljava/lang/Object;

    .line 129
    array-length v5, p0

    .line 130
    new-array v0, v5, [Lio/github/zeroaicy/serialize/Value;

    move v1, v3

    :goto_9
    if-ge v1, v5, :cond_d

    .line 132
    aget-object v3, p0, v1

    .line 133
    add-int/lit8 v6, p1, 0x1

    invoke-static {v3, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_c
    move-object v0, v1

    .line 137
    :cond_d
    invoke-virtual {v2, v0}, Lio/github/zeroaicy/serialize/Value$ArrayTypeValue;->setValue(Ljava/lang/Object;)V

    .line 138
    sget-object v0, Lio/github/zeroaicy/serialize/MakeFieldValue;->map:Ljava/util/Map;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    goto/16 :goto_0

    .line 142
    :cond_e
    invoke-static {v0}, Lio/github/zeroaicy/serialize/MakeFieldValue;->isPrimitive(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 143
    new-instance v1, Lio/github/zeroaicy/serialize/Value$PrimitiveTypeValue;

    invoke-direct {v1}, Lio/github/zeroaicy/serialize/Value$PrimitiveTypeValue;-><init>()V

    .line 144
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/github/zeroaicy/serialize/Value$PrimitiveTypeValue;->setValue(Ljava/lang/Object;)V

    .line 146
    sget-object v0, Lio/github/zeroaicy/serialize/MakeFieldValue;->map:Ljava/util/Map;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 149
    :cond_f
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 151
    new-instance v1, Lio/github/zeroaicy/serialize/Value$CollectionTypeValue;

    invoke-direct {v1}, Lio/github/zeroaicy/serialize/Value$CollectionTypeValue;-><init>()V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    check-cast p0, Ljava/util/Collection;

    .line 154
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 155
    add-int/lit8 v5, p1, 0x1

    invoke-static {v3, v5}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 158
    :cond_10
    invoke-virtual {v1, v0}, Lio/github/zeroaicy/serialize/Value$CollectionTypeValue;->setValue(Ljava/lang/Object;)V

    .line 161
    sget-object v0, Lio/github/zeroaicy/serialize/MakeFieldValue;->map:Ljava/util/Map;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 165
    :cond_11
    new-instance v2, Lio/github/zeroaicy/serialize/Value$ObjectTypoValue;

    invoke-direct {v2}, Lio/github/zeroaicy/serialize/Value$ObjectTypoValue;-><init>()V

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->fields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    new-instance v6, Lio/github/zeroaicy/serialize/Value$FieldValue;

    invoke-direct {v6}, Lio/github/zeroaicy/serialize/Value$FieldValue;-><init>()V

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lio/github/zeroaicy/serialize/Value$FieldValue;->setName(Ljava/lang/String;)V

    .line 174
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/util/reflect/ReflectPie;

    .line 176
    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 180
    instance-of v1, v0, Ljava/lang/ClassLoader;

    if-nez v1, :cond_12

    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 185
    const-string v7, "abcd."

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 186
    const-string v7, "com.aide."

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 187
    const-string v7, "io."

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_13
    if-ne v0, p0, :cond_14

    .line 192
    invoke-virtual {v6, v2}, Lio/github/zeroaicy/serialize/Value$FieldValue;->setValue(Ljava/lang/Object;)V

    goto :goto_b

    .line 196
    :cond_14
    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v0

    .line 197
    invoke-virtual {v6, v0}, Lio/github/zeroaicy/serialize/Value$FieldValue;->setValue(Ljava/lang/Object;)V

    .line 199
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 201
    :cond_15
    invoke-virtual {v2, v3}, Lio/github/zeroaicy/serialize/Value$ObjectTypoValue;->setValue(Ljava/lang/Object;)V

    .line 203
    sget-object v0, Lio/github/zeroaicy/serialize/MakeFieldValue;->map:Ljava/util/Map;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    goto/16 :goto_0
.end method

.method private static isPrimitive(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const-class v0, Ljava/lang/Character;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
