.class final Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;
.super Ljava/lang/Object;
.source "ZipOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/zip/ZipOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurrentEntry"
.end annotation


# instance fields
.field private bytesRead:J

.field private causedUseOfZip64:Z

.field private dataStart:J

.field private final entry:Lorg/apache/tools/zip/ZipEntry;

.field private hasWritten:Z

.field private localDataStart:J


# direct methods
.method private constructor <init>(Lorg/apache/tools/zip/ZipEntry;)V
    .registers 4

    const-wide/16 v0, 0x0

    .line 1724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1735
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->localDataStart:J

    .line 1739
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->dataStart:J

    .line 1744
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->bytesRead:J

    .line 1748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->causedUseOfZip64:Z

    .line 1725
    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 1726
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/zip/ZipEntry;Lorg/apache/tools/zip/ZipOutputStream$1;)V
    .registers 3

    .line 1723
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;-><init>(Lorg/apache/tools/zip/ZipEntry;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Lorg/apache/tools/zip/ZipEntry;
    .registers 2

    .line 1723
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->entry:Lorg/apache/tools/zip/ZipEntry;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)J
    .registers 3

    .line 1723
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->dataStart:J

    return-wide v0
.end method

.method static synthetic access$102(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;J)J
    .registers 4

    .line 1723
    iput-wide p1, p0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->dataStart:J

    return-wide p1
.end method

.method static synthetic access$200(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Z
    .registers 2

    .line 1723
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->hasWritten:Z

    return v0
.end method

.method static synthetic access$202(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;Z)Z
    .registers 2

    .line 1723
    iput-boolean p1, p0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->hasWritten:Z

    return p1
.end method

.method static synthetic access$300(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)J
    .registers 3

    .line 1723
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->bytesRead:J

    return-wide v0
.end method

.method static synthetic access$314(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;J)J
    .registers 6

    .line 1723
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->bytesRead:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)J
    .registers 3

    .line 1723
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->localDataStart:J

    return-wide v0
.end method

.method static synthetic access$402(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;J)J
    .registers 4

    .line 1723
    iput-wide p1, p0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->localDataStart:J

    return-wide p1
.end method

.method static synthetic access$500(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;)Z
    .registers 2

    .line 1723
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->causedUseOfZip64:Z

    return v0
.end method

.method static synthetic access$502(Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;Z)Z
    .registers 2

    .line 1723
    iput-boolean p1, p0, Lorg/apache/tools/zip/ZipOutputStream$CurrentEntry;->causedUseOfZip64:Z

    return p1
.end method
