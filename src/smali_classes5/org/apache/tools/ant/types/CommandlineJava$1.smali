.class synthetic Lorg/apache/tools/ant/types/CommandlineJava$1;
.super Ljava/lang/Object;
.source "CommandlineJava.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/CommandlineJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$org$apache$tools$ant$types$CommandlineJava$ExecutableType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 360
    invoke-static {}, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->values()[Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/tools/ant/types/CommandlineJava$1;->$SwitchMap$org$apache$tools$ant$types$CommandlineJava$ExecutableType:[I

    :try_start_9
    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->CLASS:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_2d

    :goto_12
    :try_start_12
    sget-object v0, Lorg/apache/tools/ant/types/CommandlineJava$1;->$SwitchMap$org$apache$tools$ant$types$CommandlineJava$ExecutableType:[I

    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->MODULE:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_2b

    :goto_1d
    :try_start_1d
    sget-object v0, Lorg/apache/tools/ant/types/CommandlineJava$1;->$SwitchMap$org$apache$tools$ant$types$CommandlineJava$ExecutableType:[I

    sget-object v1, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->JAR:Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava$ExecutableType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_29

    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28

    :catch_2b
    move-exception v0

    goto :goto_1d

    :catch_2d
    move-exception v0

    goto :goto_12
.end method
