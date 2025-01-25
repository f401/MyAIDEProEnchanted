.class synthetic Lcom/sun/tools/javac/comp/Resolve$3;
.super Ljava/lang/Object;
.source "Resolve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$com$sun$tools$javac$code$Kinds$KindName:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 2013
    invoke-static {}, Lcom/sun/tools/javac/code/Kinds$KindName;->values()[Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/tools/javac/comp/Resolve$3;->$SwitchMap$com$sun$tools$javac$code$Kinds$KindName:[I

    :try_start_9
    sget-object v1, Lcom/sun/tools/javac/code/Kinds$KindName;->METHOD:Lcom/sun/tools/javac/code/Kinds$KindName;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Kinds$KindName;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_20

    :goto_12
    :try_start_12
    sget-object v0, Lcom/sun/tools/javac/comp/Resolve$3;->$SwitchMap$com$sun$tools$javac$code$Kinds$KindName:[I

    sget-object v1, Lcom/sun/tools/javac/code/Kinds$KindName;->CONSTRUCTOR:Lcom/sun/tools/javac/code/Kinds$KindName;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Kinds$KindName;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1e

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    goto :goto_1d

    :catch_20
    move-exception v0

    goto :goto_12
.end method
