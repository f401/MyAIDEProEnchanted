.class synthetic Lcom/sun/tools/javac/api/JavacTrees$2;
.super Ljava/lang/Object;
.source "JavacTrees.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/api/JavacTrees;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$com$sun$source$tree$Tree$Kind:[I

.field static final $SwitchMap$javax$tools$Diagnostic$Kind:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 409
    invoke-static {}, Ljavax/tools/Diagnostic$Kind;->values()[Ljavax/tools/Diagnostic$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/tools/javac/api/JavacTrees$2;->$SwitchMap$javax$tools$Diagnostic$Kind:[I

    :try_start_9
    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-virtual {v1}, Ljavax/tools/Diagnostic$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_9d

    :goto_12
    :try_start_12
    sget-object v0, Lcom/sun/tools/javac/api/JavacTrees$2;->$SwitchMap$javax$tools$Diagnostic$Kind:[I

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    invoke-virtual {v1}, Ljavax/tools/Diagnostic$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_9b

    :goto_1d
    :try_start_1d
    sget-object v0, Lcom/sun/tools/javac/api/JavacTrees$2;->$SwitchMap$javax$tools$Diagnostic$Kind:[I

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->MANDATORY_WARNING:Ljavax/tools/Diagnostic$Kind;

    invoke-virtual {v1}, Ljavax/tools/Diagnostic$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_99

    .line 294
    :goto_28
    invoke-static {}, Lcom/sun/source/tree/Tree$Kind;->values()[Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/tools/javac/api/JavacTrees$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    :try_start_31
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->COMPILATION_UNIT:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3a} :catch_97

    :goto_3a
    :try_start_3a
    sget-object v0, Lcom/sun/tools/javac/api/JavacTrees$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ANNOTATION_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_45} :catch_95

    :goto_45
    :try_start_45
    sget-object v0, Lcom/sun/tools/javac/api/JavacTrees$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_50} :catch_93

    :goto_50
    :try_start_50
    sget-object v0, Lcom/sun/tools/javac/api/JavacTrees$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ENUM:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5b} :catch_91

    :goto_5b
    :try_start_5b
    sget-object v0, Lcom/sun/tools/javac/api/JavacTrees$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->INTERFACE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_66} :catch_8f

    :goto_66
    :try_start_66
    sget-object v0, Lcom/sun/tools/javac/api/JavacTrees$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_71} :catch_8d

    :goto_71
    :try_start_71
    sget-object v0, Lcom/sun/tools/javac/api/JavacTrees$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7c} :catch_8b

    :goto_7c
    :try_start_7c
    sget-object v0, Lcom/sun/tools/javac/api/JavacTrees$2;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_88} :catch_89

    :goto_88
    return-void

    :catch_89
    move-exception v0

    goto :goto_88

    :catch_8b
    move-exception v0

    goto :goto_7c

    :catch_8d
    move-exception v0

    goto :goto_71

    :catch_8f
    move-exception v0

    goto :goto_66

    :catch_91
    move-exception v0

    goto :goto_5b

    :catch_93
    move-exception v0

    goto :goto_50

    :catch_95
    move-exception v0

    goto :goto_45

    :catch_97
    move-exception v0

    goto :goto_3a

    .line 409
    :catch_99
    move-exception v0

    goto :goto_28

    :catch_9b
    move-exception v0

    goto :goto_1d

    :catch_9d
    move-exception v0

    goto/16 :goto_12
.end method
