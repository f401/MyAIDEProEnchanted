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
    if-nez v5, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    move v2, v1

    .line 38
    :goto_0
    if-eqz v5, :cond_26

    if-nez v4, :cond_1

    if-nez p1, :cond_26

    .line 39
    :cond_1
    :goto_1
    if-eqz v4, :cond_14

    .line 43
    sget-object v0, Lsun/reflect/UnsafeFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Lsun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    .line 45
    if-nez v2, :cond_b

    .line 46
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_3

    .line 47
    new-instance v0, Lsun/reflect/UnsafeStaticBooleanFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticBooleanFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    .line 125
    :goto_2
    return-object v0

    :cond_2
    move v2, v0

    .line 37
    goto :goto_0

    .line 48
    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_4

    .line 49
    new-instance v0, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticByteFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 50
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_5

    .line 51
    new-instance v0, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticShortFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 52
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_6

    .line 53
    new-instance v0, Lsun/reflect/UnsafeStaticCharacterFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticCharacterFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 54
    :cond_6
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_7

    .line 55
    new-instance v0, Lsun/reflect/UnsafeStaticIntegerFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticIntegerFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 56
    :cond_7
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_8

    .line 57
    new-instance v0, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticLongFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 58
    :cond_8
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_9

    .line 59
    new-instance v0, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticFloatFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 60
    :cond_9
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_a

    .line 61
    new-instance v0, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticDoubleFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 63
    :cond_a
    new-instance v0, Lsun/reflect/UnsafeStaticObjectFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeStaticObjectFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 66
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_c

    .line 67
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticBooleanFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_2

    .line 68
    :cond_c
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_d

    .line 69
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticByteFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticByteFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_2

    .line 70
    :cond_d
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_e

    .line 71
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticShortFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticShortFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_2

    .line 72
    :cond_e
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_f

    .line 73
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticCharacterFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_2

    .line 74
    :cond_f
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_10

    .line 75
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticIntegerFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_2

    .line 76
    :cond_10
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_11

    .line 77
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticLongFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_2

    .line 78
    :cond_11
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_12

    .line 79
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticFloatFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticFloatFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_2

    .line 80
    :cond_12
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_13

    .line 81
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticDoubleFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticDoubleFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_2

    .line 83
    :cond_13
    new-instance v0, Lsun/reflect/UnsafeQualifiedStaticObjectFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedStaticObjectFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_2

    .line 87
    :cond_14
    if-nez v2, :cond_1d

    .line 88
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_15

    .line 89
    new-instance v0, Lsun/reflect/UnsafeBooleanFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeBooleanFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_2

    .line 90
    :cond_15
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_16

    .line 91
    new-instance v0, Lsun/reflect/UnsafeByteFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeByteFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_2

    .line 92
    :cond_16
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_17

    .line 93
    new-instance v0, Lsun/reflect/UnsafeShortFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeShortFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_2

    .line 94
    :cond_17
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_18

    .line 95
    new-instance v0, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeCharacterFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_2

    .line 96
    :cond_18
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_19

    .line 97
    new-instance v0, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeIntegerFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_2

    .line 98
    :cond_19
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_1a

    .line 99
    new-instance v0, Lsun/reflect/UnsafeLongFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeLongFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_2

    .line 100
    :cond_1a
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_1b

    .line 101
    new-instance v0, Lsun/reflect/UnsafeFloatFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeFloatFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_2

    .line 102
    :cond_1b
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_1c

    .line 103
    new-instance v0, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeDoubleFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_2

    .line 105
    :cond_1c
    new-instance v0, Lsun/reflect/UnsafeObjectFieldAccessorImpl;

    invoke-direct {v0, p0}, Lsun/reflect/UnsafeObjectFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_2

    .line 108
    :cond_1d
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_1e

    .line 109
    new-instance v0, Lsun/reflect/UnsafeQualifiedBooleanFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedBooleanFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_2

    .line 110
    :cond_1e
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_1f

    .line 111
    new-instance v0, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedByteFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_2

    .line 112
    :cond_1f
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_20

    .line 113
    new-instance v0, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedShortFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_2

    .line 114
    :cond_20
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_21

    .line 115
    new-instance v0, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedCharacterFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_2

    .line 116
    :cond_21
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_22

    .line 117
    new-instance v0, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedIntegerFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_2

    .line 118
    :cond_22
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_23

    .line 119
    new-instance v0, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedLongFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_2

    .line 120
    :cond_23
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_24

    .line 121
    new-instance v0, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedFloatFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_2

    .line 122
    :cond_24
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_25

    .line 123
    new-instance v0, Lsun/reflect/UnsafeQualifiedDoubleFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedDoubleFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_2

    .line 125
    :cond_25
    new-instance v0, Lsun/reflect/UnsafeQualifiedObjectFieldAccessorImpl;

    invoke-direct {v0, p0, v1}, Lsun/reflect/UnsafeQualifiedObjectFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;Z)V

    goto/16 :goto_2

    :cond_26
    move v1, v0

    goto/16 :goto_1
.end method
