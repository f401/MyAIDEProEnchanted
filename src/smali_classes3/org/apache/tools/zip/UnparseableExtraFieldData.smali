.class public final Lorg/apache/tools/zip/UnparseableExtraFieldData;
.super Ljava/lang/Object;
.source "UnparseableExtraFieldData.java"

# interfaces
.implements Lorg/apache/tools/zip/CentralDirectoryParsingZipExtraField;


# static fields
.field private static final HEADER_ID:Lorg/apache/tools/zip/ZipShort;


# instance fields
.field private centralDirectoryData:[B

.field private localFileData:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    const v1, 0xacc1

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/tools/zip/UnparseableExtraFieldData;->HEADER_ID:Lorg/apache/tools/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .registers 2

    .line 83
    iget-object v0, p0, Lorg/apache/tools/zip/UnparseableExtraFieldData;->centralDirectoryData:[B

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lorg/apache/tools/zip/UnparseableExtraFieldData;->getLocalFileDataData()[B

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 84
    :cond_0
    invoke-static {v0}, Lorg/apache/tools/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;
    .registers 3

    .line 63
    iget-object v1, p0, Lorg/apache/tools/zip/UnparseableExtraFieldData;->centralDirectoryData:[B

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/apache/tools/zip/UnparseableExtraFieldData;->getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 65
    :cond_0
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    goto :goto_0
.end method

.method public getHeaderId()Lorg/apache/tools/zip/ZipShort;
    .registers 2

    .line 45
    sget-object v0, Lorg/apache/tools/zip/UnparseableExtraFieldData;->HEADER_ID:Lorg/apache/tools/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .registers 2

    .line 74
    iget-object v0, p0, Lorg/apache/tools/zip/UnparseableExtraFieldData;->localFileData:[B

    invoke-static {v0}, Lorg/apache/tools/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;
    .registers 3

    .line 54
    iget-object v0, p0, Lorg/apache/tools/zip/UnparseableExtraFieldData;->localFileData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/apache/tools/zip/ZipShort;

    invoke-direct {v1, v0}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    return-object v1

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .registers 6

    .line 108
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/tools/zip/UnparseableExtraFieldData;->centralDirectoryData:[B

    .line 109
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget-object v0, p0, Lorg/apache/tools/zip/UnparseableExtraFieldData;->localFileData:[B

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/zip/UnparseableExtraFieldData;->parseFromLocalFileData([BII)V

    .line 113
    :cond_0
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .registers 6

    .line 95
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/tools/zip/UnparseableExtraFieldData;->localFileData:[B

    .line 96
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    return-void
.end method
