.class Lorg/apache/tools/zip/ZipEncodingHelper$SimpleEncodingHolder;
.super Ljava/lang/Object;
.source "ZipEncodingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/zip/ZipEncodingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleEncodingHolder"
.end annotation


# instance fields
.field private encoding:Lorg/apache/tools/zip/Simple8BitZipEncoding;

.field private final highChars:[C


# direct methods
.method constructor <init>([C)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/tools/zip/ZipEncodingHelper$SimpleEncodingHolder;->highChars:[C

    .line 53
    return-void
.end method


# virtual methods
.method public getEncoding()Lorg/apache/tools/zip/Simple8BitZipEncoding;
    .registers 3

    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEncodingHelper$SimpleEncodingHolder;->encoding:Lorg/apache/tools/zip/Simple8BitZipEncoding;

    if-nez v0, :cond_e

    .line 61
    new-instance v0, Lorg/apache/tools/zip/Simple8BitZipEncoding;

    iget-object v1, p0, Lorg/apache/tools/zip/ZipEncodingHelper$SimpleEncodingHolder;->highChars:[C

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/Simple8BitZipEncoding;-><init>([C)V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipEncodingHelper$SimpleEncodingHolder;->encoding:Lorg/apache/tools/zip/Simple8BitZipEncoding;

    .line 63
    :cond_e
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEncodingHelper$SimpleEncodingHolder;->encoding:Lorg/apache/tools/zip/Simple8BitZipEncoding;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    .line 59
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
