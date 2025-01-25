.class public Lio/github/zeroaicy/serialize/MakeFieldValue;
.super Ljava/lang/Object;
.source "MakeFieldValue.java"


# static fields
.field static i:I

.field public static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;",
            "Lio/github/zeroaicy/serialize/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/github/zeroaicy/serialize/MakeFieldValue;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/16 v1, 0x14

    const/4 v2, 0x0

    if-le p1, v1, :cond_21

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "死循环了 "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0

    .line 20
    :cond_21
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    sget-object v3, Lio/github/zeroaicy/serialize/MakeFieldValue;->map:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/zeroaicy/serialize/Value;

    if-eqz v3, :cond_31

    return-object v3

    .line 26
    :cond_31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 27
    const-class v4, Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    return-object v0

    .line 30
    :cond_3e
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_189

    .line 32
    new-instance v4, Lio/github/zeroaicy/serialize/Value$ArrayTypeValue;

    invoke-direct {v4}, Lio/github/zeroaicy/serialize/Value$ArrayTypeValue;-><init>()V

    .line 35
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_16a

    .line 38
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 39
    check-cast p0, [J

    .line 40
    array-length v0, p0

    .line 41
    new-array v3, v0, [Lio/github/zeroaicy/serialize/Value;

    :goto_60
    if-ge v2, v0, :cond_73

    .line 43
    aget-wide v5, p0, v2

    .line 44
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v5

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 41
    :cond_73
    move-object v0, v3

    goto/16 :goto_17f

    .line 49
    :cond_76
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 50
    check-cast p0, [I

    .line 51
    array-length v0, p0

    .line 52
    new-array v3, v0, [Lio/github/zeroaicy/serialize/Value;

    :goto_83
    if-ge v2, v0, :cond_96

    .line 54
    aget v5, p0, v2

    .line 55
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v5

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_83

    .line 52
    :cond_96
    move-object v0, v3

    goto/16 :goto_17f

    .line 60
    :cond_99
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 61
    check-cast p0, [S

    .line 62
    array-length v0, p0

    .line 63
    new-array v3, v0, [Lio/github/zeroaicy/serialize/Value;

    :goto_a6
    if-ge v2, v0, :cond_b9

    .line 65
    aget-short v5, p0, v2

    .line 66
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v5

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a6

    .line 63
    :cond_b9
    move-object v0, v3

    goto/16 :goto_17f

    .line 71
    :cond_bc
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 72
    check-cast p0, [B

    .line 73
    array-length v0, p0

    .line 74
    new-array v3, v0, [Lio/github/zeroaicy/serialize/Value;

    :goto_c9
    if-ge v2, v0, :cond_dc

    .line 76
    aget-byte v5, p0, v2

    .line 77
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v5

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c9

    .line 74
    :cond_dc
    move-object v0, v3

    goto/16 :goto_17f

    .line 82
    :cond_df
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_102

    .line 83
    check-cast p0, [C

    .line 84
    array-length v0, p0

    .line 85
    new-array v3, v0, [Lio/github/zeroaicy/serialize/Value;

    :goto_ec
    if-ge v2, v0, :cond_ff

    .line 87
    aget-char v5, p0, v2

    .line 88
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v5

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_ec

    .line 85
    :cond_ff
    move-object v0, v3

    goto/16 :goto_17f

    .line 93
    :cond_102
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_124

    .line 94
    check-cast p0, [F

    .line 95
    array-length v0, p0

    .line 96
    new-array v3, v0, [Lio/github/zeroaicy/serialize/Value;

    :goto_10f
    if-ge v2, v0, :cond_122

    .line 98
    aget v5, p0, v2

    .line 99
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v5

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10f

    .line 96
    :cond_122
    move-object v0, v3

    goto :goto_17f

    .line 104
    :cond_124
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_146

    .line 105
    check-cast p0, [D

    .line 106
    array-length v0, p0

    .line 107
    new-array v3, v0, [Lio/github/zeroaicy/serialize/Value;

    :goto_131
    if-ge v2, v0, :cond_144

    .line 109
    aget-wide v5, p0, v2

    .line 110
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v5

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_131

    .line 107
    :cond_144
    move-object v0, v3

    goto :goto_17f

    .line 115
    :cond_146
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_180

    .line 116
    check-cast p0, [Z

    .line 117
    array-length v0, p0

    .line 118
    new-array v3, v0, [Lio/github/zeroaicy/serialize/Value;

    :goto_153
    if-ge v2, v0, :cond_168

    .line 120
    aget-boolean v5, p0, v2

    .line 121
    :try_start_157
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v5
    :try_end_161
    .catchall {:try_start_157 .. :try_end_161} :catchall_166

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_153

    :catchall_166
    move-exception p0

    throw p0

    .line 118
    :cond_168
    move-object v0, v3

    goto :goto_17f

    .line 128
    :cond_16a
    check-cast p0, [Ljava/lang/Object;

    .line 129
    array-length v0, p0

    .line 130
    new-array v3, v0, [Lio/github/zeroaicy/serialize/Value;

    :goto_16f
    if-ge v2, v0, :cond_17e

    .line 132
    aget-object v5, p0, v2

    .line 133
    add-int/lit8 v6, p1, 0x1

    invoke-static {v5, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v5

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16f

    .line 130
    :cond_17e
    move-object v0, v3

    .line 133
    :goto_17f
    nop

    .line 137
    :cond_180
    invoke-virtual {v4, v0}, Lio/github/zeroaicy/serialize/Value$ArrayTypeValue;->setValue(Ljava/lang/Object;)V

    .line 138
    sget-object p0, Lio/github/zeroaicy/serialize/MakeFieldValue;->map:Ljava/util/Map;

    invoke-interface {p0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    .line 142
    :cond_189
    invoke-static {v3}, Lio/github/zeroaicy/serialize/MakeFieldValue;->isPrimitive(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1a1

    .line 143
    new-instance p1, Lio/github/zeroaicy/serialize/Value$PrimitiveTypeValue;

    invoke-direct {p1}, Lio/github/zeroaicy/serialize/Value$PrimitiveTypeValue;-><init>()V

    .line 144
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/github/zeroaicy/serialize/Value$PrimitiveTypeValue;->setValue(Ljava/lang/Object;)V

    .line 146
    sget-object p0, Lio/github/zeroaicy/serialize/MakeFieldValue;->map:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 149
    :cond_1a1
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    .line 151
    new-instance v0, Lio/github/zeroaicy/serialize/Value$CollectionTypeValue;

    invoke-direct {v0}, Lio/github/zeroaicy/serialize/Value$CollectionTypeValue;-><init>()V

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    check-cast p0, Ljava/util/Collection;

    .line 154
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1cd

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 155
    add-int/lit8 v4, p1, 0x1

    invoke-static {v3, v4}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b9

    .line 158
    :cond_1cd
    invoke-virtual {v0, v2}, Lio/github/zeroaicy/serialize/Value$CollectionTypeValue;->setValue(Ljava/lang/Object;)V

    .line 161
    sget-object p0, Lio/github/zeroaicy/serialize/MakeFieldValue;->map:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 165
    :cond_1d6
    new-instance v0, Lio/github/zeroaicy/serialize/Value$ObjectTypoValue;

    invoke-direct {v0}, Lio/github/zeroaicy/serialize/Value$ObjectTypoValue;-><init>()V

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->on(Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v3

    .line 170
    invoke-virtual {v3}, Lio/github/zeroaicy/util/reflect/ReflectPie;->fields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 171
    new-instance v5, Lio/github/zeroaicy/serialize/Value$FieldValue;

    invoke-direct {v5}, Lio/github/zeroaicy/serialize/Value$FieldValue;-><init>()V

    .line 172
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lio/github/zeroaicy/serialize/Value$FieldValue;->setName(Ljava/lang/String;)V

    .line 174
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/github/zeroaicy/util/reflect/ReflectPie;

    .line 176
    invoke-virtual {v4}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_23c

    .line 180
    instance-of v6, v4, Ljava/lang/ClassLoader;

    if-eqz v6, :cond_21b

    goto :goto_1f0

    .line 184
    :cond_21b
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 185
    const-string v7, "abcd."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_23c

    .line 186
    const-string v7, "com.aide."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23c

    .line 187
    const-string v7, "io."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23c

    goto :goto_1f0

    :cond_23c
    if-ne v4, p0, :cond_242

    .line 192
    invoke-virtual {v5, v0}, Lio/github/zeroaicy/serialize/Value$FieldValue;->setValue(Ljava/lang/Object;)V

    goto :goto_1f0

    .line 196
    :cond_242
    add-int/lit8 v6, p1, 0x1

    invoke-static {v4, v6}, Lio/github/zeroaicy/serialize/MakeFieldValue;->getUnknownValue(Ljava/lang/Object;I)Lio/github/zeroaicy/serialize/Value;

    move-result-object v4

    .line 197
    invoke-virtual {v5, v4}, Lio/github/zeroaicy/serialize/Value$FieldValue;->setValue(Ljava/lang/Object;)V

    .line 199
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f0

    .line 201
    :cond_24f
    invoke-virtual {v0, v2}, Lio/github/zeroaicy/serialize/Value$ObjectTypoValue;->setValue(Ljava/lang/Object;)V

    .line 203
    sget-object p0, Lio/github/zeroaicy/serialize/MakeFieldValue;->map:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static isPrimitive(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_29

    .line 210
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 211
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 212
    const-class v0, Ljava/lang/Character;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 213
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_29

    :cond_27
    const/4 p0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p0, 0x1

    :goto_2a
    return p0
.end method
