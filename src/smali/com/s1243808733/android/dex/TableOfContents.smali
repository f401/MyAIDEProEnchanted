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
    .registers 24

    .line 67
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v1, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->header:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 33
    new-instance v3, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v3, v0, Lcom/s1243808733/android/dex/TableOfContents;->stringIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 34
    new-instance v5, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v5, v0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 35
    new-instance v7, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v7, v0, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 36
    new-instance v9, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v9, v0, Lcom/s1243808733/android/dex/TableOfContents;->fieldIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 37
    new-instance v11, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v12, 0x5

    invoke-direct {v11, v12}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v11, v0, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 38
    new-instance v13, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v14, 0x6

    invoke-direct {v13, v14}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v13, v0, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 39
    new-instance v15, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v14, 0x7

    invoke-direct {v15, v14}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v15, v0, Lcom/s1243808733/android/dex/TableOfContents;->callSiteIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 40
    new-instance v14, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v12, 0x8

    invoke-direct {v14, v12}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v14, v0, Lcom/s1243808733/android/dex/TableOfContents;->methodHandles:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 41
    new-instance v12, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v10, 0x1000

    invoke-direct {v12, v10}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v12, v0, Lcom/s1243808733/android/dex/TableOfContents;->mapList:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 42
    new-instance v10, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v8, 0x1001

    invoke-direct {v10, v8}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v10, v0, Lcom/s1243808733/android/dex/TableOfContents;->typeLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 43
    new-instance v8, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v6, 0x1002

    invoke-direct {v8, v6}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v8, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotationSetRefLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 44
    new-instance v6, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v4, 0x1003

    invoke-direct {v6, v4}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v6, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotationSets:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 45
    new-instance v4, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v2, 0x2000

    invoke-direct {v4, v2}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v4, v0, Lcom/s1243808733/android/dex/TableOfContents;->classDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 46
    new-instance v2, Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-object/from16 v17, v4

    const/16 v4, 0x2001

    invoke-direct {v2, v4}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->codes:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 47
    new-instance v4, Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-object/from16 v18, v2

    const/16 v2, 0x2002

    invoke-direct {v4, v2}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v4, v0, Lcom/s1243808733/android/dex/TableOfContents;->stringDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 48
    new-instance v2, Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-object/from16 v19, v4

    const/16 v4, 0x2003

    invoke-direct {v2, v4}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->debugInfos:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 49
    new-instance v4, Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-object/from16 v20, v2

    const/16 v2, 0x2004

    invoke-direct {v4, v2}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v4, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotations:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 50
    new-instance v2, Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-object/from16 v21, v4

    const/16 v4, 0x2005

    invoke-direct {v2, v4}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->encodedArrays:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 51
    new-instance v4, Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-object/from16 v22, v2

    const/16 v2, 0x2006

    invoke-direct {v4, v2}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v4, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotationsDirectories:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 52
    const/16 v2, 0x14

    new-array v0, v2, [Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v16, 0x0

    aput-object v1, v0, v16

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v5, v0, v1

    const/4 v1, 0x3

    aput-object v7, v0, v1

    const/4 v1, 0x4

    aput-object v9, v0, v1

    const/4 v1, 0x5

    aput-object v11, v0, v1

    const/4 v1, 0x6

    aput-object v13, v0, v1

    const/4 v1, 0x7

    aput-object v12, v0, v1

    const/16 v1, 0x8

    aput-object v15, v0, v1

    const/16 v1, 0x9

    aput-object v14, v0, v1

    const/16 v1, 0xa

    aput-object v10, v0, v1

    const/16 v1, 0xb

    aput-object v8, v0, v1

    const/16 v1, 0xc

    aput-object v6, v0, v1

    const/16 v1, 0xd

    aput-object v17, v0, v1

    const/16 v1, 0xe

    aput-object v18, v0, v1

    const/16 v1, 0xf

    aput-object v19, v0, v1

    const/16 v1, 0x10

    aput-object v20, v0, v1

    const/16 v1, 0x11

    aput-object v21, v0, v1

    const/16 v1, 0x12

    aput-object v22, v0, v1

    const/16 v1, 0x13

    aput-object v4, v0, v1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 68
    new-array v0, v2, [B

    iput-object v0, v1, Lcom/s1243808733/android/dex/TableOfContents;->signature:[B

    return-void
.end method

.method private getSection(S)Lcom/s1243808733/android/dex/TableOfContents$Section;
    .registers 7

    .line 166
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 167
    iget-short v4, v3, Lcom/s1243808733/android/dex/TableOfContents$Section;->type:S

    if-ne v4, p1, :cond_d

    return-object v3

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 171
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No such map item: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_25

    :goto_24
    throw p1

    :goto_25
    goto :goto_24
.end method

.method private readHeader(Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dex/Dex$Section;->readByteArray(I)[B

    move-result-object v3

    .line 80
    invoke-static {v3}, Lcom/s1243808733/android/dex/DexFormat;->isSupportedDexMagic([B)Z

    move-result v4

    if-eqz v4, :cond_fa

    .line 89
    invoke-static {v3}, Lcom/s1243808733/android/dex/DexFormat;->magicToApi([B)I

    move-result v2

    iput v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->apiLevel:I

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v2

    iput v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->checksum:I

    .line 91
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dex/Dex$Section;->readByteArray(I)[B

    move-result-object v2

    iput-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->signature:[B

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v2

    iput v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->fileSize:I

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v2

    const/16 v3, 0x70

    if-ne v2, v3, :cond_e2

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v2

    const v3, 0x12345678

    if-ne v2, v3, :cond_ca

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v2

    iput v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->linkSize:I

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v2

    iput v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->linkOff:I

    .line 103
    iget-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->mapList:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 104
    iget-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->mapList:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v2, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    if-eqz v2, :cond_c2

    .line 107
    iget-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->stringIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 108
    iget-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->stringIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 109
    iget-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 110
    iget-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 111
    iget-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 112
    iget-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 113
    iget-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->fieldIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 114
    iget-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->fieldIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 115
    iget-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 116
    iget-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 117
    iget-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 118
    iget-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v2

    iput v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->dataSize:I

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->dataOff:I

    return-void

    .line 105
    :cond_c2
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    const-string v2, "Cannot merge dex files that do not contain a map"

    invoke-direct {v1, v2}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_ca
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected endian tag: 0x"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_e2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected header: 0x"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_fa
    const/4 v1, 0x0

    aget-byte v4, v3, v1

    .line 84
    const/4 v5, 0x1

    aget-byte v6, v3, v5

    const/4 v7, 0x2

    aget-byte v8, v3, v7

    const/4 v9, 0x3

    aget-byte v10, v3, v9

    const/4 v11, 0x4

    aget-byte v12, v3, v11

    .line 85
    const/4 v13, 0x5

    aget-byte v14, v3, v13

    const/4 v15, 0x6

    aget-byte v16, v3, v15

    const/16 v17, 0x7

    aget-byte v3, v3, v17

    .line 82
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v9

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v11

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v15

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v17

    const-string v1, "Unexpected magic: [0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x]"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 86
    new-instance v2, Lcom/s1243808733/android/dex/DexException;

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readMap(Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_72

    .line 127
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readShort()S

    move-result v3

    .line 128
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readShort()S

    .line 129
    invoke-direct {p0, v3}, Lcom/s1243808733/android/dex/TableOfContents;->getSection(S)Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-result-object v4

    .line 130
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v5

    .line 131
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v6

    .line 133
    iget v7, v4, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-eqz v7, :cond_23

    iget v7, v4, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-ne v7, v5, :cond_2d

    :cond_23
    iget v7, v4, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_45

    iget v7, v4, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    if-ne v7, v6, :cond_2d

    goto :goto_45

    .line 135
    :cond_2d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected map value for 0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_45
    :goto_45
    iput v5, v4, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 139
    iput v6, v4, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    if-eqz v1, :cond_6e

    .line 141
    iget v3, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    iget v5, v4, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    if-gt v3, v5, :cond_52

    goto :goto_6e

    .line 142
    :cond_52
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Map is unsorted at "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    move-object v1, v4

    goto :goto_6

    .line 147
    :cond_72
    iget-object p1, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public computeSizesFromOffsets()V
    .registers 6

    .line 151
    iget v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->dataOff:I

    iget v1, p0, Lcom/s1243808733/android/dex/TableOfContents;->dataSize:I

    add-int/2addr v0, v1

    .line 152
    iget-object v1, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_38

    .line 153
    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    aget-object v2, v2, v1

    .line 154
    iget v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    goto :goto_21

    .line 157
    :cond_16
    iget v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    if-gt v3, v0, :cond_24

    .line 160
    iget v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    sub-int/2addr v0, v3

    iput v0, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    .line 161
    iget v0, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    :goto_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 158
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Map is unsorted at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    return-void
.end method

.method public readFrom(Lcom/s1243808733/android/dex/Dex;)V
    .registers 3
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

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dex/TableOfContents;->readMap(Lcom/s1243808733/android/dex/Dex$Section;)V

    .line 74
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/TableOfContents;->computeSizesFromOffsets()V

    return-void
.end method

.method public writeHeader(Lcom/s1243808733/android/dex/Dex$Section;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-static {p2}, Lcom/s1243808733/android/dex/DexFormat;->apiToMagic(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->write([B)V

    .line 176
    iget p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->checksum:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 177
    iget-object p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->signature:[B

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->write([B)V

    .line 178
    iget p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->fileSize:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 179
    const/16 p2, 0x70

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 180
    const p2, 0x12345678

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 181
    iget p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->linkSize:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 182
    iget p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->linkOff:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 183
    iget-object p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->mapList:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 184
    iget-object p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->stringIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 185
    iget-object p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->stringIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 186
    iget-object p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 187
    iget-object p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 188
    iget-object p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 189
    iget-object p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 190
    iget-object p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->fieldIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 191
    iget-object p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->fieldIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 192
    iget-object p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 193
    iget-object p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 194
    iget-object p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 195
    iget-object p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 196
    iget p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->dataSize:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 197
    iget p2, p0, Lcom/s1243808733/android/dex/TableOfContents;->dataOff:I

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    return-void
.end method

.method public writeMap(Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v3, v1, :cond_15

    aget-object v5, v0, v3

    .line 203
    invoke-virtual {v5}, Lcom/s1243808733/android/dex/TableOfContents$Section;->exists()Z

    move-result v5

    if-eqz v5, :cond_12

    add-int/lit8 v4, v4, 0x1

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 208
    :cond_15
    invoke-virtual {p1, v4}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 209
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v1, :cond_3b

    aget-object v4, v0, v3

    .line 210
    invoke-virtual {v4}, Lcom/s1243808733/android/dex/TableOfContents$Section;->exists()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 211
    iget-short v5, v4, Lcom/s1243808733/android/dex/TableOfContents$Section;->type:S

    invoke-virtual {p1, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeShort(S)V

    .line 212
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dex/Dex$Section;->writeShort(S)V

    .line 213
    iget v5, v4, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 214
    iget v4, v4, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v4}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_3b
    return-void
.end method
