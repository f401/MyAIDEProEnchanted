.class synthetic Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;
.super Ljava/lang/Object;
.source "TypeAnnotationPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/TypeAnnotationPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$com$sun$tools$javac$code$TargetType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 74
    invoke-static {}, Lcom/sun/tools/javac/code/TargetType;->values()[Lcom/sun/tools/javac/code/TargetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    :try_start_9
    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->TYPECAST:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_1b6

    :goto_12
    :try_start_12
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->TYPECAST_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1b3

    :goto_1d
    :try_start_1d
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->INSTANCEOF:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_1b0

    :goto_28
    :try_start_28
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->INSTANCEOF_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_1ad

    :goto_33
    :try_start_33
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->NEW:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_1aa

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->NEW_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_1a7

    :goto_49
    :try_start_49
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->NEW_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_1a4

    :goto_54
    :try_start_54
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->NEW_TYPE_ARGUMENT_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_1a1

    :goto_60
    :try_start_60
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->LOCAL_VARIABLE:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_19e

    :goto_6c
    :try_start_6c
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->LOCAL_VARIABLE_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_19b

    :goto_78
    :try_start_78
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_RECEIVER:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_198

    :goto_84
    :try_start_84
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_195

    :goto_90
    :try_start_90
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_192

    :goto_9c
    :try_start_9c
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_18f

    :goto_a8
    :try_start_a8
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->CLASS_TYPE_PARAMETER_BOUND_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_18c

    :goto_b4
    :try_start_b4
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER_BOUND:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_189

    :goto_c0
    :try_start_c0
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_PARAMETER_BOUND_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_186

    :goto_cc
    :try_start_cc
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->WILDCARD_BOUND:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_183

    :goto_d8
    :try_start_d8
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->WILDCARD_BOUND_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_e4} :catch_180

    :goto_e4
    :try_start_e4
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->CLASS_EXTENDS:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_f0} :catch_17d

    :goto_f0
    :try_start_f0
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->CLASS_EXTENDS_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fc} :catch_17b

    :goto_fc
    :try_start_fc
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->THROWS:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_108} :catch_179

    :goto_108
    :try_start_108
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->CLASS_LITERAL:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_108 .. :try_end_114} :catch_177

    :goto_114
    :try_start_114
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->CLASS_LITERAL_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_120
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_120} :catch_175

    :goto_120
    :try_start_120
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_PARAMETER_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_120 .. :try_end_12c} :catch_173

    :goto_12c
    :try_start_12c
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_138
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_138} :catch_171

    :goto_138
    :try_start_138
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_TYPE_ARGUMENT_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_144
    .catch Ljava/lang/NoSuchFieldError; {:try_start_138 .. :try_end_144} :catch_16f

    :goto_144
    :try_start_144
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->METHOD_RETURN_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_144 .. :try_end_150} :catch_16d

    :goto_150
    :try_start_150
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->FIELD_GENERIC_OR_ARRAY:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_15c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15c} :catch_16b

    :goto_15c
    :try_start_15c
    sget-object v0, Lcom/sun/tools/javac/code/TypeAnnotationPosition$1;->$SwitchMap$com$sun$tools$javac$code$TargetType:[I

    sget-object v1, Lcom/sun/tools/javac/code/TargetType;->UNKNOWN:Lcom/sun/tools/javac/code/TargetType;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/TargetType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_168
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15c .. :try_end_168} :catch_169

    :goto_168
    return-void

    :catch_169
    move-exception v0

    goto :goto_168

    :catch_16b
    move-exception v0

    goto :goto_15c

    :catch_16d
    move-exception v0

    goto :goto_150

    :catch_16f
    move-exception v0

    goto :goto_144

    :catch_171
    move-exception v0

    goto :goto_138

    :catch_173
    move-exception v0

    goto :goto_12c

    :catch_175
    move-exception v0

    goto :goto_120

    :catch_177
    move-exception v0

    goto :goto_114

    :catch_179
    move-exception v0

    goto :goto_108

    :catch_17b
    move-exception v0

    goto :goto_fc

    :catch_17d
    move-exception v0

    goto/16 :goto_f0

    :catch_180
    move-exception v0

    goto/16 :goto_e4

    :catch_183
    move-exception v0

    goto/16 :goto_d8

    :catch_186
    move-exception v0

    goto/16 :goto_cc

    :catch_189
    move-exception v0

    goto/16 :goto_c0

    :catch_18c
    move-exception v0

    goto/16 :goto_b4

    :catch_18f
    move-exception v0

    goto/16 :goto_a8

    :catch_192
    move-exception v0

    goto/16 :goto_9c

    :catch_195
    move-exception v0

    goto/16 :goto_90

    :catch_198
    move-exception v0

    goto/16 :goto_84

    :catch_19b
    move-exception v0

    goto/16 :goto_78

    :catch_19e
    move-exception v0

    goto/16 :goto_6c

    :catch_1a1
    move-exception v0

    goto/16 :goto_60

    :catch_1a4
    move-exception v0

    goto/16 :goto_54

    :catch_1a7
    move-exception v0

    goto/16 :goto_49

    :catch_1aa
    move-exception v0

    goto/16 :goto_3e

    :catch_1ad
    move-exception v0

    goto/16 :goto_33

    :catch_1b0
    move-exception v0

    goto/16 :goto_28

    :catch_1b3
    move-exception v0

    goto/16 :goto_1d

    :catch_1b6
    move-exception v0

    goto/16 :goto_12
.end method
