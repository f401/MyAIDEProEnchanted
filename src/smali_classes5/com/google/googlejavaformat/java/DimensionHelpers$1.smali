.class synthetic Lcom/google/googlejavaformat/java/DimensionHelpers$1;
.super Ljava/lang/Object;
.source "DimensionHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/DimensionHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$com$sun$source$tree$Tree$Kind:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 95
    invoke-static {}, Lcom/sun/source/tree/Tree$Kind;->values()[Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/googlejavaformat/java/DimensionHelpers$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    :try_start_9
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    goto :goto_12
.end method
