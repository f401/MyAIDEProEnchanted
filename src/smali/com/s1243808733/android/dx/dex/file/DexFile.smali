.class public final Lcom/s1243808733/android/dx/dex/file/DexFile;
.super Ljava/lang/Object;
.source "DexFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/dex/file/DexFile$Storage;
    }
.end annotation


# instance fields
.field private final byteData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

.field private final callSiteIds:Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

.field private final classData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

.field private final classDefs:Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

.field private final dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

.field private dumpWidth:I

.field private final fieldIds:Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

.field private fileSize:I

.field private final header:Lcom/s1243808733/android/dx/dex/file/HeaderSection;

.field private final map:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

.field private final methodHandles:Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

.field private final methodIds:Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

.field private final protoIds:Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

.field private final sections:[Lcom/s1243808733/android/dx/dex/file/Section;

.field private final stringData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

.field private final stringIds:Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

.field private final typeIds:Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

.field private final typeLists:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

.field private final wordData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/DexOptions;)V
    .registers 29

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object v1, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    .line 125
    new-instance v2, Lcom/s1243808733/android/dx/dex/file/HeaderSection;

    invoke-direct {v2, v0}, Lcom/s1243808733/android/dx/dex/file/HeaderSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v2, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->header:Lcom/s1243808733/android/dx/dex/file/HeaderSection;

    .line 126
    new-instance v3, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    sget-object v4, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-direct {v3, v5, v0, v6, v4}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;ILcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v3, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeLists:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    .line 127
    new-instance v4, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    const-string v7, "word_data"

    sget-object v8, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v4, v7, v0, v6, v8}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;ILcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v4, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->wordData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    .line 128
    new-instance v7, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    sget-object v8, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->INSTANCE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    const-string v9, "string_data"

    const/4 v10, 0x1

    invoke-direct {v7, v9, v0, v10, v8}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;ILcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v7, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    .line 130
    new-instance v8, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    sget-object v9, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v8, v5, v0, v10, v9}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;ILcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v8, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    .line 131
    new-instance v9, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    const-string v11, "byte_data"

    sget-object v12, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v9, v11, v0, v10, v12}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;ILcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v9, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->byteData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    .line 132
    new-instance v11, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    invoke-direct {v11, v0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v11, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringIds:Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    .line 133
    new-instance v12, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    invoke-direct {v12, v0}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v12, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeIds:Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    .line 134
    new-instance v13, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

    invoke-direct {v13, v0}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v13, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->protoIds:Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

    .line 135
    new-instance v14, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    invoke-direct {v14, v0}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v14, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fieldIds:Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    .line 136
    new-instance v15, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    invoke-direct {v15, v0}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v15, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodIds:Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    .line 137
    new-instance v5, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

    invoke-direct {v5, v0}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v5, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classDefs:Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

    .line 138
    new-instance v10, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-object/from16 v16, v8

    const-string v8, "map"

    move-object/from16 v17, v9

    sget-object v9, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v10, v8, v0, v6, v9}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;ILcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v10, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->map:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    .line 144
    const/16 v8, 0x1a

    invoke-virtual {v1, v8}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v1

    const/16 v18, 0xa

    const/16 v19, 0x9

    const/16 v20, 0x8

    const/16 v21, 0x7

    const/16 v22, 0x6

    const/16 v23, 0x5

    const/16 v24, 0x3

    const/16 v25, 0x2

    const/16 v26, 0x0

    if-eqz v1, :cond_d5

    .line 151
    new-instance v1, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v1, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->callSiteIds:Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    .line 152
    new-instance v8, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    invoke-direct {v8, v0}, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v8, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodHandles:Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    .line 154
    const/16 v9, 0xf

    new-array v9, v9, [Lcom/s1243808733/android/dx/dex/file/Section;

    aput-object v2, v9, v26

    const/4 v2, 0x1

    aput-object v11, v9, v2

    aput-object v12, v9, v25

    aput-object v13, v9, v24

    aput-object v14, v9, v6

    aput-object v15, v9, v23

    aput-object v5, v9, v22

    aput-object v1, v9, v21

    aput-object v8, v9, v20

    aput-object v4, v9, v19

    aput-object v3, v9, v18

    const/16 v1, 0xb

    aput-object v7, v9, v1

    const/16 v1, 0xc

    aput-object v17, v9, v1

    const/16 v1, 0xd

    aput-object v16, v9, v1

    const/16 v1, 0xe

    aput-object v10, v9, v1

    iput-object v9, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->sections:[Lcom/s1243808733/android/dx/dex/file/Section;

    goto :goto_ff

    .line 159
    :cond_d5
    const/16 v1, 0xd

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->callSiteIds:Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    .line 160
    iput-object v8, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodHandles:Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    .line 162
    new-array v1, v1, [Lcom/s1243808733/android/dx/dex/file/Section;

    aput-object v2, v1, v26

    const/4 v2, 0x1

    aput-object v11, v1, v2

    aput-object v12, v1, v25

    aput-object v13, v1, v24

    aput-object v14, v1, v6

    aput-object v15, v1, v23

    aput-object v5, v1, v22

    aput-object v4, v1, v21

    aput-object v3, v1, v20

    aput-object v7, v1, v19

    aput-object v17, v1, v18

    const/16 v2, 0xb

    aput-object v16, v1, v2

    const/16 v2, 0xc

    aput-object v10, v1, v2

    iput-object v1, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->sections:[Lcom/s1243808733/android/dx/dex/file/Section;

    .line 167
    :goto_ff
    const/4 v1, -0x1

    iput v1, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fileSize:I

    .line 168
    const/16 v1, 0x4f

    iput v1, v0, Lcom/s1243808733/android/dx/dex/file/DexFile;->dumpWidth:I

    return-void
.end method

.method private static calcChecksum([BI)V
    .registers 4

    .line 794
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 796
    const/16 v1, 0xc

    sub-int/2addr p1, v1

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/zip/Adler32;->update([BII)V

    .line 798
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int p1, v0

    int-to-byte v0, p1

    .line 800
    const/16 v1, 0x8

    aput-byte v0, p0, v1

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    .line 801
    const/16 v1, 0x9

    aput-byte v0, p0, v1

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    .line 802
    const/16 v1, 0xa

    aput-byte v0, p0, v1

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 803
    const/16 v0, 0xb

    aput-byte p1, p0, v0

    return-void
.end method

.method private static calcSignature([BI)V
    .registers 4

    .line 768
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_37

    .line 773
    const/16 v1, 0x20

    sub-int/2addr p1, v1

    invoke-virtual {v0, p0, v1, p1}, Ljava/security/MessageDigest;->update([BII)V

    .line 776
    const/16 p1, 0xc

    const/16 v1, 0x14

    :try_start_10
    invoke-virtual {v0, p0, p1, v1}, Ljava/security/MessageDigest;->digest([BII)I

    move-result p0

    if-ne p0, v1, :cond_17

    return-void

    .line 778
    :cond_17
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected digest write: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_30
    .catch Ljava/security/DigestException; {:try_start_10 .. :try_end_30} :catch_30

    :catch_30
    move-exception p0

    .line 782
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_37
    move-exception p0

    .line 770
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private toDex0(ZZLcom/s1243808733/android/dx/dex/file/DexFile$Storage;)Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;
    .registers 12

    .line 619
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classDefs:Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->prepare()V

    .line 620
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 621
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->wordData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 622
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 624
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->callSiteIds:Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->prepare()V

    .line 626
    :cond_1e
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->byteData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 627
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 629
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodHandles:Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->prepare()V

    .line 631
    :cond_30
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodIds:Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->prepare()V

    .line 632
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fieldIds:Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->prepare()V

    .line 633
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->protoIds:Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->prepare()V

    .line 634
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeLists:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 635
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeIds:Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->prepare()V

    .line 636
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringIds:Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->prepare()V

    .line 637
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 638
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->header:Lcom/s1243808733/android/dx/dex/file/HeaderSection;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/HeaderSection;->prepare()V

    .line 642
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->sections:[Lcom/s1243808733/android/dx/dex/file/Section;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 645
    :goto_5e
    const-string v4, "...while writing section "

    if-ge v2, v0, :cond_c5

    .line 646
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->sections:[Lcom/s1243808733/android/dx/dex/file/Section;

    aget-object v5, v5, v2

    .line 647
    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->callSiteIds:Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    if-eq v5, v6, :cond_6e

    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodHandles:Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    if-ne v5, v6, :cond_79

    :cond_6e
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_79

    goto :goto_9c

    .line 656
    :cond_79
    invoke-virtual {v5, v3}, Lcom/s1243808733/android/dx/dex/file/Section;->setFileOffset(I)I

    move-result v6

    if-lt v6, v3, :cond_b1

    .line 662
    :try_start_7f
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->map:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    if-ne v5, v3, :cond_8d

    .line 668
    iget-object v7, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->sections:[Lcom/s1243808733/android/dx/dex/file/Section;

    invoke-static {v7, v3}, Lcom/s1243808733/android/dx/dex/file/MapItem;->addMap([Lcom/s1243808733/android/dx/dex/file/Section;Lcom/s1243808733/android/dx/dex/file/MixedItemSection;)V

    .line 669
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->map:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 672
    :cond_8d
    instance-of v3, v5, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    if-eqz v3, :cond_97

    .line 677
    move-object v3, v5

    check-cast v3, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->placeItems()V

    .line 680
    :cond_97
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/file/Section;->writeSize()I

    move-result v3
    :try_end_9b
    .catch Ljava/lang/RuntimeException; {:try_start_7f .. :try_end_9b} :catch_9f

    add-int/2addr v3, v6

    :goto_9c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :catch_9f
    move-exception p1

    .line 682
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object p1

    throw p1

    .line 658
    :cond_b1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "bogus placement for section "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 689
    :cond_c5
    iput v3, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fileSize:I

    if-nez p3, :cond_cc

    .line 690
    new-array p3, v3, [B

    goto :goto_d0

    :cond_cc
    invoke-virtual {p3, v3}, Lcom/s1243808733/android/dx/dex/file/DexFile$Storage;->getStorage(I)[B

    move-result-object p3

    .line 692
    :goto_d0
    new-instance v2, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {v2, p3}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>([B)V

    if-eqz p1, :cond_dc

    .line 695
    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->dumpWidth:I

    invoke-virtual {v2, v3, p2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->enableAnnotations(IZ)V

    :cond_dc
    :goto_dc
    if-ge v1, v0, :cond_13f

    .line 700
    :try_start_de
    iget-object p2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->sections:[Lcom/s1243808733/android/dx/dex/file/Section;

    aget-object p2, p2, v1

    .line 701
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->callSiteIds:Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    if-eq p2, v3, :cond_ea

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodHandles:Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    if-ne p2, v3, :cond_f5

    :cond_ea
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f5

    goto :goto_106

    .line 704
    :cond_f5
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/file/Section;->getFileOffset()I

    move-result v3

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v5

    sub-int/2addr v3, v5

    if-ltz v3, :cond_109

    .line 709
    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeZeroes(I)V

    .line 710
    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/dex/file/Section;->writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    :goto_106
    add-int/lit8 v1, v1, 0x1

    goto :goto_dc

    .line 706
    :cond_109
    new-instance p1, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "excess write of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int p3, v3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_121
    .catch Ljava/lang/RuntimeException; {:try_start_de .. :try_end_121} :catch_121

    :catch_121
    move-exception p1

    .line 713
    instance-of p2, p1, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    if-eqz p2, :cond_129

    .line 714
    check-cast p1, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    goto :goto_12f

    .line 716
    :cond_129
    new-instance p2, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    invoke-direct {p2, p1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    .line 718
    :goto_12f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    .line 719
    throw p1

    .line 723
    :cond_13f
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result p2

    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fileSize:I

    if-ne p2, v0, :cond_16b

    .line 729
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result p2

    invoke-static {p3, p2}, Lcom/s1243808733/android/dx/dex/file/DexFile;->calcSignature([BI)V

    .line 730
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result p2

    invoke-static {p3, p2}, Lcom/s1243808733/android/dx/dex/file/DexFile;->calcChecksum([BI)V

    if-eqz p1, :cond_16a

    .line 733
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->wordData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    sget-object p2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string p3, "\nmethod code index:\n\n"

    invoke-virtual {p1, v2, p2, p3}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->writeIndexAnnotation(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/file/ItemType;Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStatistics()Lcom/s1243808733/android/dx/dex/file/Statistics;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/dex/file/Statistics;->writeAnnotation(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 736
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->finishAnnotating()V

    :cond_16a
    return-object v2

    .line 724
    :cond_16b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "foreshortened write"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_174

    :goto_173
    throw p1

    :goto_174
    goto :goto_173
.end method


# virtual methods
.method public add(Lcom/s1243808733/android/dx/dex/file/ClassDefItem;)V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classDefs:Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->add(Lcom/s1243808733/android/dx/dex/file/ClassDefItem;)V

    return-void
.end method

.method findItemOrNull(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;
    .registers 3

    .line 558
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_b

    .line 559
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringIds:Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    .line 560
    :cond_b
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_16

    .line 561
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeIds:Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    .line 562
    :cond_16
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    if-eqz v0, :cond_21

    .line 563
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodIds:Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    .line 564
    :cond_21
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_2c

    .line 565
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fieldIds:Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    .line 566
    :cond_2c
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;

    if-eqz v0, :cond_3d

    .line 567
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fieldIds:Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)Lcom/s1243808733/android/dx/dex/file/FieldIdItem;

    move-result-object p1

    return-object p1

    .line 568
    :cond_3d
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_48

    .line 569
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->protoIds:Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    .line 570
    :cond_48
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    if-eqz v0, :cond_53

    .line 571
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodHandles:Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    .line 572
    :cond_53
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    if-eqz v0, :cond_5e

    .line 573
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->callSiteIds:Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    :cond_5e
    const/4 p1, 0x0

    return-object p1
.end method

.method getByteData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;
    .registers 2

    .line 488
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->byteData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public getCallSiteIds()Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;
    .registers 2

    .line 475
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->callSiteIds:Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    return-object v0
.end method

.method getClassData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public getClassDefs()Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;
    .registers 2

    .line 384
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classDefs:Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

    return-object v0
.end method

.method public getClassOrNull(Ljava/lang/String;)Lcom/s1243808733/android/dx/dex/file/ClassDefItem;
    .registers 4

    .line 204
    :try_start_0
    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->internClassName(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    .line 205
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classDefs:Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-direct {v1, p1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDexOptions()Lcom/s1243808733/android/dx/dex/DexOptions;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    return-object v0
.end method

.method public getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;
    .registers 2

    .line 436
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fieldIds:Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    return-object v0
.end method

.method public getFileSize()I
    .registers 3

    .line 303
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fileSize:I

    if-ltz v0, :cond_5

    return v0

    .line 304
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "file size not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getFirstDataSection()Lcom/s1243808733/android/dx/dex/file/Section;
    .registers 2

    .line 501
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->wordData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method getLastDataSection()Lcom/s1243808733/android/dx/dex/file/Section;
    .registers 2

    .line 514
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->map:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method getMap()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;
    .registers 2

    .line 358
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->map:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public getMethodHandles()Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;
    .registers 2

    .line 462
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodHandles:Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    return-object v0
.end method

.method public getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodIds:Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    return-object v0
.end method

.method getProtoIds()Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->protoIds:Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

    return-object v0
.end method

.method public getStatistics()Lcom/s1243808733/android/dx/dex/file/Statistics;
    .registers 6

    .line 748
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/Statistics;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/file/Statistics;-><init>()V

    .line 750
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->sections:[Lcom/s1243808733/android/dx/dex/file/Section;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_13

    aget-object v4, v1, v3

    .line 751
    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/dex/file/Statistics;->addAll(Lcom/s1243808733/android/dx/dex/file/Section;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_13
    return-object v0
.end method

.method getStringData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringIds:Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    return-object v0
.end method

.method public getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;
    .registers 2

    .line 410
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeIds:Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    return-object v0
.end method

.method getTypeLists()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeLists:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method getWordData()Lcom/s1243808733/android/dx/dex/file/MixedItemSection;
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->wordData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method internIfAppropriate(Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 3

    if-eqz p1, :cond_5e

    .line 529
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_e

    .line 530
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringIds:Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    goto :goto_5d

    .line 531
    :cond_e
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_1a

    .line 532
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeIds:Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    goto :goto_5d

    .line 533
    :cond_1a
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    if-eqz v0, :cond_26

    .line 534
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodIds:Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)Lcom/s1243808733/android/dx/dex/file/MethodIdItem;

    goto :goto_5d

    .line 535
    :cond_26
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_32

    .line 536
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fieldIds:Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)Lcom/s1243808733/android/dx/dex/file/FieldIdItem;

    goto :goto_5d

    .line 537
    :cond_32
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;

    if-eqz v0, :cond_42

    .line 538
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fieldIds:Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)Lcom/s1243808733/android/dx/dex/file/FieldIdItem;

    goto :goto_5d

    .line 539
    :cond_42
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_52

    .line 540
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->protoIds:Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->intern(Lcom/s1243808733/android/dx/rop/type/Prototype;)Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;

    goto :goto_5d

    .line 541
    :cond_52
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    if-eqz v0, :cond_5d

    .line 542
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodHandles:Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;)V

    :cond_5d
    :goto_5d
    return-void

    .line 526
    :cond_5e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classDefs:Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setDumpWidth(I)V
    .registers 3

    const/16 v0, 0x28

    if-lt p1, v0, :cond_7

    .line 290
    iput p1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->dumpWidth:I

    return-void

    .line 287
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dumpWidth < 40"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toDex(Ljava/io/Writer;Z)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 271
    :goto_5
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->toDex0(ZZLcom/s1243808733/android/dx/dex/file/DexFile$Storage;)Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    move-result-object p2

    if-eqz v0, :cond_f

    .line 274
    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeAnnotationsTo(Ljava/io/Writer;)V

    .line 277
    :cond_f
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getArray()[B

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile$Storage;)Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;
    .registers 3

    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->toDex0(ZZLcom/s1243808733/android/dx/dex/file/DexFile$Storage;)Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Ljava/io/OutputStream;Lcom/s1243808733/android/dx/dex/file/DexFile$Storage;Ljava/io/Writer;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 238
    :goto_5
    invoke-direct {p0, v0, p4, p2}, Lcom/s1243808733/android/dx/dex/file/DexFile;->toDex0(ZZLcom/s1243808733/android/dx/dex/file/DexFile$Storage;)Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    move-result-object p2

    if-eqz p1, :cond_12

    .line 241
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getArray()[B

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/OutputStream;->write([B)V

    :cond_12
    if-eqz v0, :cond_17

    .line 245
    invoke-virtual {p2, p3}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeAnnotationsTo(Ljava/io/Writer;)V

    :cond_17
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/io/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/s1243808733/android/dx/dex/file/DexFile;->writeTo(Ljava/io/OutputStream;Lcom/s1243808733/android/dx/dex/file/DexFile$Storage;Ljava/io/Writer;Z)V

    return-void
.end method
