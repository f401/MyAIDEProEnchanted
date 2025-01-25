.class synthetic Lcom/sun/tools/javac/jvm/ClassWriter$1;
.super Ljava/lang/Object;
.source "ClassWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$com$sun$tools$javac$code$BoundKind:[I

.field static final $SwitchMap$com$sun$tools$javac$code$RetentionPolicy:[I

.field static final $SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1164
    invoke-static {}, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->values()[Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat:[I

    :try_start_9
    sget-object v1, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->CLDC:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_7c

    :goto_12
    :try_start_12
    sget-object v0, Lcom/sun/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat:[I

    sget-object v1, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->JSR202:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_7a

    .line 740
    :goto_1d
    invoke-static {}, Lcom/sun/tools/javac/code/RetentionPolicy;->values()[Lcom/sun/tools/javac/code/RetentionPolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$RetentionPolicy:[I

    :try_start_26
    sget-object v1, Lcom/sun/tools/javac/code/RetentionPolicy;->SOURCE:Lcom/sun/tools/javac/code/RetentionPolicy;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/RetentionPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2f} :catch_78

    :goto_2f
    :try_start_2f
    sget-object v0, Lcom/sun/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$RetentionPolicy:[I

    sget-object v1, Lcom/sun/tools/javac/code/RetentionPolicy;->CLASS:Lcom/sun/tools/javac/code/RetentionPolicy;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/RetentionPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_3a} :catch_76

    :goto_3a
    :try_start_3a
    sget-object v0, Lcom/sun/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$RetentionPolicy:[I

    sget-object v1, Lcom/sun/tools/javac/code/RetentionPolicy;->RUNTIME:Lcom/sun/tools/javac/code/RetentionPolicy;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/RetentionPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_45} :catch_74

    .line 356
    :goto_45
    invoke-static {}, Lcom/sun/tools/javac/code/BoundKind;->values()[Lcom/sun/tools/javac/code/BoundKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$BoundKind:[I

    :try_start_4e
    sget-object v1, Lcom/sun/tools/javac/code/BoundKind;->SUPER:Lcom/sun/tools/javac/code/BoundKind;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/BoundKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_57} :catch_72

    :goto_57
    :try_start_57
    sget-object v0, Lcom/sun/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$BoundKind:[I

    sget-object v1, Lcom/sun/tools/javac/code/BoundKind;->EXTENDS:Lcom/sun/tools/javac/code/BoundKind;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/BoundKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_62} :catch_70

    :goto_62
    :try_start_62
    sget-object v0, Lcom/sun/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$BoundKind:[I

    sget-object v1, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/BoundKind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6d} :catch_6e

    :goto_6d
    return-void

    :catch_6e
    move-exception v0

    goto :goto_6d

    :catch_70
    move-exception v0

    goto :goto_62

    :catch_72
    move-exception v0

    goto :goto_57

    .line 740
    :catch_74
    move-exception v0

    goto :goto_45

    :catch_76
    move-exception v0

    goto :goto_3a

    :catch_78
    move-exception v0

    goto :goto_2f

    .line 1164
    :catch_7a
    move-exception v0

    goto :goto_1d

    :catch_7c
    move-exception v0

    goto :goto_12
.end method
