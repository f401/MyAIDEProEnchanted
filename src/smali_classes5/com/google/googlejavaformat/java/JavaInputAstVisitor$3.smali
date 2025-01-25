.class synthetic Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;
.super Ljava/lang/Object;
.source "JavaInputAstVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/JavaInputAstVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$com$sun$source$tree$Tree$Kind:[I

.field static final $SwitchMap$javax$lang$model$type$TypeKind:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1544
    invoke-static {}, Ljavax/lang/model/type/TypeKind;->values()[Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    :try_start_9
    sget-object v1, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12f

    :goto_12
    :try_start_12
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_12c

    :goto_1d
    :try_start_1d
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_129

    :goto_28
    :try_start_28
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_126

    :goto_33
    :try_start_33
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_123

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_120

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->FLOAT:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_11d

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DOUBLE:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_11a

    :goto_60
    :try_start_60
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Ljavax/lang/model/type/TypeKind;->VOID:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_117

    .line 342
    :goto_6c
    invoke-static {}, Lcom/sun/source/tree/Tree$Kind;->values()[Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    :try_start_75
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ANNOTATION_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7e} :catch_114

    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_111

    :goto_89
    :try_start_89
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->INTERFACE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_10f

    :goto_94
    :try_start_94
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ENUM:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_10d

    :goto_9f
    :try_start_9f
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->UNARY_MINUS:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_aa} :catch_10b

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->UNARY_PLUS:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b5} :catch_109

    :goto_b5
    :try_start_b5
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_c0} :catch_107

    :goto_c0
    :try_start_c0
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_105

    :goto_cc
    :try_start_cc
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_103

    :goto_d8
    :try_start_d8
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_e4} :catch_101

    :goto_e4
    :try_start_e4
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->STRING_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_f0} :catch_ff

    :goto_f0
    :try_start_f0
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->PLUS:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fc} :catch_fd

    :goto_fc
    return-void

    :catch_fd
    move-exception v0

    goto :goto_fc

    :catch_ff
    move-exception v0

    goto :goto_f0

    :catch_101
    move-exception v0

    goto :goto_e4

    :catch_103
    move-exception v0

    goto :goto_d8

    :catch_105
    move-exception v0

    goto :goto_cc

    :catch_107
    move-exception v0

    goto :goto_c0

    :catch_109
    move-exception v0

    goto :goto_b5

    :catch_10b
    move-exception v0

    goto :goto_aa

    :catch_10d
    move-exception v0

    goto :goto_9f

    :catch_10f
    move-exception v0

    goto :goto_94

    :catch_111
    move-exception v0

    goto/16 :goto_89

    :catch_114
    move-exception v0

    goto/16 :goto_7e

    .line 1544
    :catch_117
    move-exception v0

    goto/16 :goto_6c

    :catch_11a
    move-exception v0

    goto/16 :goto_60

    :catch_11d
    move-exception v0

    goto/16 :goto_54

    :catch_120
    move-exception v0

    goto/16 :goto_49

    :catch_123
    move-exception v0

    goto/16 :goto_3e

    :catch_126
    move-exception v0

    goto/16 :goto_33

    :catch_129
    move-exception v0

    goto/16 :goto_28

    :catch_12c
    move-exception v0

    goto/16 :goto_1d

    :catch_12f
    move-exception v0

    goto/16 :goto_12
.end method
