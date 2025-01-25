.class public Lorg/apache/tools/zip/UnrecognizedExtraField;
.super Ljava/lang/Object;
.source "UnrecognizedExtraField.java"

# interfaces
.implements Lorg/apache/tools/zip/CentralDirectoryParsingZipExtraField;


# instance fields
.field private centralData:[B

.field private headerId:Lorg/apache/tools/zip/ZipShort;

.field private localData:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .registers 2

    .line 121
    iget-object v0, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->centralData:[B

    if-eqz v0, :cond_9

    .line 122
    invoke-static {v0}, Lorg/apache/tools/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    .line 124
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lorg/apache/tools/zip/UnrecognizedExtraField;->getLocalFileDataData()[B

    move-result-object v0

    goto :goto_8
.end method

.method public getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;
    .registers 3

    .line 110
    iget-object v1, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->centralData:[B

    if-eqz v1, :cond_b

    .line 111
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    .line 113
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lorg/apache/tools/zip/UnrecognizedExtraField;->getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    goto :goto_a
.end method

.method public getHeaderId()Lorg/apache/tools/zip/ZipShort;
    .registers 2

    .line 52
    iget-object v0, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->headerId:Lorg/apache/tools/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .registers 2

    .line 85
    iget-object v0, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->localData:[B

    invoke-static {v0}, Lorg/apache/tools/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;
    .registers 3

    .line 77
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    iget-object v1, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->localData:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .registers 6

    .line 146
    new-array v0, p3, [B

    .line 147
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/UnrecognizedExtraField;->setCentralDirectoryData([B)V

    .line 149
    iget-object v1, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->localData:[B

    if-nez v1, :cond_10

    .line 150
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/UnrecognizedExtraField;->setLocalFileDataData([B)V

    .line 152
    :cond_10
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .registers 6

    .line 134
    new-array v0, p3, [B

    .line 135
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/UnrecognizedExtraField;->setLocalFileDataData([B)V

    .line 137
    return-void
.end method

.method public setCentralDirectoryData([B)V
    .registers 3

    .line 101
    invoke-static {p1}, Lorg/apache/tools/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->centralData:[B

    .line 102
    return-void
.end method

.method public setHeaderId(Lorg/apache/tools/zip/ZipShort;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->headerId:Lorg/apache/tools/zip/ZipShort;

    .line 45
    return-void
.end method

.method public setLocalFileDataData([B)V
    .registers 3

    .line 69
    invoke-static {p1}, Lorg/apache/tools/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/zip/UnrecognizedExtraField;->localData:[B

    .line 70
    return-void
.end method
