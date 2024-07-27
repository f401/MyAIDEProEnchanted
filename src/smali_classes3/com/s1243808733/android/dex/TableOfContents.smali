.class public final Lcom/s1243808733/android/dex/TableOfContents;
.super Ljava/lang/Object;
.source "TableOfContents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dex/TableOfContents$Section;
    }
.end annotation


# instance fields
.field public final annotationSetRefLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public final annotationSets:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public final annotations:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public final annotationsDirectories:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public apiLevel:I

.field public final callSiteIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public checksum:I

.field public final classDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public final classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public final codes:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public dataOff:I

.field public dataSize:I

.field public final debugInfos:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public final encodedArrays:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public final fieldIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public fileSize:I

.field public final header:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public linkOff:I

.field public linkSize:I

.field public final mapList:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public final methodHandles:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public final methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public final protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public final sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public signature:[B

.field public final stringDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public final stringIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public final typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

.field public final typeLists:Lcom/s1243808733/android/dex/TableOfContents$Section;


# direct methods
.method public constructor <init>()V
    .registers 8

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-direct {v0, v2}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->header:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-direct {v0, v3}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->stringIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-direct {v0, v4}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-direct {v0, v5}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-direct {v0, v6}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->fieldIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->callSiteIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->methodHandles:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->mapList:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v1, 0x1001

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->typeLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v1, 0x1002

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->annotationSetRefLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v1, 0x1003

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->annotationSets:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->classDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v1, 0x2001

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->codes:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v1, 0x2002

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->stringDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v1, 0x2003

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->debugInfos:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v1, 0x2004

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->annotations:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v1, 0x2005

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->encodedArrays:Lcom/s1243808733/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v1, 0x2006

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->annotationsDirectories:Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/s1243808733/android/dex/TableOfContents;->header:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/s1243808733/android/dex/TableOfContents;->stringIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/s1243808733/android/dex/TableOfContents;->fieldIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->mapList:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->callSiteIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->methodHandles:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->typeLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->annotationSetRefLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->annotationSets:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->classDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->codes:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->stringDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->debugInfos:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->annotations:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->encodedArrays:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->annotationsDirectories:Lcom/s1243808733/android/dex/TableOfContents$Section;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 68
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->signature:[B

    return-void
.end method

.method private getSection(S)Lcom/s1243808733/android/dex/TableOfContents$Section;
    .registers 6

    .line 166
    iget-object v1, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v0, 0x0

    .line 168
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No such map item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    aget-object v2, v1, v0

    .line 167
    iget-short v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->type:S

    if-ne v3, p1, :cond_1

    .line 168
    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readHeader(Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex$Section;",
            ")V^",
            "Ljava/io/UnsupportedEncodingException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->readByteArray(I)[B

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/s1243808733/android/dex/DexFormat;->isSupportedDexMagic([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unexpected magic: [0x%02x, 0x%02x, 0x%02x, 0x%02x, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x%02x, 0x%02x, 0x%02x, 0x%02x]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Byte;

    aget-byte v4, v0, v5

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Byte;

    aget-byte v4, v0, v6

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Byte;

    aget-byte v4, v0, v7

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/Byte;

    aget-byte v4, v0, v8

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/Byte;

    aget-byte v4, v0, v9

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Byte;

    const/4 v5, 0x5

    aget-byte v5, v0, v5

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/Byte;

    const/4 v5, 0x6

    aget-byte v5, v0, v5

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Ljava/lang/Byte;

    const/4 v5, 0x7

    aget-byte v0, v0, v5

    invoke-direct {v4, v0}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_0
    invoke-static {v0}, Lcom/s1243808733/android/dex/DexFormat;->magicToApi([B)I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->apiLevel:I

    .line 90
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->checksum:I

    .line 91
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->signature:[B

    .line 92
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->fileSize:I

    .line 93
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v0

    .line 94
    const/16 v1, 0x70

    if-eq v0, v1, :cond_1

    .line 95
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unexpected header: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v0

    .line 98
    const v1, 0x12345678

    if-eq v0, v1, :cond_2

    .line 99
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unexpected endian tag: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_2
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->linkSize:I

    .line 102
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->linkOff:I

    .line 103
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->mapList:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 104
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->mapList:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    if-nez v0, :cond_3

    .line 105
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    const-string v1, "Cannot merge dex files that do not contain a map"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->stringIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 108
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->stringIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 109
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 110
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 111
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 112
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 113
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->fieldIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 114
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->fieldIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 115
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 116
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 117
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 118
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 119
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->dataSize:I

    .line 120
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->dataOff:I

    return-void
.end method

.method private readMap(Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex$Section;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    .line 125
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 126
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 147
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readShort()S

    move-result v4

    .line 128
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readShort()S

    .line 129
    invoke-direct {p0, v4}, Lcom/s1243808733/android/dex/TableOfContents;->getSection(S)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v1

    .line 130
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v5

    .line 131
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v6

    .line 133
    iget v7, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-eqz v7, :cond_1

    iget v7, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-ne v7, v5, :cond_2

    :cond_1
    iget v7, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    iget v7, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    if-eq v7, v6, :cond_3

    .line 135
    :cond_2
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unexpected map value for 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_3
    iput v5, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 139
    iput v6, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 141
    if-eqz v0, :cond_4

    iget v4, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    iget v5, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    if-le v4, v5, :cond_4

    .line 142
    new-instance v2, Lcom/s1243808733/android/dex/DexException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Map is unsorted at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public computeSizesFromOffsets()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 151
    iget v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->dataOff:I

    iget v1, p0, Lcom/s1243808733/android/dex/TableOfContents;->dataSize:I

    add-int/2addr v0, v1

    .line 152
    iget-object v1, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    aget-object v2, v2, v1

    .line 154
    iget v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 152
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 157
    :cond_1
    iget v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    if-le v3, v0, :cond_2

    .line 158
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Map is unsorted at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_2
    iget v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    sub-int/2addr v0, v3

    iput v0, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    .line 161
    iget v0, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    goto :goto_1
.end method

.method public readFrom(Lcom/s1243808733/android/dex/Dex;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/TableOfContents;->readHeader(Lcom/s1243808733/android/dex/Dex$Section;)V

    .line 73
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->mapList:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dex/TableOfContents;->readMap(Lcom/s1243808733/android/dex/Dex$Section;)V

    .line 74
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/TableOfContents;->computeSizesFromOffsets()V

    return-void
.end method

.method public writeHeader(Lcom/s1243808733/android/dex/Dex$Section;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex$Section;",
            "I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-static {p2}, Lcom/s1243808733/android/dex/DexFormat;->apiToMagic(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->write([B)V

    .line 176
    iget v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->checksum:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 177
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->signature:[B

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->write([B)V

    .line 178
    iget v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->fileSize:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 179
    const/16 v0, 0x70

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 180
    const v0, 0x12345678

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 181
    iget v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->linkSize:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 182
    iget v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->linkOff:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 183
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->mapList:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 184
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->stringIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 185
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->stringIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 186
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 187
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 188
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 189
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 190
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->fieldIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 191
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->fieldIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 192
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 193
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 194
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 195
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 196
    iget v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->dataSize:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->dataOff:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    return-void
.end method

.method public writeMap(Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex$Section;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 202
    iget-object v3, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    move v0, v1

    move v2, v1

    .line 204
    :goto_0
    array-length v4, v3

    if-lt v2, v4, :cond_0

    .line 208
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 209
    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    move v0, v1

    .line 214
    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_2

    return-void

    .line 202
    :cond_0
    aget-object v4, v3, v2

    .line 203
    invoke-virtual {v4}, Lcom/s1243808733/android/dex/TableOfContents$Section;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_2
    aget-object v3, v2, v0

    .line 210
    invoke-virtual {v3}, Lcom/s1243808733/android/dex/TableOfContents$Section;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 211
    iget-short v4, v3, Lcom/s1243808733/android/dex/TableOfContents$Section;->type:S

    invoke-virtual {p1, v4}, Lcom/s1243808733/android/dex/Dex$Section;->writeShort(S)V

    .line 212
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeShort(S)V

    .line 213
    iget v4, v3, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v4}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 214
    iget v3, v3, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
