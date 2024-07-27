.class public final Lorg/apache/tools/zip/JarMarker;
.super Ljava/lang/Object;
.source "JarMarker.java"

# interfaces
.implements Lorg/apache/tools/zip/ZipExtraField;


# static fields
.field private static final DEFAULT:Lorg/apache/tools/zip/JarMarker;

.field private static final ID:Lorg/apache/tools/zip/ZipShort;

.field private static final NO_BYTES:[B

.field private static final NULL:Lorg/apache/tools/zip/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    const v1, 0xcafe

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/tools/zip/JarMarker;->ID:Lorg/apache/tools/zip/ZipShort;

    .line 32
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    invoke-direct {v0, v2}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/tools/zip/JarMarker;->NULL:Lorg/apache/tools/zip/ZipShort;

    .line 33
    new-array v0, v2, [B

    sput-object v0, Lorg/apache/tools/zip/JarMarker;->NO_BYTES:[B

    .line 34
    new-instance v0, Lorg/apache/tools/zip/JarMarker;

    invoke-direct {v0}, Lorg/apache/tools/zip/JarMarker;-><init>()V

    sput-object v0, Lorg/apache/tools/zip/JarMarker;->DEFAULT:Lorg/apache/tools/zip/JarMarker;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getInstance()Lorg/apache/tools/zip/JarMarker;
    .registers 1

    .line 46
    sget-object v0, Lorg/apache/tools/zip/JarMarker;->DEFAULT:Lorg/apache/tools/zip/JarMarker;

    return-object v0
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .registers 2

    .line 91
    sget-object v0, Lorg/apache/tools/zip/JarMarker;->NO_BYTES:[B

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;
    .registers 2

    .line 72
    sget-object v0, Lorg/apache/tools/zip/JarMarker;->NULL:Lorg/apache/tools/zip/ZipShort;

    return-object v0
.end method

.method public getHeaderId()Lorg/apache/tools/zip/ZipShort;
    .registers 2

    .line 54
    sget-object v0, Lorg/apache/tools/zip/JarMarker;->ID:Lorg/apache/tools/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .registers 2

    .line 82
    sget-object v0, Lorg/apache/tools/zip/JarMarker;->NO_BYTES:[B

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;
    .registers 2

    .line 63
    sget-object v0, Lorg/apache/tools/zip/JarMarker;->NULL:Lorg/apache/tools/zip/ZipShort;

    return-object v0
.end method

.method public parseFromLocalFileData([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 104
    if-nez p3, :cond_0

    .line 107
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "JarMarker doesn\'t expect any data"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
