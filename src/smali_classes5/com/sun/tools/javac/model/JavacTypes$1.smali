.class synthetic Lcom/sun/tools/javac/model/JavacTypes$1;
.super Ljava/lang/Object;
.source "JavacTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/model/JavacTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$javax$lang$model$type$TypeKind:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 75
    invoke-static {}, Ljavax/lang/model/type/TypeKind;->values()[Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    :try_start_9
    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_f3

    :goto_12
    :try_start_12
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ERROR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_f0

    :goto_1d
    :try_start_1d
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_ed

    :goto_28
    :try_start_28
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_ea

    :goto_33
    :try_start_33
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_e7

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_e4

    :goto_49
    :try_start_49
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_e1

    :goto_54
    :try_start_54
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_df

    :goto_60
    :try_start_60
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_dd

    :goto_6c
    :try_start_6c
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->FLOAT:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_db

    :goto_78
    :try_start_78
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DOUBLE:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_d9

    :goto_84
    :try_start_84
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_d7

    :goto_90
    :try_start_90
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_d5

    :goto_9c
    :try_start_9c
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->EXECUTABLE:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_d3

    :goto_a8
    :try_start_a8
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_d1

    :goto_b4
    :try_start_b4
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->PACKAGE:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_cf

    :goto_c0
    :try_start_c0
    sget-object v0, Lcom/sun/tools/javac/model/JavacTypes$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cd

    :goto_cc
    return-void

    :catch_cd
    move-exception v0

    goto :goto_cc

    :catch_cf
    move-exception v0

    goto :goto_c0

    :catch_d1
    move-exception v0

    goto :goto_b4

    :catch_d3
    move-exception v0

    goto :goto_a8

    :catch_d5
    move-exception v0

    goto :goto_9c

    :catch_d7
    move-exception v0

    goto :goto_90

    :catch_d9
    move-exception v0

    goto :goto_84

    :catch_db
    move-exception v0

    goto :goto_78

    :catch_dd
    move-exception v0

    goto :goto_6c

    :catch_df
    move-exception v0

    goto :goto_60

    :catch_e1
    move-exception v0

    goto/16 :goto_54

    :catch_e4
    move-exception v0

    goto/16 :goto_49

    :catch_e7
    move-exception v0

    goto/16 :goto_3e

    :catch_ea
    move-exception v0

    goto/16 :goto_33

    :catch_ed
    move-exception v0

    goto/16 :goto_28

    :catch_f0
    move-exception v0

    goto/16 :goto_1d

    :catch_f3
    move-exception v0

    goto/16 :goto_12
.end method
