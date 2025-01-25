.class synthetic Ljavax/lang/model/util/ElementKindVisitor6$1;
.super Ljava/lang/Object;
.source "ElementKindVisitor6.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/lang/model/util/ElementKindVisitor6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$javax$lang$model$element$ElementKind:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 132
    invoke-static {}, Ljavax/lang/model/element/ElementKind;->values()[Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljavax/lang/model/util/ElementKindVisitor6$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    :try_start_9
    sget-object v1, Ljavax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_c6

    :goto_12
    :try_start_12
    sget-object v0, Ljavax/lang/model/util/ElementKindVisitor6$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v1, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_c3

    :goto_1d
    :try_start_1d
    sget-object v0, Ljavax/lang/model/util/ElementKindVisitor6$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v1, Ljavax/lang/model/element/ElementKind;->ENUM:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_c0

    :goto_28
    :try_start_28
    sget-object v0, Ljavax/lang/model/util/ElementKindVisitor6$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v1, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_bd

    :goto_33
    :try_start_33
    sget-object v0, Ljavax/lang/model/util/ElementKindVisitor6$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v1, Ljavax/lang/model/element/ElementKind;->ENUM_CONSTANT:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_bb

    :goto_3e
    :try_start_3e
    sget-object v0, Ljavax/lang/model/util/ElementKindVisitor6$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v1, Ljavax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_b9

    :goto_49
    :try_start_49
    sget-object v0, Ljavax/lang/model/util/ElementKindVisitor6$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v1, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_b7

    :goto_54
    :try_start_54
    sget-object v0, Ljavax/lang/model/util/ElementKindVisitor6$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v1, Ljavax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_b5

    :goto_60
    :try_start_60
    sget-object v0, Ljavax/lang/model/util/ElementKindVisitor6$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v1, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_b3

    :goto_6c
    :try_start_6c
    sget-object v0, Ljavax/lang/model/util/ElementKindVisitor6$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v1, Ljavax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_b1

    :goto_78
    :try_start_78
    sget-object v0, Ljavax/lang/model/util/ElementKindVisitor6$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v1, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_af

    :goto_84
    :try_start_84
    sget-object v0, Ljavax/lang/model/util/ElementKindVisitor6$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v1, Ljavax/lang/model/element/ElementKind;->INSTANCE_INIT:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_ad

    :goto_90
    :try_start_90
    sget-object v0, Ljavax/lang/model/util/ElementKindVisitor6$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v1, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_ab

    :goto_9c
    :try_start_9c
    sget-object v0, Ljavax/lang/model/util/ElementKindVisitor6$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v1, Ljavax/lang/model/element/ElementKind;->STATIC_INIT:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a9

    :goto_a8
    return-void

    :catch_a9
    move-exception v0

    goto :goto_a8

    :catch_ab
    move-exception v0

    goto :goto_9c

    :catch_ad
    move-exception v0

    goto :goto_90

    :catch_af
    move-exception v0

    goto :goto_84

    :catch_b1
    move-exception v0

    goto :goto_78

    :catch_b3
    move-exception v0

    goto :goto_6c

    :catch_b5
    move-exception v0

    goto :goto_60

    :catch_b7
    move-exception v0

    goto :goto_54

    :catch_b9
    move-exception v0

    goto :goto_49

    :catch_bb
    move-exception v0

    goto :goto_3e

    :catch_bd
    move-exception v0

    goto/16 :goto_33

    :catch_c0
    move-exception v0

    goto/16 :goto_28

    :catch_c3
    move-exception v0

    goto/16 :goto_1d

    :catch_c6
    move-exception v0

    goto/16 :goto_12
.end method
