.class public Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$FlagsOffset;,
        Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;,
        Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;,
        Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;,
        Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ENTRY_FLAG_COMPLEX:S = 0x1s

.field private static final KNOWN_CONFIG_BYTES:I = 0x38

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static mMergeDuplicatedResCount:I

.field public static mTableStringsResguard:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

.field private mCurEntryID:I

.field private mCurPackageID:I

.field private final mCurSpecNameToPos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrTypeID:I

.field private mHeader:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

.field private mIn:Lcom/tencent/mm/util/ExtDataInput;

.field private mMappingWriter:Ljava/io/Writer;

.field private mMergeDuplicatedResInfoData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMergeDuplicatedResMappingWriter:Ljava/io/Writer;

.field private mMergeDuplicatedResTotalSize:J

.field private final mOldFileName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOut:Lcom/tencent/mm/util/ExtDataOutput;

.field private mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

.field private mPkgs:[Lcom/tencent/mm/androlib/res/data/ResPackage;

.field private mPkgsLenghtChange:[I

.field private mResId:I

.field private mResguardBuilder:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;

.field private mShouldResguardForType:Z

.field private final mShouldResguardTypeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecNames:Lcom/tencent/mm/androlib/res/decoder/StringBlock;

.field private mTableLenghtChange:I

.field private mTableStrings:Lcom/tencent/mm/androlib/res/decoder/StringBlock;

.field private mType:Lcom/tencent/mm/androlib/res/data/ResType;

.field private mTypeNames:Lcom/tencent/mm/androlib/res/decoder/StringBlock;


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    :try_start_0
    const-string v0, "com.tencent.mm.androlib.res.decoder.ARSCDecoder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_1b

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->LOGGER:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTableStringsResguard:Ljava/util/Map;

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResCount:I

    return-void

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Ljava/io/InputStream;Lcom/tencent/mm/androlib/ApkDecoder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTableLenghtChange:I

    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurrTypeID:I

    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurEntryID:I

    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurPackageID:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResTotalSize:J

    iput-boolean v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mShouldResguardForType:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResInfoData:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOldFileName:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurSpecNameToPos:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mShouldResguardTypeSet:Ljava/util/HashSet;

    new-instance v0, Lcom/tencent/mm/util/ExtDataInput;

    new-instance v1, Lcom/mindprod/ledatastream/LEDataInputStream;

    invoke-direct {v1, p1}, Lcom/mindprod/ledatastream/LEDataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/tencent/mm/util/ExtDataInput;-><init>(Ljava/io/DataInput;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    iput-object p2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->proguardFileName()V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lcom/tencent/mm/androlib/ApkDecoder;[Lcom/tencent/mm/androlib/res/data/ResPackage;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTableLenghtChange:I

    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurrTypeID:I

    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurEntryID:I

    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurPackageID:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResTotalSize:J

    iput-boolean v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mShouldResguardForType:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResInfoData:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOldFileName:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurSpecNameToPos:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mShouldResguardTypeSet:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    new-instance v0, Lcom/tencent/mm/util/ExtDataInput;

    new-instance v1, Lcom/mindprod/ledatastream/LEDataInputStream;

    invoke-direct {v1, p1}, Lcom/mindprod/ledatastream/LEDataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/tencent/mm/util/ExtDataInput;-><init>(Ljava/io/DataInput;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    new-instance v0, Lcom/tencent/mm/util/ExtDataOutput;

    new-instance v1, Lcom/mindprod/ledatastream/LEDataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v3}, Lcom/tencent/mm/androlib/ApkDecoder;->getOutTempARSCFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Lcom/mindprod/ledatastream/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/tencent/mm/util/ExtDataOutput;-><init>(Ljava/io/DataOutput;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iput-object p3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkgs:[Lcom/tencent/mm/androlib/res/data/ResPackage;

    array-length v0, p3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkgsLenghtChange:[I

    return-void
.end method

.method private checkChunkType(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    iget-short v0, v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->type:S

    if-eq v0, p1, :cond_29

    new-instance v0, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v1, "Invalid chunk type: expected=0x%08x, got=0x%08x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Short;

    iget-object v5, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    iget-short v5, v5, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->type:S

    invoke-direct {v4, v5}, Ljava/lang/Short;-><init>(S)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    return-void
.end method

.method private dealWithNonWhiteList(ILcom/tencent/mm/resourceproguard/Configuration;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/mm/resourceproguard/Configuration;",
            ")V^",
            "Lcom/tencent/mm/androlib/AndrolibException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p2, Lcom/tencent/mm/resourceproguard/Configuration;->mUseKeepMapping:Z

    if-eqz v1, :cond_a1

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-virtual {v1}, Lcom/tencent/mm/androlib/res/data/ResPackage;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p2, Lcom/tencent/mm/resourceproguard/Configuration;->mOldResMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    iget-object v4, p2, Lcom/tencent/mm/resourceproguard/Configuration;->mOldResMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mType:Lcom/tencent/mm/androlib/res/data/ResType;

    invoke-virtual {v4}, Lcom/tencent/mm/androlib/res/data/ResType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mSpecNames:Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    invoke-virtual {v4, p1}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v1, v2

    :goto_48
    if-nez v1, :cond_50

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResguardBuilder:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;

    invoke-virtual {v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->getReplaceString()Ljava/lang/String;

    move-result-object v0

    :cond_50
    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResguardBuilder:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;

    iget v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurEntryID:I

    invoke-virtual {v1, v4}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->setInReplaceList(I)V

    if-nez v0, :cond_61

    new-instance v0, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v1, "readEntry replaceString == null"

    invoke-direct {v0, v1}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-virtual {v1}, Lcom/tencent/mm/androlib/res/data/ResPackage;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mType:Lcom/tencent/mm/androlib/res/data/ResType;

    invoke-virtual {v4}, Lcom/tencent/mm/androlib/res/data/ResType;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mSpecNames:Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    invoke-virtual {v5, p1}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->generalResIDMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    iget v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResId:I

    invoke-virtual {v1, v4, v0}, Lcom/tencent/mm/androlib/res/data/ResPackage;->putSpecNamesReplace(ILjava/lang/String;)V

    iget-object v1, p2, Lcom/tencent/mm/resourceproguard/Configuration;->mFixedResName:Ljava/lang/String;

    if-eqz v1, :cond_8d

    iget-object v1, p2, Lcom/tencent/mm/resourceproguard/Configuration;->mFixedResName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_9d

    :cond_8d
    move v1, v3

    :goto_8e
    if-eqz v1, :cond_9f

    iget-object v1, p2, Lcom/tencent/mm/resourceproguard/Configuration;->mFixedResName:Ljava/lang/String;

    :goto_92
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mm/androlib/res/data/ResPackage;->putSpecNamesblock(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mType:Lcom/tencent/mm/androlib/res/data/ResType;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/androlib/res/data/ResType;->putSpecResguardName(Ljava/lang/String;)V

    return-void

    :cond_9d
    move v1, v2

    goto :goto_8e

    :cond_9f
    move-object v1, v0

    goto :goto_92

    :cond_a1
    move v1, v3

    goto :goto_48
.end method

.method private dealWithWhiteList(ILcom/tencent/mm/resourceproguard/Configuration;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-virtual {v0}, Lcom/tencent/mm/androlib/res/data/ResPackage;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/tencent/mm/resourceproguard/Configuration;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p2, Lcom/tencent/mm/resourceproguard/Configuration;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mType:Lcom/tencent/mm/androlib/res/data/ResType;

    invoke-virtual {v1}, Lcom/tencent/mm/androlib/res/data/ResType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mSpecNames:Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    invoke-virtual {v2, p1}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3e

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    return v0

    :cond_3e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    iget v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResId:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/androlib/res/data/ResPackage;->putSpecNamesReplace(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-virtual {v0, v2, v2}, Lcom/tencent/mm/androlib/res/data/ResPackage;->putSpecNamesblock(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResguardBuilder:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;

    iget v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurEntryID:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->setInWhiteList(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mType:Lcom/tencent/mm/androlib/res/data/ResType;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/androlib/res/data/ResType;->putSpecResguardName(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_3d
.end method

.method public static decode(Ljava/io/InputStream;Lcom/tencent/mm/androlib/ApkDecoder;)[Lcom/tencent/mm/androlib/res/data/ResPackage;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;-><init>(Ljava/io/InputStream;Lcom/tencent/mm/androlib/ApkDecoder;)V

    invoke-direct {v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->readTable()[Lcom/tencent/mm/androlib/res/data/ResPackage;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    return-object v0

    :catch_a
    move-exception v0

    new-instance v1, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v2, "Could not decode arsc file"

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private generalFileResMapping()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMappingWriter:Ljava/io/Writer;

    const-string v1, "res path mapping:\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOldFileName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMappingWriter:Ljava/io/Writer;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMappingWriter:Ljava/io/Writer;

    const-string v1, "res id mapping:\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMappingWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void

    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMappingWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOldFileName:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMappingWriter:Ljava/io/Writer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_13
.end method

.method private generalFilterEnd(IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResMappingWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "removed: count("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "), totalSize("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p2, p3}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->getNetFileSizeDescription(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResMappingWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method private generalFilterResIDMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResMappingWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " (size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static/range {p5 .. p6}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->getNetFileSizeDescription(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResMappingWriter:Ljava/io/Writer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResMappingWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method private generalResIDMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMappingWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "    "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ".R."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".R."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMappingWriter:Ljava/io/Writer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMappingWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method private static getNetFileSizeDescription(J)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "###.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000  # 2.0f

    int-to-long v2, v2

    cmp-long v2, p0, v2

    if-ltz v2, :cond_29

    long-to-double v2, p0

    const-wide/high16 v4, 0x41d0000000000000L  # 1.073741824E9

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_29
    const/high16 v2, 0x100000

    int-to-long v2, v2

    cmp-long v2, p0, v2

    if-ltz v2, :cond_42

    long-to-double v2, p0

    const-wide/high16 v4, 0x4130000000000000L  # 1048576.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_42
    const/16 v2, 0x400

    int-to-long v2, v2

    cmp-long v2, p0, v2

    if-ltz v2, :cond_5b

    long-to-double v2, p0

    const-wide/high16 v4, 0x4090000000000000L  # 1024.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_5b
    const/4 v1, 0x0

    int-to-long v2, v1

    cmp-long v1, p0, v2

    if-gtz v1, :cond_67

    const-string v1, "0B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_67
    long-to-int v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24
.end method

.method private getWhiteList(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-virtual {v0}, Lcom/tencent/mm/androlib/res/data/ResPackage;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v1}, Lcom/tencent/mm/androlib/ApkDecoder;->getConfig()Lcom/tencent/mm/resourceproguard/Configuration;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/resourceproguard/Configuration;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v1}, Lcom/tencent/mm/androlib/ApkDecoder;->getConfig()Lcom/tencent/mm/resourceproguard/Configuration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/tencent/mm/resourceproguard/Configuration;->mUseWhiteList:Z

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v1}, Lcom/tencent/mm/androlib/ApkDecoder;->getConfig()Lcom/tencent/mm/resourceproguard/Configuration;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/resourceproguard/Configuration;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    :goto_32
    return-object v0

    :cond_33
    const/4 v0, 0x0

    check-cast v0, Ljava/util/HashSet;

    goto :goto_32
.end method

.method private initResGuardBuild(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mType:Lcom/tencent/mm/androlib/res/data/ResType;

    invoke-virtual {v0}, Lcom/tencent/mm/androlib/res/data/ResType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->getWhiteList(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResguardBuilder:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->reset(Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResguardBuilder:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;

    invoke-static {p1}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->getExistTypeSpecNameStrings(I)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->removeStrings(Ljava/util/Collection;)V

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->reduceFromOldMappingFile()V

    return-void
.end method

.method private isToResguardFile(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "array"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method private mergeDuplicated(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResInfoData:Ljava/util/Map;

    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_23

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_47

    :cond_23
    :goto_23
    if-eqz v0, :cond_7c

    invoke-static {v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->access$L1000071(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->access$L1000069(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->generalFilterResIDMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    sget v1, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResCount:I

    iget-wide v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResTotalSize:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResTotalSize:J

    :goto_46
    return-object v0

    :cond_47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;

    invoke-static {v2}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->access$L1000072(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_63

    new-instance v4, Ljava/io/File;

    invoke-static {v2}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->access$L1000070(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/tencent/mm/util/Md5Util;->getMD5Str(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->access$S1000072(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;Ljava/lang/String;)V

    :cond_63
    invoke-static {p1}, Lcom/tencent/mm/util/Md5Util;->getMD5Str(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-static {v2}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->access$L1000072(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v2, v4}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->access$S1000072(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_23

    :cond_7c
    new-instance v2, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;

    invoke-direct {v2}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;-><init>()V

    invoke-virtual {v2, p4}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;->setFileName(Ljava/lang/String;)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;->setFilePath(Ljava/lang/String;)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;->setOriginalName(Ljava/lang/String;)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;->create()Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->access$S1000069(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->access$S1000070(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;Ljava/lang/String;)V

    invoke-static {v2, p3}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->access$S1000071(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;Ljava/lang/String;)V

    if-nez v1, :cond_b7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResInfoData:Ljava/util/Map;

    new-instance v4, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b7
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46
.end method

.method private nextChunk()Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-static {v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->read(Lcom/tencent/mm/util/ExtDataInput;)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    return-object v0
.end method

.method private nextChunkCheckType(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->nextChunk()Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    invoke-direct {p0, p1}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->checkChunkType(I)V

    return-void
.end method

.method private proguardFileName()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v3}, Lcom/tencent/mm/androlib/ApkDecoder;->getResMappingFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMappingWriter:Ljava/io/Writer;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v3}, Lcom/tencent/mm/androlib/ApkDecoder;->getMergeDuplicatedResMappingFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResMappingWriter:Ljava/io/Writer;

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResMappingWriter:Ljava/io/Writer;

    const-string v2, "res filter path mapping:\n"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResMappingWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    new-instance v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;

    invoke-direct {v0, p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;-><init>(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResguardBuilder:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResguardBuilder:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;

    const/4 v0, 0x0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->reset(Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v0}, Lcom/tencent/mm/androlib/ApkDecoder;->getConfig()Lcom/tencent/mm/resourceproguard/Configuration;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v0}, Lcom/tencent/mm/androlib/ApkDecoder;->getRawResFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    move v0, v1

    :goto_51
    array-length v2, v4

    if-lt v0, v2, :cond_8a

    iget-boolean v0, v3, Lcom/tencent/mm/resourceproguard/Configuration;->mKeepRoot:Z

    if-nez v0, :cond_80

    iget-boolean v0, v3, Lcom/tencent/mm/resourceproguard/Configuration;->mUseKeepMapping:Z

    if-eqz v0, :cond_1a8

    iget-object v3, v3, Lcom/tencent/mm/resourceproguard/Configuration;->mOldFileMapping:Ljava/util/HashMap;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "r"

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResguardBuilder:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->removeStrings(Ljava/util/Collection;)V

    :goto_7a
    array-length v0, v4

    if-lt v1, v0, :cond_d8

    :goto_7d
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->generalFileResMapping()V

    :cond_80
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v0}, Lcom/tencent/mm/androlib/ApkDecoder;->getOutResFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/util/Utils;->cleanDir(Ljava/io/File;)V

    return-void

    :cond_8a
    aget-object v2, v4, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a2

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_a2
    iget-object v5, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mShouldResguardTypeSet:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_aa
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v2, -0x1

    if-ne v7, v2, :cond_ca

    new-instance v2, Ljava/io/IOException;

    const-string v3, "the old mapping res file path should be like r/a, yours %s\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_ca
    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :cond_d8
    aget-object v0, v4, v1

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "res"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    iget-object v6, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOldFileName:Ljava/util/Map;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_115
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7a

    :cond_119
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOldFileName:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResguardBuilder:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;

    invoke-virtual {v7}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->getReplaceString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_115

    :cond_149
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOldFileName:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "res"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, v4, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "r"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v5, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResguardBuilder:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;

    invoke-virtual {v5}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->getReplaceString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    :cond_1a8
    array-length v0, v4

    if-lt v1, v0, :cond_149

    goto/16 :goto_7d
.end method

.method private reWriteTable()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Lcom/tencent/mm/androlib/AndrolibException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lcom/tencent/mm/util/ExtDataInput;

    new-instance v2, Lcom/mindprod/ledatastream/LEDataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v4}, Lcom/tencent/mm/androlib/ApkDecoder;->getOutTempARSCFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Lcom/mindprod/ledatastream/LEDataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Lcom/tencent/mm/util/ExtDataInput;-><init>(Ljava/io/DataInput;)V

    iput-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    new-instance v1, Lcom/tencent/mm/util/ExtDataOutput;

    new-instance v2, Lcom/mindprod/ledatastream/LEDataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v4}, Lcom/tencent/mm/androlib/ApkDecoder;->getOutARSCFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Lcom/mindprod/ledatastream/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lcom/tencent/mm/util/ExtDataOutput;-><init>(Ljava/io/DataOutput;)V

    iput-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTableLenghtChange:I

    invoke-direct {p0, v1, v2}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writeNextChunkCheck(II)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-static {v2, v3}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->writeAll(Lcom/tencent/mm/util/ExtDataInput;Lcom/tencent/mm/util/ExtDataOutput;)V

    :goto_47
    if-lt v0, v1, :cond_53

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v0}, Lcom/tencent/mm/androlib/ApkDecoder;->getOutTempARSCFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :cond_53
    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurPackageID:I

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkgsLenghtChange:[I

    iget v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurPackageID:I

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writeNextChunk(I)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    iget-object v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    iget v4, v4, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->chunkSize:I

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/util/ExtDataOutput;->writeBytes(Lcom/tencent/mm/util/ExtDataInput;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_47
.end method

.method private readComplexEntry(ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v1

    const/4 v0, 0x0

    :goto_c
    if-lt v0, v1, :cond_f

    return-void

    :cond_f
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v2}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->readValue(ZI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method private readConfig()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    const/16 v0, 0x201

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->checkChunkType(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->skipInt()V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->readConfigFlags()V

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/util/ExtDataInput;->readIntArray(I)[I

    move-result-object v1

    const/4 v0, 0x0

    :goto_1f
    array-length v2, v1

    if-lt v0, v2, :cond_23

    return-void

    :cond_23
    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurEntryID:I

    aget v2, v1, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_35

    iget v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResId:I

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    or-int/2addr v2, v0

    iput v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResId:I

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->readEntry()V

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method

.method private readConfigFlags()V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/16 v7, 0x38

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v2

    const/16 v0, 0x1c

    if-ge v2, v0, :cond_18

    new-instance v0, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v1, "Config size < 28"

    invoke-direct {v0, v1}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    move-result v0

    int-to-char v0, v0

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    move-result v0

    int-to-char v0, v0

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    move-result v0

    int-to-char v0, v0

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    move-result v0

    int-to-char v0, v0

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readUnsignedShort()I

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    int-to-byte v0, v5

    int-to-byte v0, v5

    int-to-short v0, v5

    const/16 v0, 0x20

    if-lt v2, v0, :cond_8b

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    :cond_8b
    int-to-short v0, v5

    int-to-short v0, v5

    const/16 v0, 0x24

    if-lt v2, v0, :cond_9b

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    :cond_9b
    move-object v0, v1

    check-cast v0, [C

    check-cast v1, [C

    const/16 v0, 0x30

    if-lt v2, v0, :cond_b5

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->readScriptOrVariantChar(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->readScriptOrVariantChar(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    :cond_b5
    int-to-byte v0, v5

    const/16 v0, 0x34

    if-lt v2, v0, :cond_c5

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    :cond_c5
    if-lt v2, v7, :cond_cd

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    :cond_cd
    add-int/lit8 v0, v2, -0x38

    if-lez v0, :cond_f9

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/util/ExtDataInput;->readFully([B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v6, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    sget-object v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Config flags size > %d, but exceeding bytes are all zero, so it should be ok."

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_f9
    :goto_f9
    return-void

    :cond_fa
    sget-object v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->LOGGER:Ljava/util/logging/Logger;

    const-string v2, "Config flags size > %d. Exceeding bytes: 0x%X."

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_f9
.end method

.method private readEntry()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    move-result v2

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v3

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-virtual {v0}, Lcom/tencent/mm/androlib/res/data/ResPackage;->isCanResguard()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResguardBuilder:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;

    iget v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurEntryID:I

    invoke-virtual {v0, v4}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->isReplaced(I)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResguardBuilder:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;

    iget v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurEntryID:I

    invoke-virtual {v0, v4}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->isInWhiteList(I)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v0}, Lcom/tencent/mm/androlib/ApkDecoder;->getConfig()Lcom/tencent/mm/resourceproguard/Configuration;

    move-result-object v4

    iget-boolean v0, v4, Lcom/tencent/mm/resourceproguard/Configuration;->mUseWhiteList:Z

    if-eqz v0, :cond_4f

    invoke-direct {p0, v3, v4}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->dealWithWhiteList(ILcom/tencent/mm/resourceproguard/Configuration;)Z

    move-result v0

    :goto_3d
    if-nez v0, :cond_42

    invoke-direct {p0, v3, v4}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->dealWithNonWhiteList(ILcom/tencent/mm/resourceproguard/Configuration;)V

    :cond_42
    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_4b

    const/4 v0, 0x1

    invoke-direct {p0, v0, v3}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->readValue(ZI)V

    :goto_4a
    return-void

    :cond_4b
    invoke-direct {p0, v1, v3}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->readComplexEntry(ZI)V

    goto :goto_4a

    :cond_4f
    move v0, v1

    goto :goto_3d
.end method

.method private readLibraryType()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Lcom/tencent/mm/androlib/AndrolibException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x203

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->checkChunkType(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v2

    move v0, v1

    :goto_e
    if-lt v0, v2, :cond_1b

    :goto_10
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->nextChunk()Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    move-result-object v0

    iget-short v0, v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->type:S

    const/16 v1, 0x201

    if-eq v0, v1, :cond_3f

    return-void

    :cond_1b
    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v3}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/16 v5, 0x80

    invoke-virtual {v4, v5, v8}, Lcom/tencent/mm/util/ExtDataInput;->readNullEndedString(IZ)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Decoding Shared Library (%s), pkgId: %d\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_3f
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->readTableTypeSpec()V

    goto :goto_10
.end method

.method private readPackage()Lcom/tencent/mm/androlib/res/data/ResPackage;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->checkChunkType(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v0

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v5}, Lcom/tencent/mm/util/ExtDataInput;->readNullEndedString(IZ)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "reading packagename %s\n"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v2}, Lcom/tencent/mm/util/ExtDataInput;->skipInt()V

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v2}, Lcom/tencent/mm/util/ExtDataInput;->skipInt()V

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v2}, Lcom/tencent/mm/util/ExtDataInput;->skipInt()V

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v2}, Lcom/tencent/mm/util/ExtDataInput;->skipInt()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurrTypeID:I

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-static {v2}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->read(Lcom/tencent/mm/util/ExtDataInput;)Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTypeNames:Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-static {v2}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->read(Lcom/tencent/mm/util/ExtDataInput;)Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mSpecNames:Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    shl-int/lit8 v2, v0, 0x18

    iput v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResId:I

    new-instance v2, Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-direct {v2, v0, v1}, Lcom/tencent/mm/androlib/res/data/ResPackage;-><init>(ILjava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-virtual {v0}, Lcom/tencent/mm/androlib/res/data/ResPackage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/androlib/res/data/ResPackage;->setCanResguard(Z)V

    :goto_66
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->nextChunk()Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    :goto_69
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    iget-short v0, v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->type:S

    const/16 v1, 0x203

    if-eq v0, v1, :cond_82

    :goto_71
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    iget-short v0, v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->type:S

    const/16 v1, 0x202

    if-eq v0, v1, :cond_86

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    return-object v0

    :cond_7c
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/androlib/res/data/ResPackage;->setCanResguard(Z)V

    goto :goto_66

    :cond_82
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->readLibraryType()V

    goto :goto_69

    :cond_86
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->readTableTypeSpec()V

    goto :goto_71
.end method

.method private readScriptOrVariantChar(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_7
    add-int/lit8 v0, p1, -0x1

    if-nez p1, :cond_15

    :cond_b
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v2}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    move-result v2

    int-to-short v2, v2

    if-eqz v2, :cond_b

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v0

    goto :goto_7
.end method

.method private readTable()[Lcom/tencent/mm/androlib/res/data/ResPackage;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->nextChunkCheckType(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v2

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-static {v0}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->read(Lcom/tencent/mm/util/ExtDataInput;)Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTableStrings:Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    new-array v3, v2, [Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->nextChunk()Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    move v0, v1

    :goto_1a
    if-lt v0, v2, :cond_58

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMappingWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "resources mapping file %s done\n"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v5}, Lcom/tencent/mm/androlib/ApkDecoder;->getResMappingFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    sget v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResCount:I

    iget-wide v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResTotalSize:J

    invoke-direct {p0, v0, v4, v5}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->generalFilterEnd(IJ)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mMergeDuplicatedResMappingWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "resources filter mapping file %s done\n"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v5}, Lcom/tencent/mm/androlib/ApkDecoder;->getMergeDuplicatedResMappingFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-object v3

    :cond_58
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->readPackage()Lcom/tencent/mm/androlib/res/data/ResPackage;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method private readTableTypeSpec()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Lcom/tencent/mm/androlib/AndrolibException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x202

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->checkChunkType(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v1

    new-instance v2, Lcom/tencent/mm/androlib/res/data/ResType;

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTypeNames:Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/androlib/res/data/ResType;-><init>(Ljava/lang/String;Lcom/tencent/mm/androlib/res/data/ResPackage;)V

    iput-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mType:Lcom/tencent/mm/androlib/res/data/ResType;

    iget v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurrTypeID:I

    if-eq v2, v0, :cond_33

    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurrTypeID:I

    iget v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurrTypeID:I

    invoke-direct {p0, v2}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->initResGuardBuild(I)V

    :cond_33
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTypeNames:Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->isToResguardFile(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mShouldResguardForType:Z

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v2, v1}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    iget v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResId:I

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResId:I

    :goto_52
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->nextChunk()Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    move-result-object v0

    iget-short v0, v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->type:S

    const/16 v1, 0x201

    if-eq v0, v1, :cond_5d

    return-void

    :cond_5d
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->readConfig()V

    goto :goto_52
.end method

.method private readValue(ZI)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataInput;->skipCheckShort(S)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0, v10}, Lcom/tencent/mm/util/ExtDataInput;->skipCheckByte(B)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v5

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-virtual {v1}, Lcom/tencent/mm/androlib/res/data/ResPackage;->isCanResguard()Z

    move-result v1

    if-eqz v1, :cond_61

    if-eqz p1, :cond_61

    const/4 v1, 0x3

    if-ne v0, v1, :cond_61

    iget-boolean v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mShouldResguardForType:Z

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mShouldResguardTypeSet:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mType:Lcom/tencent/mm/androlib/res/data/ResType;

    invoke-virtual {v1}, Lcom/tencent/mm/androlib/res/data/ResType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    sget-object v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTableStringsResguard:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTableStrings:Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/mm/androlib/res/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    const-string v0, "null"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    :cond_61
    :goto_61
    return-void

    :cond_62
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    iget v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResId:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/androlib/res/data/ResPackage;->getSpecRepplace(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_82

    new-instance v0, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v1, "can not find \\ or raw string in res path = %s"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v6, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    invoke-virtual {v6, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v3}, Lcom/tencent/mm/androlib/ApkDecoder;->getConfig()Lcom/tencent/mm/resourceproguard/Configuration;

    move-result-object v3

    iget-boolean v3, v3, Lcom/tencent/mm/resourceproguard/Configuration;->mKeepRoot:Z

    if-nez v3, :cond_9c

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOldFileName:Ljava/util/Map;

    invoke-virtual {v6, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_9c
    if-nez v0, :cond_aa

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "can not found new res path, raw=%s\n"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v6, v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_61

    :cond_aa
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_205

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_ec
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_208

    const-string v2, "/"

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "/"

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_111
    new-instance v7, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v8}, Lcom/tencent/mm/androlib/ApkDecoder;->getOutTempDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v9}, Lcom/tencent/mm/androlib/ApkDecoder;->getOutDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    check-cast v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v3}, Lcom/tencent/mm/androlib/ApkDecoder;->getConfig()Lcom/tencent/mm/resourceproguard/Configuration;

    move-result-object v3

    iget-boolean v8, v3, Lcom/tencent/mm/resourceproguard/Configuration;->mMergeDuplicatedRes:Z

    if-eqz v8, :cond_202

    invoke-direct {p0, v7, v4, v2, v1}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mergeDuplicated(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;

    move-result-object v0

    if-eqz v0, :cond_202

    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->access$L1000070(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->access$L1000069(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    :goto_198
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v0}, Lcom/tencent/mm/androlib/ApkDecoder;->getCompressData()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c4

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1ad
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1d0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "can not find res file, you delete it? path: resFile=%s\n"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_61

    :cond_1c4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "can not find the compress dataresFile=%s\n"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v6, v9, v10

    invoke-virtual {v0, v4, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_1ad

    :cond_1d0
    if-nez v8, :cond_1ec

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1ec

    new-instance v0, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v1, "res dest file is already  found: destFile=%s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v10

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ec
    if-nez v3, :cond_1f1

    invoke-static {v7, v2}, Lcom/tencent/mm/util/FileOperation;->copyFileUsingStream(Ljava/io/File;Ljava/io/File;)V

    :cond_1f1
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v0, v7}, Lcom/tencent/mm/androlib/ApkDecoder;->removeCopiedResFile(Ljava/io/File;)V

    sget-object v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTableStringsResguard:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_61

    :cond_202
    move-object v2, v4

    move-object v3, v0

    goto :goto_198

    :cond_205
    move-object v1, v0

    goto/16 :goto_ec

    :cond_208
    move-object v2, v0

    goto/16 :goto_111
.end method

.method private reduceFromOldMappingFile()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-virtual {v0}, Lcom/tencent/mm/androlib/res/data/ResPackage;->isCanResguard()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v0}, Lcom/tencent/mm/androlib/ApkDecoder;->getConfig()Lcom/tencent/mm/resourceproguard/Configuration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseKeepMapping:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mApkDecoder:Lcom/tencent/mm/androlib/ApkDecoder;

    invoke-virtual {v0}, Lcom/tencent/mm/androlib/ApkDecoder;->getConfig()Lcom/tencent/mm/resourceproguard/Configuration;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldResMapping:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-virtual {v1}, Lcom/tencent/mm/androlib/res/data/ResPackage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mType:Lcom/tencent/mm/androlib/res/data/ResType;

    invoke-virtual {v1}, Lcom/tencent/mm/androlib/res/data/ResType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResguardBuilder:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->removeStrings(Ljava/util/Collection;)V

    :cond_47
    return-void
.end method

.method public static write(Ljava/io/InputStream;Lcom/tencent/mm/androlib/ApkDecoder;[Lcom/tencent/mm/androlib/res/data/ResPackage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/tencent/mm/androlib/ApkDecoder;",
            "[",
            "Lcom/tencent/mm/androlib/res/data/ResPackage;",
            ")V^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;-><init>(Ljava/io/InputStream;Lcom/tencent/mm/androlib/ApkDecoder;[Lcom/tencent/mm/androlib/res/data/ResPackage;)V

    invoke-direct {v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writeTable()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    new-instance v1, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v2, "Could not decode arsc file"

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private writeComplexEntry()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v1

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    const/4 v0, 0x0

    :goto_17
    if-lt v0, v1, :cond_1a

    return-void

    :cond_1a
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v3}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writeValue()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method private writeConfig()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    const/16 v0, 0x201

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->checkChunkType(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v2}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writeConfigFlags()V

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/util/ExtDataInput;->readIntArray(I)[I

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataOutput;->writeIntArray([I)V

    const/4 v0, 0x0

    :goto_35
    array-length v2, v1

    if-lt v0, v2, :cond_39

    return-void

    :cond_39
    aget v2, v1, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_49

    iget v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResId:I

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    or-int/2addr v2, v0

    iput v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResId:I

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writeEntry()V

    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_35
.end method

.method private writeConfigFlags()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_12

    new-instance v0, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v1, "Config size < 28"

    invoke-direct {v0, v1}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/util/ExtDataOutput;->writeBytes(Lcom/tencent/mm/util/ExtDataInput;I)V

    return-void
.end method

.method private writeEntry()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/util/ExtDataOutput;->writeBytes(Lcom/tencent/mm/util/ExtDataInput;I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    move-result v1

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataOutput;->writeShort(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkgs:[Lcom/tencent/mm/androlib/res/data/ResPackage;

    iget v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurPackageID:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/tencent/mm/androlib/res/data/ResPackage;->isCanResguard()Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurSpecNameToPos:Ljava/util/Map;

    iget v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResId:I

    invoke-virtual {v2, v3}, Lcom/tencent/mm/androlib/res/data/ResPackage;->getSpecRepplace(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_50

    new-instance v1, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v2, "writeEntry new specNamesId < 0 %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_50
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_5d

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writeValue()V

    :goto_5c
    return-void

    :cond_5d
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writeComplexEntry()V

    goto :goto_5c
.end method

.method private writeLibraryType()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Lcom/tencent/mm/androlib/AndrolibException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v0, 0x203

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->checkChunkType(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v2

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    move v0, v1

    :goto_12
    if-lt v0, v2, :cond_20

    invoke-direct {p0, v1}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writeNextChunk(I)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    :goto_17
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    iget-short v0, v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->type:S

    const/16 v1, 0x201

    if-eq v0, v1, :cond_37

    return-void

    :cond_20
    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v4}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/16 v5, 0x100

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/util/ExtDataOutput;->writeBytes(Lcom/tencent/mm/util/ExtDataInput;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_37
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writeTableTypeSpec()V

    goto :goto_17
.end method

.method private writeNextChunk(I)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-static {v0, v1, p1}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->readAndWriteHeader(Lcom/tencent/mm/util/ExtDataInput;Lcom/tencent/mm/util/ExtDataOutput;I)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    return-object v0
.end method

.method private writeNextChunkCheck(II)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-static {v0, v1, p2}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->readAndWriteHeader(Lcom/tencent/mm/util/ExtDataInput;Lcom/tencent/mm/util/ExtDataOutput;I)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    iget-short v0, v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->type:S

    if-eq v0, p1, :cond_33

    new-instance v0, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v1, "Invalid chunk type: expected=%d, got=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Short;

    iget-object v5, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    iget-short v5, v5, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->type:S

    invoke-direct {v4, v5}, Ljava/lang/Short;-><init>(S)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    return-object v0
.end method

.method private writePackage()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->checkChunkType(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v0

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    shl-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResId:I

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/util/ExtDataOutput;->writeBytes(Lcom/tencent/mm/util/ExtDataInput;I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-static {v0, v1}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->writeAll(Lcom/tencent/mm/util/ExtDataInput;Lcom/tencent/mm/util/ExtDataOutput;)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkgs:[Lcom/tencent/mm/androlib/res/data/ResPackage;

    iget v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurPackageID:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/tencent/mm/androlib/res/data/ResPackage;->isCanResguard()Z

    move-result v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkgs:[Lcom/tencent/mm/androlib/res/data/ResPackage;

    iget v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurPackageID:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/tencent/mm/androlib/res/data/ResPackage;->getSpecNamesBlock()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurSpecNameToPos:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->writeSpecNameStringBlock(Lcom/tencent/mm/util/ExtDataInput;Lcom/tencent/mm/util/ExtDataOutput;Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkgsLenghtChange:[I

    iget v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurPackageID:I

    aget v3, v1, v2

    add-int/2addr v3, v0

    aput v3, v1, v2

    iget v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTableLenghtChange:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTableLenghtChange:I

    :goto_7f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writeNextChunk(I)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    :goto_83
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    iget-short v0, v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->type:S

    const/16 v1, 0x203

    if-eq v0, v1, :cond_9c

    :goto_8b
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    iget-short v0, v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->type:S

    const/16 v1, 0x202

    if-eq v0, v1, :cond_a0

    return-void

    :cond_94
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-static {v0, v1}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->writeAll(Lcom/tencent/mm/util/ExtDataInput;Lcom/tencent/mm/util/ExtDataOutput;)V

    goto :goto_7f

    :cond_9c
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writeLibraryType()V

    goto :goto_83

    :cond_a0
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writeTableTypeSpec()V

    goto :goto_8b
.end method

.method private writeTable()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "writing new resources.arsc \n"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTableLenghtChange:I

    invoke-direct {p0, v6, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writeNextChunkCheck(II)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    iget v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTableLenghtChange:I

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    iget-object v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    sget-object v5, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTableStringsResguard:Ljava/util/Map;

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->writeTableNameStringBlock(Lcom/tencent/mm/util/ExtDataInput;Lcom/tencent/mm/util/ExtDataOutput;Ljava/util/Map;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mTableLenghtChange:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writeNextChunk(I)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkgs:[Lcom/tencent/mm/androlib/res/data/ResPackage;

    array-length v2, v2

    if-eq v1, v2, :cond_59

    new-instance v2, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v3, "writeTable package count is different before %d, now %d"

    new-array v4, v6, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mPkgs:[Lcom/tencent/mm/androlib/res/data/ResPackage;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_52
    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mCurPackageID:I

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writePackage()V

    add-int/lit8 v0, v0, 0x1

    :cond_59
    if-lt v0, v1, :cond_52

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->reWriteTable()V

    return-void
.end method

.method private writeTableTypeSpec()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Lcom/tencent/mm/androlib/AndrolibException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x202

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->checkChunkType(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/util/ExtDataOutput;->writeByte(I)V

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    iget v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResId:I

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mResId:I

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/util/ExtDataOutput;->writeBytes(Lcom/tencent/mm/util/ExtDataInput;I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/util/ExtDataInput;->readIntArray(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/util/ExtDataOutput;->writeIntArray([I)V

    :goto_38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writeNextChunk(I)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;

    move-result-object v0

    iget-short v0, v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$Header;->type:S

    const/16 v1, 0x201

    if-eq v0, v1, :cond_44

    return-void

    :cond_44
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->writeConfig()V

    goto :goto_38
.end method

.method private writeValue()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/util/ExtDataOutput;->writeCheckShort(SS)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/util/ExtDataOutput;->writeCheckByte(BB)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/util/ExtDataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;->mOut:Lcom/tencent/mm/util/ExtDataOutput;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/util/ExtDataOutput;->writeInt(I)V

    return-void
.end method
