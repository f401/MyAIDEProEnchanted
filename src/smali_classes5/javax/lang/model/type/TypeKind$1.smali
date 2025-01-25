.class synthetic Ljavax/lang/model/type/TypeKind$1;
.super Ljava/lang/Object;
.source "TypeKind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/lang/model/type/TypeKind;
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

    .line 155
    invoke-static {}, Ljavax/lang/model/type/TypeKind;->values()[Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljavax/lang/model/type/TypeKind$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    :try_start_9
    sget-object v1, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_6f

    :goto_12
    :try_start_12
    sget-object v0, Ljavax/lang/model/type/TypeKind$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_6d

    :goto_1d
    :try_start_1d
    sget-object v0, Ljavax/lang/model/type/TypeKind$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_6b

    :goto_28
    :try_start_28
    sget-object v0, Ljavax/lang/model/type/TypeKind$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_69

    :goto_33
    :try_start_33
    sget-object v0, Ljavax/lang/model/type/TypeKind$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_67

    :goto_3e
    :try_start_3e
    sget-object v0, Ljavax/lang/model/type/TypeKind$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_65

    :goto_49
    :try_start_49
    sget-object v0, Ljavax/lang/model/type/TypeKind$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->FLOAT:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_63

    :goto_54
    :try_start_54
    sget-object v0, Ljavax/lang/model/type/TypeKind$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DOUBLE:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_61

    :goto_60
    return-void

    :catch_61
    move-exception v0

    goto :goto_60

    :catch_63
    move-exception v0

    goto :goto_54

    :catch_65
    move-exception v0

    goto :goto_49

    :catch_67
    move-exception v0

    goto :goto_3e

    :catch_69
    move-exception v0

    goto :goto_33

    :catch_6b
    move-exception v0

    goto :goto_28

    :catch_6d
    move-exception v0

    goto :goto_1d

    :catch_6f
    move-exception v0

    goto :goto_12
.end method
