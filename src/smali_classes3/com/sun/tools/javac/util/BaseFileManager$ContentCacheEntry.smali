.class public Lcom/sun/tools/javac/util/BaseFileManager$ContentCacheEntry;
.super Ljava/lang/Object;
.source "BaseFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/BaseFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ContentCacheEntry"
.end annotation


# instance fields
.field final ref:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/nio/CharBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final timestamp:J


# direct methods
.method constructor <init>(Ljavax/tools/JavaFileObject;Ljava/nio/CharBuffer;)V
    .registers 5

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    invoke-interface {p1}, Ljavax/tools/JavaFileObject;->getLastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/tools/javac/util/BaseFileManager$ContentCacheEntry;->timestamp:J

    .line 354
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager$ContentCacheEntry;->ref:Ljava/lang/ref/SoftReference;

    .line 355
    return-void
.end method


# virtual methods
.method getValue()Ljava/nio/CharBuffer;
    .registers 2

    .line 362
    iget-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager$ContentCacheEntry;->ref:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    return-object v0
.end method

.method isValid(Ljavax/tools/JavaFileObject;)Z
    .registers 6

    .line 358
    iget-wide v0, p0, Lcom/sun/tools/javac/util/BaseFileManager$ContentCacheEntry;->timestamp:J

    invoke-interface {p1}, Ljavax/tools/JavaFileObject;->getLastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
