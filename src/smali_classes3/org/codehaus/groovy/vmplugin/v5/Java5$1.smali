.class synthetic Lorg/codehaus/groovy/vmplugin/v5/Java5$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/vmplugin/v5/Java5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final DW:[I

.field static final j6:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Ljava/lang/annotation/ElementType;->values()[Ljava/lang/annotation/ElementType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/codehaus/groovy/vmplugin/v5/Java5$1;->DW:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v2}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lorg/codehaus/groovy/vmplugin/v5/Java5$1;->DW:[I

    sget-object v3, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    invoke-virtual {v3}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    :goto_21
    const/4 v2, 0x3

    :try_start_22
    sget-object v3, Lorg/codehaus/groovy/vmplugin/v5/Java5$1;->DW:[I

    sget-object v4, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    invoke-virtual {v4}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    :goto_2e
    :try_start_2e
    sget-object v3, Lorg/codehaus/groovy/vmplugin/v5/Java5$1;->DW:[I

    sget-object v4, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    invoke-virtual {v4}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v3

    :goto_3b
    :try_start_3b
    sget-object v3, Lorg/codehaus/groovy/vmplugin/v5/Java5$1;->DW:[I

    sget-object v4, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    invoke-virtual {v4}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v3

    :goto_48
    :try_start_48
    sget-object v3, Lorg/codehaus/groovy/vmplugin/v5/Java5$1;->DW:[I

    sget-object v4, Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v4}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v3

    :goto_55
    :try_start_55
    sget-object v3, Lorg/codehaus/groovy/vmplugin/v5/Java5$1;->DW:[I

    sget-object v4, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v4}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v3

    :goto_62
    :try_start_62
    sget-object v3, Lorg/codehaus/groovy/vmplugin/v5/Java5$1;->DW:[I

    sget-object v4, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v4}, Ljava/lang/annotation/ElementType;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v3

    :goto_70
    invoke-static {}, Ljava/lang/annotation/RetentionPolicy;->values()[Ljava/lang/annotation/RetentionPolicy;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/codehaus/groovy/vmplugin/v5/Java5$1;->j6:[I

    :try_start_79
    sget-object v4, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    invoke-virtual {v4}, Ljava/lang/annotation/RetentionPolicy;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_81} :catch_82

    goto :goto_83

    :catch_82
    move-exception v1

    :goto_83
    :try_start_83
    sget-object v1, Lorg/codehaus/groovy/vmplugin/v5/Java5$1;->j6:[I

    sget-object v3, Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;

    invoke-virtual {v3}, Ljava/lang/annotation/RetentionPolicy;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8d} :catch_8e

    goto :goto_8f

    :catch_8e
    move-exception v0

    :goto_8f
    :try_start_8f
    sget-object v0, Lorg/codehaus/groovy/vmplugin/v5/Java5$1;->j6:[I

    sget-object v1, Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;

    invoke-virtual {v1}, Ljava/lang/annotation/RetentionPolicy;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_99} :catch_9a

    goto :goto_9b

    :catch_9a
    move-exception v0

    :goto_9b
    return-void
.end method
