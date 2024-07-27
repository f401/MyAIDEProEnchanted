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
    .registers 10

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    .line 125
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/HeaderSection;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/dex/file/HeaderSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->header:Lcom/s1243808733/android/dx/dex/file/HeaderSection;

    .line 126
    new-instance v2, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v2, v0, p0, v5, v3}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;ILcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeLists:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    .line 127
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    const-string v2, "word_data"

    sget-object v3, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v0, v2, p0, v5, v3}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;ILcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->wordData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    .line 128
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    const-string v2, "string_data"

    sget-object v3, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->INSTANCE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v0, v2, p0, v4, v3}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;ILcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    .line 130
    new-instance v2, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v2, v0, p0, v4, v3}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;ILcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    .line 131
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    const-string v2, "byte_data"

    sget-object v3, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v0, v2, p0, v4, v3}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;ILcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->byteData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    .line 132
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringIds:Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    .line 133
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeIds:Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    .line 134
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->protoIds:Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

    .line 135
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fieldIds:Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    .line 136
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodIds:Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    .line 137
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classDefs:Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

    .line 138
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    const-string v2, "map"

    sget-object v3, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    invoke-direct {v0, v2, p0, v5, v3}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;ILcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->map:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    .line 144
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->callSiteIds:Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    .line 152
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodHandles:Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    .line 154
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/s1243808733/android/dx/dex/file/Section;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->header:Lcom/s1243808733/android/dx/dex/file/HeaderSection;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringIds:Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeIds:Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->protoIds:Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fieldIds:Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    aput-object v1, v0, v5

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodIds:Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classDefs:Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->callSiteIds:Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodHandles:Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->wordData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeLists:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->byteData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->map:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->sections:[Lcom/s1243808733/android/dx/dex/file/Section;

    .line 167
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fileSize:I

    .line 168
    const/16 v0, 0x4f

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->dumpWidth:I

    return-void

    :cond_0
    move-object v0, v1

    .line 159
    check-cast v0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->callSiteIds:Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    .line 160
    check-cast v1, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodHandles:Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    .line 162
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/s1243808733/android/dx/dex/file/Section;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->header:Lcom/s1243808733/android/dx/dex/file/HeaderSection;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringIds:Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeIds:Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->protoIds:Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fieldIds:Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    aput-object v1, v0, v5

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodIds:Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classDefs:Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->wordData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeLists:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->byteData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->map:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->sections:[Lcom/s1243808733/android/dx/dex/file/Section;

    goto :goto_0
.end method

.method private static calcChecksum([BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)V"
        }
    .end annotation

    .line 794
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 796
    const/16 v1, 0xc

    add-int/lit8 v2, p1, -0xc

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/zip/Adler32;->update([BII)V

    .line 798
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    .line 800
    const/16 v1, 0x8

    int-to-byte v2, v0

    aput-byte v2, p0, v1

    .line 801
    const/16 v1, 0x9

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 802
    const/16 v1, 0xa

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 803
    const/16 v1, 0xb

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    return-void
.end method

.method private static calcSignature([BI)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)V"
        }
    .end annotation

    const/16 v3, 0x14

    .line 765
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 773
    const/16 v1, 0x20

    add-int/lit8 v2, p1, -0x20

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 776
    const/16 v1, 0xc

    const/16 v2, 0x14

    :try_start_1
    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v0

    .line 777
    if-eq v0, v3, :cond_0

    .line 778
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "unexpected digest write: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 782
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 765
    :catch_1
    move-exception v0

    .line 770
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 782
    :cond_0
    return-void
.end method

.method private toDex0(ZZLcom/s1243808733/android/dx/dex/file/DexFile$Storage;)Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;
    .registers 12

    const/16 v2, 0x1a

    const/4 v3, 0x0

    .line 619
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classDefs:Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->prepare()V

    .line 620
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 621
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->wordData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 622
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->callSiteIds:Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->prepare()V

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->byteData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 627
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodHandles:Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->prepare()V

    .line 631
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodIds:Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->prepare()V

    .line 632
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fieldIds:Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->prepare()V

    .line 633
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->protoIds:Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->prepare()V

    .line 634
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeLists:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 635
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeIds:Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->prepare()V

    .line 636
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringIds:Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->prepare()V

    .line 637
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 638
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->header:Lcom/s1243808733/android/dx/dex/file/HeaderSection;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/HeaderSection;->prepare()V

    .line 642
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->sections:[Lcom/s1243808733/android/dx/dex/file/Section;

    array-length v5, v1

    move v1, v3

    move v4, v3

    .line 645
    :goto_0
    if-lt v4, v5, :cond_3

    .line 689
    iput v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fileSize:I

    .line 690
    if-nez p3, :cond_9

    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fileSize:I

    new-array v1, v1, [B

    .line 692
    :goto_1
    new-instance v4, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {v4, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>([B)V

    .line 694
    if-eqz p1, :cond_2

    .line 695
    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->dumpWidth:I

    invoke-virtual {v4, v2, p2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->enableAnnotations(IZ)V

    .line 698
    :cond_2
    :goto_2
    if-lt v3, v5, :cond_a

    .line 723
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v2

    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fileSize:I

    if-eq v2, v3, :cond_f

    .line 724
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "foreshortened write"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 646
    :cond_3
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->sections:[Lcom/s1243808733/android/dx/dex/file/Section;

    aget-object v2, v2, v4

    .line 647
    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->callSiteIds:Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    if-eq v2, v6, :cond_4

    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodHandles:Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    if-ne v2, v6, :cond_5

    :cond_4
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 645
    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 656
    :cond_5
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/dex/file/Section;->setFileOffset(I)I

    move-result v6

    .line 657
    if-ge v6, v1, :cond_6

    .line 658
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "bogus placement for section "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 662
    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->map:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    if-ne v2, v1, :cond_7

    .line 668
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->sections:[Lcom/s1243808733/android/dx/dex/file/Section;

    iget-object v7, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->map:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    invoke-static {v1, v7}, Lcom/s1243808733/android/dx/dex/file/MapItem;->addMap([Lcom/s1243808733/android/dx/dex/file/Section;Lcom/s1243808733/android/dx/dex/file/MixedItemSection;)V

    .line 669
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->map:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->prepare()V

    .line 672
    :cond_7
    instance-of v1, v2, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    if-eqz v1, :cond_8

    .line 677
    move-object v0, v2

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->placeItems()V

    .line 680
    :cond_8
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/Section;->writeSize()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v1, v6

    goto :goto_3

    :catch_0
    move-exception v1

    .line 682
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "...while writing section "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object v1

    throw v1

    .line 690
    :cond_9
    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fileSize:I

    invoke-virtual {p3, v1}, Lcom/s1243808733/android/dx/dex/file/DexFile$Storage;->getStorage(I)[B

    move-result-object v1

    goto/16 :goto_1

    .line 700
    :cond_a
    :try_start_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->sections:[Lcom/s1243808733/android/dx/dex/file/Section;

    aget-object v2, v2, v3

    .line 701
    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->callSiteIds:Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    if-eq v2, v6, :cond_b

    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodHandles:Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    if-ne v2, v6, :cond_c

    :cond_b
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 698
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2

    .line 704
    :cond_c
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/Section;->getFileOffset()I

    move-result v6

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v7

    sub-int/2addr v6, v7

    .line 705
    if-gez v6, :cond_d

    .line 706
    new-instance v1, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "excess write of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    neg-int v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 710
    :catch_1
    move-exception v1

    .line 712
    instance-of v2, v1, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    if-eqz v2, :cond_e

    .line 714
    check-cast v1, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    .line 718
    :goto_5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "...while writing section "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    .line 719
    throw v1

    .line 709
    :cond_d
    :try_start_2
    invoke-virtual {v4, v6}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeZeroes(I)V

    .line 710
    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/dex/file/Section;->writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 716
    :cond_e
    new-instance v2, Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_5

    .line 729
    :cond_f
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/dex/file/DexFile;->calcSignature([BI)V

    .line 730
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/dex/file/DexFile;->calcChecksum([BI)V

    .line 732
    if-eqz p1, :cond_10

    .line 733
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->wordData:Lcom/s1243808733/android/dx/dex/file/MixedItemSection;

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v3, "\nmethod code index:\n\n"

    invoke-virtual {v1, v4, v2, v3}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection;->writeIndexAnnotation(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/file/ItemType;Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStatistics()Lcom/s1243808733/android/dx/dex/file/Statistics;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/dex/file/Statistics;->writeAnnotation(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 736
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->finishAnnotating()V

    .line 739
    :cond_10
    return-object v4
.end method


# virtual methods
.method public add(Lcom/s1243808733/android/dx/dex/file/ClassDefItem;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/ClassDefItem;",
            ")V"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classDefs:Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->add(Lcom/s1243808733/android/dx/dex/file/ClassDefItem;)V

    return-void
.end method

.method findItemOrNull(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;
    .registers 4

    .line 558
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringIds:Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object v0

    .line 575
    :goto_0
    return-object v0

    .line 560
    :cond_0
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeIds:Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object v0

    goto :goto_0

    .line 562
    :cond_1
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    if-eqz v0, :cond_2

    .line 563
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodIds:Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object v0

    goto :goto_0

    .line 564
    :cond_2
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fieldIds:Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object v0

    goto :goto_0

    .line 566
    :cond_3
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;

    if-eqz v0, :cond_4

    .line 567
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fieldIds:Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)Lcom/s1243808733/android/dx/dex/file/FieldIdItem;

    move-result-object v0

    goto :goto_0

    .line 568
    :cond_4
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_5

    .line 569
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->protoIds:Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object v0

    goto :goto_0

    .line 570
    :cond_5
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    if-eqz v0, :cond_6

    .line 571
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodHandles:Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object v0

    goto :goto_0

    .line 572
    :cond_6
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    if-eqz v0, :cond_7

    .line 573
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->callSiteIds:Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object v0

    goto :goto_0

    .line 575
    :cond_7
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    goto :goto_0
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
    .registers 5

    .line 204
    :try_start_0
    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->internClassName(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->classDefs:Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;

    new-instance v2, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-direct {v2, v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/dex/file/ClassDefsSection;->get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-object v0

    .line 205
    :catch_0
    move-exception v0

    .line 208
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/ClassDefItem;

    goto :goto_0
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

    if-gez v0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "file size not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fileSize:I

    return v0
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
    .registers 5

    .line 748
    new-instance v1, Lcom/s1243808733/android/dx/dex/file/Statistics;

    invoke-direct {v1}, Lcom/s1243808733/android/dx/dex/file/Statistics;-><init>()V

    .line 750
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->sections:[Lcom/s1243808733/android/dx/dex/file/Section;

    const/4 v0, 0x0

    .line 751
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 754
    return-object v1

    .line 750
    :cond_0
    aget-object v3, v2, v0

    .line 751
    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/dex/file/Statistics;->addAll(Lcom/s1243808733/android/dx/dex/file/Section;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ")V"
        }
    .end annotation

    .line 525
    if-nez p1, :cond_0

    .line 526
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_0
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->stringIds:Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/dex/file/StringIdItem;

    .line 542
    :cond_1
    :goto_0
    return-void

    .line 531
    :cond_2
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->typeIds:Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    goto :goto_0

    .line 533
    :cond_3
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    if-eqz v0, :cond_4

    .line 534
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodIds:Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)Lcom/s1243808733/android/dx/dex/file/MethodIdItem;

    goto :goto_0

    .line 535
    :cond_4
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_5

    .line 536
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fieldIds:Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)Lcom/s1243808733/android/dx/dex/file/FieldIdItem;

    goto :goto_0

    .line 537
    :cond_5
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;

    if-eqz v0, :cond_6

    .line 538
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->fieldIds:Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)Lcom/s1243808733/android/dx/dex/file/FieldIdItem;

    goto :goto_0

    .line 539
    :cond_6
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_7

    .line 540
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->protoIds:Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/ProtoIdsSection;->intern(Lcom/s1243808733/android/dx/rop/type/Prototype;)Lcom/s1243808733/android/dx/dex/file/ProtoIdItem;

    goto :goto_0

    .line 541
    :cond_7
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->methodHandles:Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;)V

    goto :goto_0
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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 286
    const/16 v0, 0x28

    if-ge p1, v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dumpWidth < 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    iput p1, p0, Lcom/s1243808733/android/dx/dex/file/DexFile;->dumpWidth:I

    return-void
.end method

.method public toDex(Ljava/io/Writer;Z)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    if-nez p1, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 271
    :goto_0
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/DexFile$Storage;

    invoke-direct {p0, v1, p2, v0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->toDex0(ZZLcom/s1243808733/android/dx/dex/file/DexFile$Storage;)Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    move-result-object v0

    .line 273
    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeAnnotationsTo(Ljava/io/Writer;)V

    .line 277
    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getArray()[B

    move-result-object v0

    return-object v0

    .line 270
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile$Storage;)Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;
    .registers 3

    const/4 v0, 0x0

    .line 256
    invoke-direct {p0, v0, v0, p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->toDex0(ZZLcom/s1243808733/android/dx/dex/file/DexFile$Storage;)Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;Lcom/s1243808733/android/dx/dex/file/DexFile$Storage;Ljava/io/Writer;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lcom/s1243808733/android/dx/dex/file/DexFile$Storage;",
            "Ljava/io/Writer;",
            "Z)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    if-nez p3, :cond_2

    const/4 v0, 0x0

    .line 238
    :goto_0
    invoke-direct {p0, v0, p4, p2}, Lcom/s1243808733/android/dx/dex/file/DexFile;->toDex0(ZZLcom/s1243808733/android/dx/dex/file/DexFile$Storage;)Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    move-result-object v1

    .line 240
    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 244
    :cond_0
    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v1, p3}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeAnnotationsTo(Ljava/io/Writer;)V

    :cond_1
    return-void

    .line 237
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/io/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/io/Writer;",
            "Z)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/DexFile$Storage;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/s1243808733/android/dx/dex/file/DexFile;->writeTo(Ljava/io/OutputStream;Lcom/s1243808733/android/dx/dex/file/DexFile$Storage;Ljava/io/Writer;Z)V

    return-void
.end method
