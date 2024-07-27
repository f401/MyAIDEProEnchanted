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

    :try_start_0
    sget-object v1, Lcom/sun/tools/javac/code/Kinds$KindName;->METHOD:Lcom/sun/tools/javac/code/Kinds$KindName;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Kinds$KindName;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sun/tools/javac/comp/Resolve$3;->$SwitchMap$com$sun$tools$javac$code$Kinds$KindName:[I

    sget-object v1, Lcom/sun/tools/javac/code/Kinds$KindName;->CONSTRUCTOR:Lcom/sun/tools/javac/code/Kinds$KindName;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Kinds$KindName;->ordinal()I

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
