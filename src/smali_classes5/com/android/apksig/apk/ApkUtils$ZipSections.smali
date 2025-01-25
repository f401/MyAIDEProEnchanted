.class public Lcom/android/apksig/apk/ApkUtils$ZipSections;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/apk/ApkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipSections"
.end annotation


# instance fields
.field private final mCentralDirectoryOffset:J

.field private final mCentralDirectoryRecordCount:I

.field private final mCentralDirectorySizeBytes:J

.field private final mEocd:Ljava/nio/ByteBuffer;

.field private final mEocdOffset:J


# direct methods
.method public constructor <init>(JJIJLjava/nio/ByteBuffer;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/apksig/apk/ApkUtils$ZipSections;->mCentralDirectoryOffset:J

    iput-wide p3, p0, Lcom/android/apksig/apk/ApkUtils$ZipSections;->mCentralDirectorySizeBytes:J

    iput p5, p0, Lcom/android/apksig/apk/ApkUtils$ZipSections;->mCentralDirectoryRecordCount:I

    iput-wide p6, p0, Lcom/android/apksig/apk/ApkUtils$ZipSections;->mEocdOffset:J

    iput-object p8, p0, Lcom/android/apksig/apk/ApkUtils$ZipSections;->mEocd:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getZipCentralDirectoryOffset()J
    .registers 3

    iget-wide v0, p0, Lcom/android/apksig/apk/ApkUtils$ZipSections;->mCentralDirectoryOffset:J

    return-wide v0
.end method

.method public getZipCentralDirectoryRecordCount()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/apk/ApkUtils$ZipSections;->mCentralDirectoryRecordCount:I

    return v0
.end method

.method public getZipCentralDirectorySizeBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/android/apksig/apk/ApkUtils$ZipSections;->mCentralDirectorySizeBytes:J

    return-wide v0
.end method

.method public getZipEndOfCentralDirectory()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/apk/ApkUtils$ZipSections;->mEocd:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getZipEndOfCentralDirectoryOffset()J
    .registers 3

    iget-wide v0, p0, Lcom/android/apksig/apk/ApkUtils$ZipSections;->mEocdOffset:J

    return-wide v0
.end method
