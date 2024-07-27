.class synthetic Lcom/sun/tools/javac/comp/Lower$7;
.super Ljava/lang/Object;
.source "Lower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Lower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$com$sun$tools$javac$main$RecognizedOptions$PkgInfo:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 2229
    invoke-static {}, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->values()[Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/tools/javac/comp/Lower$7;->$SwitchMap$com$sun$tools$javac$main$RecognizedOptions$PkgInfo:[I

    :try_start_0
    sget-object v1, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->ALWAYS:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    invoke-virtual {v1}, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sun/tools/javac/comp/Lower$7;->$SwitchMap$com$sun$tools$javac$main$RecognizedOptions$PkgInfo:[I

    sget-object v1, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->LEGACY:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    invoke-virtual {v1}, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sun/tools/javac/comp/Lower$7;->$SwitchMap$com$sun$tools$javac$main$RecognizedOptions$PkgInfo:[I

    sget-object v1, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->NONEMPTY:Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;

    invoke-virtual {v1}, Lcom/sun/tools/javac/main/RecognizedOptions$PkgInfo;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
