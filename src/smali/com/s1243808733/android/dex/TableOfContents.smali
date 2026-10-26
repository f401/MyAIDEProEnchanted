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
    .locals 24

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v2, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->header:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 33
    new-instance v3, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/s1243808733/android/dex/TableOfContents;->stringIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 34
    new-instance v4, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 35
    new-instance v5, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 36
    new-instance v6, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/s1243808733/android/dex/TableOfContents;->fieldIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 37
    new-instance v7, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 38
    new-instance v8, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v9, 0x6

    invoke-direct {v8, v9}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 39
    new-instance v9, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v10, 0x7

    invoke-direct {v9, v10}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/s1243808733/android/dex/TableOfContents;->callSiteIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 40
    new-instance v10, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v11, 0x8

    invoke-direct {v10, v11}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/s1243808733/android/dex/TableOfContents;->methodHandles:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 41
    new-instance v11, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v12, 0x1000

    invoke-direct {v11, v12}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/s1243808733/android/dex/TableOfContents;->mapList:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 42
    new-instance v12, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v13, 0x1001

    invoke-direct {v12, v13}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/s1243808733/android/dex/TableOfContents;->typeLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 43
    new-instance v13, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v14, 0x1002

    invoke-direct {v13, v14}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotationSetRefLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 44
    new-instance v14, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v15, 0x1003

    invoke-direct {v14, v15}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotationSets:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 45
    new-instance v15, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v16, 0x2000

    invoke-direct/range {v15 .. v16}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/s1243808733/android/dex/TableOfContents;->classDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 46
    new-instance v16, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v17, 0x2001

    invoke-direct/range {v16 .. v17}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s1243808733/android/dex/TableOfContents;->codes:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 47
    new-instance v17, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v18, 0x2002

    invoke-direct/range {v17 .. v18}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s1243808733/android/dex/TableOfContents;->stringDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 48
    new-instance v18, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v19, 0x2003

    invoke-direct/range {v18 .. v19}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s1243808733/android/dex/TableOfContents;->debugInfos:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 49
    new-instance v19, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v20, 0x2004

    invoke-direct/range {v19 .. v20}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s1243808733/android/dex/TableOfContents;->annotations:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 50
    new-instance v20, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v21, 0x2005

    invoke-direct/range {v20 .. v21}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s1243808733/android/dex/TableOfContents;->encodedArrays:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 51
    new-instance v21, Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/16 v22, 0x2006

    invoke-direct/range {v21 .. v22}, Lcom/s1243808733/android/dex/TableOfContents$Section;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s1243808733/android/dex/TableOfContents;->annotationsDirectories:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 52
    const/16 v22, 0x14

    move/from16 v0, v22

    new-array v0, v0, [Lcom/s1243808733/android/dex/TableOfContents$Section;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v2, v22, v23

    const/4 v2, 0x1

    aput-object v3, v22, v2

    const/4 v2, 0x2

    aput-object v4, v22, v2

    const/4 v2, 0x3

    aput-object v5, v22, v2

    const/4 v2, 0x4

    aput-object v6, v22, v2

    const/4 v2, 0x5

    aput-object v7, v22, v2

    const/4 v2, 0x6

    aput-object v8, v22, v2

    const/4 v2, 0x7

    aput-object v11, v22, v2

    const/16 v2, 0x8

    aput-object v9, v22, v2

    const/16 v2, 0x9

    aput-object v10, v22, v2

    const/16 v2, 0xa

    aput-object v12, v22, v2

    const/16 v2, 0xb

    aput-object v13, v22, v2

    const/16 v2, 0xc

    aput-object v14, v22, v2

    const/16 v2, 0xd

    aput-object v15, v22, v2

    const/16 v2, 0xe

    aput-object v16, v22, v2

    const/16 v2, 0xf

    aput-object v17, v22, v2

    const/16 v2, 0x10

    aput-object v18, v22, v2

    const/16 v2, 0x11

    aput-object v19, v22, v2

    const/16 v2, 0x12

    aput-object v20, v22, v2

    const/16 v2, 0x13

    aput-object v21, v22, v2

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 68
    const/16 v2, 0x14

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->signature:[B

    return-void
.end method

.method private getSection(S)Lcom/s1243808733/android/dex/TableOfContents$Section;
    .locals 5

    .line 166
    iget-object v1, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 167
    iget-short v4, v3, Lcom/s1243808733/android/dex/TableOfContents$Section;->type:S

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No such map item: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readHeader(Lcom/s1243808733/android/dex/Dex$Section;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 78
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->readByteArray(I)[B

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/s1243808733/android/dex/DexFormat;->isSupportedDexMagic([B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
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

    const/16 v1, 0x70

    if-ne v0, v1, :cond_2

    .line 97
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v0

    const v1, 0x12345678

    if-ne v0, v1, :cond_1

    .line 101
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

    if-eqz v0, :cond_0

    .line 107
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

    .line 105
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    const-string v1, "Cannot merge dex files that do not contain a map"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected endian tag: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected header: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_3
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    .line 84
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    const/4 v5, 0x4

    aget-byte v5, v0, v5

    .line 85
    const/4 v6, 0x5

    aget-byte v6, v0, v6

    const/4 v7, 0x6

    aget-byte v7, v0, v7

    const/4 v8, 0x7

    aget-byte v0, v0, v8

    .line 82
    const-string v8, "Unexpected magic: [0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x]"

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v9, v10

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x6

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x7

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readMap(Lcom/s1243808733/android/dex/Dex$Section;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_5

    .line 127
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

    if-eqz v7, :cond_0

    iget v7, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-ne v7, v5, :cond_3

    :cond_0
    iget v7, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    iget v7, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    if-ne v7, v6, :cond_3

    .line 138
    :cond_1
    iput v5, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 139
    iput v6, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    if-eqz v0, :cond_2

    .line 141
    iget v4, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    iget v5, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    if-gt v4, v5, :cond_4

    .line 142
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    goto :goto_0

    .line 135
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected map value for 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Map is unsorted at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public computeSizesFromOffsets()V
    .locals 5

    .line 151
    iget v0, p0, Lcom/s1243808733/android/dex/TableOfContents;->dataOff:I

    iget v1, p0, Lcom/s1243808733/android/dex/TableOfContents;->dataSize:I

    add-int/2addr v0, v1

    .line 152
    iget-object v1, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 153
    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    aget-object v2, v2, v1

    .line 154
    iget v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 161
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 157
    :cond_0
    iget v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    if-gt v3, v0, :cond_1

    .line 160
    iget v3, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    sub-int/2addr v0, v3

    iput v0, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->byteCount:I

    .line 161
    iget v0, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    goto :goto_1

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Map is unsorted at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method public readFrom(Lcom/s1243808733/android/dex/Dex;)V
    .locals 1
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
    .locals 2
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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 202
    iget-object v3, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    array-length v4, v3

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 203
    invoke-virtual {v5}, Lcom/s1243808733/android/dex/TableOfContents$Section;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 209
    iget-object v2, p0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 210
    invoke-virtual {v4}, Lcom/s1243808733/android/dex/TableOfContents$Section;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 211
    iget-short v5, v4, Lcom/s1243808733/android/dex/TableOfContents$Section;->type:S

    invoke-virtual {p1, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeShort(S)V

    .line 212
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeShort(S)V

    .line 213
    iget v5, v4, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 214
    iget v4, v4, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v4}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
