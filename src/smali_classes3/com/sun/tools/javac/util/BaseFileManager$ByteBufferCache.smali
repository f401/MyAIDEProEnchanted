.class Lcom/sun/tools/javac/util/BaseFileManager$ByteBufferCache;
.super Ljava/lang/Object;
.source "BaseFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/BaseFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteBufferCache"
.end annotation


# instance fields
.field private cached:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/tools/javac/util/BaseFileManager$1;)V
    .registers 2

    .line 304
    invoke-direct {p0}, Lcom/sun/tools/javac/util/BaseFileManager$ByteBufferCache;-><init>()V

    return-void
.end method


# virtual methods
.method get(I)Ljava/nio/ByteBuffer;
    .registers 4

    const/16 v0, 0x5000

    .line 307
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager$ByteBufferCache;->cached:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-lt v0, p1, :cond_1

    .line 310
    iget-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager$ByteBufferCache;->cached:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 312
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/tools/javac/util/BaseFileManager$ByteBufferCache;->cached:Ljava/nio/ByteBuffer;

    .line 313
    return-object v0

    .line 311
    :cond_1
    add-int v0, p1, p1

    shr-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lcom/sun/tools/javac/util/BaseFileManager$ByteBufferCache;->cached:Ljava/nio/ByteBuffer;

    .line 317
    return-void
.end method
