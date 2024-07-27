.class synthetic Lcom/sun/tools/javac/processing/JavacFiler$1;
.super Ljava/lang/Object;
.source "JavacFiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/JavacFiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$javax$tools$JavaFileObject$Kind:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 632
    invoke-static {}, Ljavax/tools/JavaFileObject$Kind;->values()[Ljavax/tools/JavaFileObject$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/tools/javac/processing/JavacFiler$1;->$SwitchMap$javax$tools$JavaFileObject$Kind:[I

    :try_start_0
    sget-object v1, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    invoke-virtual {v1}, Ljavax/tools/JavaFileObject$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sun/tools/javac/processing/JavacFiler$1;->$SwitchMap$javax$tools$JavaFileObject$Kind:[I

    sget-object v1, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    invoke-virtual {v1}, Ljavax/tools/JavaFileObject$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
