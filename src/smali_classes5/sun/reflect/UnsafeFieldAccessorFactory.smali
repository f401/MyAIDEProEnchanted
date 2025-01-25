.class Lsun/reflect/UnsafeFieldAccessorFactory;
.super Ljava/lang/Object;
.source "UnsafeFieldAccessorFactory.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newFieldAccessor(Ljava/lang/reflect/Field;Z)Lsun/reflect/FieldAccessor;
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 34
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    .line 35
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    .line 36
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v2

    .line 37
    if-nez v5, :cond_22

    if-eqz v2, :cond_40

    :cond_22
    move v2, v1

    .line 38
    :goto_23
    if-eqz v5, :cond_1a8

    if-nez v4, :cond_29

    if-nez p1, :cond_1a8

    .line 39
    :cond_29
    :goto_29
    if-eqz v4, :cond_e8

    .line 43
    sget-object v0, Lsun/reflect/UnsafeFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Lsun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    .line 45
    if-nez v2, :cond_8e

    .line 46
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_42

    .line 47
    new-instance v0, Lsun/reflect/UnsafeStaticBooleanFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticBooleanFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    .line 125
    :goto_3f
    return-object v0

    :cond_40
    move v2, v0

    .line 37
    goto :goto_23

    .line 48
    :cond_42
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_4c

    .line 49
    new-instance v0, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_3f

    .line 50
    :cond_4c
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_56

    .line 51
    new-instance v0, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_3f

    .line 52
    :cond_56
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_60

    .line 53
    new-instance v0, Lsun/reflect/UnsafeStaticCharacterFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticCharacterFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_3f

    .line 54
    :cond_60
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_6a

    .line 55
    new-instance v0, Lsun/reflect/UnsafeStaticIntegerFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticIntegerFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_3f

    .line 56
    :cond_6a
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_74

    .line 57
    new-instance v0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_3f

    .line 58
    :cond_74
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_7e

    .line 59
    new-instance v0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_3f

    .line 60
    :cond_7e
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_88

    .line 61
    new-instance v0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_3f

    .line 63
    :cond_88
    new-instance v0, Lsun/reflect/UnsafeStaticObjectFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticObjectFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_3f

    .line 66
    :cond_8e
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_98

    .line 67
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_3f

    .line 68
    :cond_98
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_a2

    .line 69
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticByteFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticByteFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_3f

    .line 70
    :cond_a2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_ac

    .line 71
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticShortFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticShortFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_3f

    .line 72
    :cond_ac
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_b6

    .line 73
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_3f

    .line 74
    :cond_b6
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_c0

    .line 75
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_3f

    .line 76
    :cond_c0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_cb

    .line 77
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_3f

    .line 78
    :cond_cb
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_d6

    .line 79
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticFloatFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticFloatFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_3f

    .line 80
    :cond_d6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_e1

    .line 81
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticDoubleFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticDoubleFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_3f

    .line 83
    :cond_e1
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticObjectFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticObjectFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_3f

    .line 87
    :cond_e8
    if-nez v2, :cond_149

    .line 88
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_f5

    .line 89
    new-instance v0, Lsun/reflect/UnsafeBooleanFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeBooleanFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_3f

    .line 90
    :cond_f5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_100

    .line 91
    new-instance v0, Lsun/reflect/UnsafeByteFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeByteFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_3f

    .line 92
    :cond_100
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_10b

    .line 93
    new-instance v0, Lsun/reflect/UnsafeShortFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeShortFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_3f

    .line 94
    :cond_10b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_116

    .line 95
    new-instance v0, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_3f

    .line 96
    :cond_116
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_121

    .line 97
    new-instance v0, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_3f

    .line 98
    :cond_121
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_12c

    .line 99
    new-instance v0, Lsun/reflect/UnsafeLongFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeLongFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_3f

    .line 100
    :cond_12c
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_137

    .line 101
    new-instance v0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_3f

    .line 102
    :cond_137
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_142

    .line 103
    new-instance v0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_3f

    .line 105
    :cond_142
    new-instance v0, Lsun/reflect/UnsafeObjectFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_3f

    .line 108
    :cond_149
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_154

    .line 109
    new-instance v0, Lsun/reflect/UnsafeQualifiedBooleanFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedBooleanFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_3f

    .line 110
    :cond_154
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_15f

    .line 111
    new-instance v0, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_3f

    .line 112
    :cond_15f
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_16a

    .line 113
    new-instance v0, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_3f

    .line 114
    :cond_16a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_175

    .line 115
    new-instance v0, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_3f

    .line 116
    :cond_175
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_180

    .line 117
    new-instance v0, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_3f

    .line 118
    :cond_180
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_18b

    .line 119
    new-instance v0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_3f

    .line 120
    :cond_18b
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_196

    .line 121
    new-instance v0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_3f

    .line 122
    :cond_196
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_1a1

    .line 123
    new-instance v0, Lsun/reflect/UnsafeQualifiedDoubleFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedDoubleFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_3f

    .line 125
    :cond_1a1
    new-instance v0, Lsun/reflect/UnsafeQualifiedObjectFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedObjectFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_3f

    :cond_1a8
    move v1, v0

    goto/16 :goto_29
.end method
