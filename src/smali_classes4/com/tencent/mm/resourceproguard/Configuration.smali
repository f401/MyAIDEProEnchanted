.class public Lcom/tencent/mm/resourceproguard/Configuration;
.super Ljava/lang/Object;


# static fields
.field public static final ASRC_FILE:Ljava/lang/String; = "resource.asrc"

.field private static final ATTR_7ZIP:Ljava/lang/String; = "seventzip"

.field private static final ATTR_ACTIVE:Ljava/lang/String; = "isactive"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEEPROOT:Ljava/lang/String; = "keeproot"

.field private static final ATTR_SIGNFILE:Ljava/lang/String; = "metaname"

.field private static final ATTR_SIGNFILE_ALIAS:Ljava/lang/String; = "alias"

.field private static final ATTR_SIGNFILE_KEYPASS:Ljava/lang/String; = "keypass"

.field private static final ATTR_SIGNFILE_PATH:Ljava/lang/String; = "path"

.field private static final ATTR_SIGNFILE_STOREPASS:Ljava/lang/String; = "storepass"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final COMPRESS_ISSUE:Ljava/lang/String; = "compress"

.field public static final DEFAULT_DIGEST_ALG:Ljava/lang/String; = "SHA1"

.field private static final MAPPING_ISSUE:Ljava/lang/String; = "keepmapping"

.field private static final MERGE_DUPLICATED_RES:Ljava/lang/String; = "mergeDuplicatedRes"

.field private static final PROPERTY_ISSUE:Ljava/lang/String; = "property"

.field private static final SIGN_ISSUE:Ljava/lang/String; = "sign"

.field private static final TAG_ISSUE:Ljava/lang/String; = "issue"

.field private static final WHITELIST_ISSUE:Ljava/lang/String; = "whitelist"


# instance fields
.field private final MAP_PATTERN:Ljava/util/regex/Pattern;

.field public final digestAlg:Ljava/lang/String;

.field public m7zipPath:Ljava/lang/String;

.field public final mCompressPatterns:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field public mFixedResName:Ljava/lang/String;

.field public mKeepRoot:Z

.field public mKeyPass:Ljava/lang/String;

.field public mMergeDuplicatedRes:Z

.field public mMetaName:Ljava/lang/String;

.field public final mOldFileMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOldMappingFile:Ljava/io/File;

.field public final mOldResMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mSignatureFile:Ljava/io/File;

.field public mStoreAlias:Ljava/lang/String;

.field public mStorePass:Ljava/lang/String;

.field public mUse7zip:Z

.field public mUseCompress:Z

.field public mUseKeepMapping:Z

.field public mUseSignAPK:Z

.field public mUseWhiteList:Z

.field public final mWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mZipalignPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/resourceproguard/InputParam;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\\s+(.*)->(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->MAP_PATTERN:Ljava/util/regex/Pattern;

    iput-boolean v4, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUse7zip:Z

    iput-boolean v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mKeepRoot:Z

    iput-boolean v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mMergeDuplicatedRes:Z

    const-string v0, "META-INF"

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mMetaName:Ljava/lang/String;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mFixedResName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseSignAPK:Z

    iput-boolean v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseKeepMapping:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mWhiteList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldResMapping:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldFileMapping:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mCompressPatterns:Ljava/util/HashSet;

    iget-object v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->digestAlg:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->digestAlg:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->useSign:Z

    if-eqz v0, :cond_4f

    iget-object v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->signFile:Ljava/io/File;

    iget-object v1, p1, Lcom/tencent/mm/resourceproguard/InputParam;->keypass:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/mm/resourceproguard/InputParam;->storealias:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/mm/resourceproguard/InputParam;->storepass:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tencent/mm/resourceproguard/Configuration;->setSignData(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    iget-object v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->mappingFile:Ljava/io/File;

    if-eqz v0, :cond_5a

    iput-boolean v4, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseKeepMapping:Z

    iget-object v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->mappingFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/tencent/mm/resourceproguard/Configuration;->setKeepMappingData(Ljava/io/File;)V

    :cond_5a
    iget-object v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->whiteList:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_93

    iget-boolean v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->use7zip:Z

    iput-boolean v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUse7zip:Z

    iget-boolean v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->keepRoot:Z

    iput-boolean v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mKeepRoot:Z

    iget-boolean v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->mergeDuplicatedRes:Z

    iput-boolean v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mMergeDuplicatedRes:Z

    iget-object v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->metaName:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mMetaName:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->fixedResName:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mFixedResName:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->compressFilePattern:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_84
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9f

    iget-object v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->sevenZipPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->m7zipPath:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/mm/resourceproguard/InputParam;->zipAlignPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mZipalignPath:Ljava/lang/String;

    return-void

    :cond_93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-boolean v4, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseWhiteList:Z

    invoke-direct {p0, v0}, Lcom/tencent/mm/resourceproguard/Configuration;->addWhiteList(Ljava/lang/String;)V

    goto :goto_62

    :cond_9f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-boolean v4, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseCompress:Z

    invoke-direct {p0, v0}, Lcom/tencent/mm/resourceproguard/Configuration;->addToCompressPatterns(Ljava/lang/String;)V

    goto :goto_84
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\\s+(.*)->(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->MAP_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUse7zip:Z

    iput-boolean v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mKeepRoot:Z

    iput-boolean v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mMergeDuplicatedRes:Z

    const-string v0, "META-INF"

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mMetaName:Ljava/lang/String;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mFixedResName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseSignAPK:Z

    iput-boolean v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseKeepMapping:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mWhiteList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldResMapping:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldFileMapping:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mCompressPatterns:Ljava/util/HashSet;

    const-string v0, "SHA1"

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->digestAlg:Ljava/lang/String;

    if-eqz p5, :cond_45

    invoke-direct {p0, p5, p6, p7, p8}, Lcom/tencent/mm/resourceproguard/Configuration;->setSignData(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    if-eqz p4, :cond_4a

    invoke-direct {p0, p4}, Lcom/tencent/mm/resourceproguard/Configuration;->setKeepMappingData(Ljava/io/File;)V

    :cond_4a
    invoke-direct {p0, p1}, Lcom/tencent/mm/resourceproguard/Configuration;->readXmlConfig(Ljava/io/File;)V

    iput-object p2, p0, Lcom/tencent/mm/resourceproguard/Configuration;->m7zipPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mZipalignPath:Ljava/lang/String;

    return-void
.end method

.method private addToCompressPatterns(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid config file: Missing required attribute %s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-static {p1}, Lcom/tencent/mm/util/Utils;->convertToPatternString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mCompressPatterns:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addWhiteList(Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid config file: Missing required attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    const-string v0, ".R."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "please write the full package name,eg com.tencent.mm.R.drawable.dfdf, but yours %s\n"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    move-object v1, v0

    :goto_69
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    :goto_75
    invoke-static {v3}, Lcom/tencent/mm/util/Utils;->convertToPatternString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "convertToPatternString typeName %s format %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v7

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_9b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    goto :goto_69

    :cond_a2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_75
.end method

.method private loadMappingFilesFromXml(Lorg/w3c/dom/Node;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldMappingFile:Ljava/io/File;

    if-eqz v0, :cond_e

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Mapping file already load from command line, ignore this config"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    return-void

    :cond_e
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_d

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    move v1, v2

    :goto_1d
    if-ge v1, v4, :cond_d

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v6, :cond_4c

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v5, "value"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_49

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid config file: Missing required attribute %s\n"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "value"

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    invoke-direct {p0, v0}, Lcom/tencent/mm/resourceproguard/Configuration;->readOldMapping(Ljava/lang/String;)V

    :cond_4c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d
.end method

.method private processOldMappingFile()V
    .registers 9
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

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldResMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldFileMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :try_start_c
    new-instance v2, Ljava/io/FileReader;

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldMappingFile:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_13} :catch_25

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_18
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_a0
    .catchall {:try_start_18 .. :try_end_1b} :catchall_a9

    move-result-object v0

    :goto_1c
    if-nez v0, :cond_3c

    :try_start_1e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_24} :catch_114

    :goto_24
    return-void

    :catch_25
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not find old mapping file %s"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldMappingFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :try_start_3c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6d

    iget-object v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->MAP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_6d

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldFileMapping:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    :goto_6d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_72
    const-string v0, ".R."

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_b1

    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "the old mapping file packagename is malformed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "it should be like com.tencent.mm.R.attr.test, yours %s\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_a0} :catch_a0
    .catchall {:try_start_3c .. :try_end_a0} :catchall_a9

    :catch_a0
    move-exception v0

    :try_start_a1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error while mapping file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a9
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_a9

    :catchall_a9
    move-exception v0

    :try_start_aa
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b0} :catch_10f

    :goto_b0
    throw v0

    :cond_b1
    const/4 v5, 0x0

    :try_start_b2
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    add-int/lit8 v7, v0, 0x3

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v7, v0, 0x3

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "."

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldResMapping:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldResMapping:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    move-object v1, v0

    :goto_e9
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    :goto_f5
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldResMapping:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6d

    :cond_102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    goto :goto_e9

    :cond_109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_10e} :catch_a0
    .catchall {:try_start_b2 .. :try_end_10e} :catchall_a9

    goto :goto_f5

    :catch_10f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b0

    :catch_114
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_24
.end method

.method private readCompressFromXml(Lorg/w3c/dom/Node;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_12

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-lt v1, v3, :cond_13

    :cond_12
    return-void

    :cond_13
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v4, "value"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/resourceproguard/Configuration;->addToCompressPatterns(Ljava/lang/String;)V

    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10
.end method

.method private readOldMapping(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/4 v2, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldMappingFile:Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldMappingFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Ljava/io/IOException;

    const-string v1, "the old mapping file do not exit, raw path= %s\n"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldMappingFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    invoke-direct {p0}, Lcom/tencent/mm/resourceproguard/Configuration;->processOldMappingFile()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "you are using the keepmapping mode to proguard resouces: old mapping path:%s\n"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldMappingFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method private readPropertyFromXml(Lorg/w3c/dom/Node;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v8, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_13

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    move v1, v2

    :goto_11
    if-lt v1, v4, :cond_14

    :cond_13
    return-void

    :cond_14
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v8, :cond_52

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_42

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid config file: Missing required attribute %s\n"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "value"

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    const-string v6, "seventzip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v8, :cond_56

    const-string v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUse7zip:Z

    :cond_52
    :goto_52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_56
    const-string v6, "keeproot"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v8, :cond_81

    const-string v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mKeepRoot:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "mKeepRoot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-boolean v6, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mKeepRoot:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_52

    :cond_81
    const-string v6, "mergeDuplicatedRes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v8, :cond_ac

    const-string v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mMergeDuplicatedRes:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "mMergeDuplicatedRes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-boolean v6, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mMergeDuplicatedRes:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_52

    :cond_ac
    const-string v6, "metaname"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v8, :cond_bb

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mMetaName:Ljava/lang/String;

    goto :goto_52

    :cond_bb
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "unknown tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_52
.end method

.method private readSignFromXml(Lorg/w3c/dom/Node;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mSignatureFile:Ljava/io/File;

    if-eqz v0, :cond_e

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "already set the sign info from command line, ignore this"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    return-void

    :cond_e
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_d

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    move v1, v2

    :goto_1d
    if-ge v1, v4, :cond_d

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v8, :cond_8c

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid config file: Missing required attribute %s\n"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "value"

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    const-string v6, "path"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v8, :cond_7a

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mSignatureFile:Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mSignatureFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "the signature file do not exit, raw path= %s\n"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mSignatureFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7a
    const-string v6, "storepass"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v8, :cond_90

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mStorePass:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mStorePass:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mStorePass:Ljava/lang/String;

    :cond_8c
    :goto_8c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    :cond_90
    const-string v6, "keypass"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v8, :cond_a3

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mKeyPass:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mKeyPass:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mKeyPass:Ljava/lang/String;

    goto :goto_8c

    :cond_a3
    const-string v6, "alias"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v8, :cond_b6

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mStoreAlias:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mStoreAlias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mStoreAlias:Ljava/lang/String;

    goto :goto_8c

    :cond_b6
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "unknown tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8c
.end method

.method private readWhiteListFromXml(Lorg/w3c/dom/Node;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_12

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-lt v1, v3, :cond_13

    :cond_12
    return-void

    :cond_13
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v4, "value"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/resourceproguard/Configuration;->addWhiteList(Ljava/lang/String;)V

    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10
.end method

.method private readXmlConfig(Ljava/io/File;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V^",
            "Ljava/io/IOException;",
            "^",
            "Ljavax/xml/parsers/ParserConfigurationException;",
            "^",
            "Lorg/xml/sax/SAXException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "reading config file, %s\n"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const/4 v1, 0x0

    check-cast v1, Ljava/io/BufferedInputStream;

    :try_start_1b
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_fe

    :try_start_29
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    const-string v2, "issue"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_8f

    move-result v8

    move v6, v5

    :goto_49
    if-lt v6, v8, :cond_53

    if-eqz v3, :cond_8

    :try_start_4d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_8

    :catch_51
    move-exception v1

    goto :goto_8

    :cond_53
    :try_start_53
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v1, v0

    const-string v9, "id"

    invoke-interface {v1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "isactive"

    invoke-interface {v1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_78

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Invalid config file: Missing required issue id attribute"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_74
    :goto_74
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_49

    :cond_78
    if-eqz v1, :cond_82

    const-string v10, "true"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_97

    :cond_82
    move v1, v5

    :goto_83
    const-string v10, "property"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v4, :cond_99

    invoke-direct {p0, v2}, Lcom/tencent/mm/resourceproguard/Configuration;->readPropertyFromXml(Lorg/w3c/dom/Node;)V
    :try_end_8e
    .catchall {:try_start_53 .. :try_end_8e} :catchall_8f

    goto :goto_74

    :catchall_8f
    move-exception v1

    move-object v2, v1

    :goto_91
    if-eqz v3, :cond_96

    :try_start_93
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_101

    :cond_96
    :goto_96
    throw v2

    :cond_97
    move v1, v4

    goto :goto_83

    :cond_99
    :try_start_99
    const-string v10, "whitelist"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v4, :cond_ab

    iput-boolean v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseWhiteList:Z

    iget-boolean v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseWhiteList:Z

    if-eqz v1, :cond_74

    invoke-direct {p0, v2}, Lcom/tencent/mm/resourceproguard/Configuration;->readWhiteListFromXml(Lorg/w3c/dom/Node;)V

    goto :goto_74

    :cond_ab
    const-string v10, "compress"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v4, :cond_bd

    iput-boolean v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseCompress:Z

    iget-boolean v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseCompress:Z

    if-eqz v1, :cond_74

    invoke-direct {p0, v2}, Lcom/tencent/mm/resourceproguard/Configuration;->readCompressFromXml(Lorg/w3c/dom/Node;)V

    goto :goto_74

    :cond_bd
    const-string v10, "sign"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v4, :cond_d2

    iget-boolean v9, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseSignAPK:Z

    or-int/2addr v1, v9

    iput-boolean v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseSignAPK:Z

    iget-boolean v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseSignAPK:Z

    if-eqz v1, :cond_74

    invoke-direct {p0, v2}, Lcom/tencent/mm/resourceproguard/Configuration;->readSignFromXml(Lorg/w3c/dom/Node;)V

    goto :goto_74

    :cond_d2
    const-string v10, "keepmapping"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v4, :cond_e4

    iput-boolean v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseKeepMapping:Z

    iget-boolean v1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseKeepMapping:Z

    if-eqz v1, :cond_74

    invoke-direct {p0, v2}, Lcom/tencent/mm/resourceproguard/Configuration;->loadMappingFilesFromXml(Lorg/w3c/dom/Node;)V

    goto :goto_74

    :cond_e4
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "unknown issue "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_fc
    .catchall {:try_start_99 .. :try_end_fc} :catchall_8f

    goto/16 :goto_74

    :catchall_fe
    move-exception v2

    move-object v3, v1

    goto :goto_91

    :catch_101
    move-exception v1

    goto :goto_96
.end method

.method private setKeepMappingData(Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseKeepMapping:Z

    if-eqz v0, :cond_29

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldMappingFile:Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldMappingFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Ljava/io/IOException;

    const-string v1, "the old mapping file do not exit, raw path= %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mOldMappingFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    invoke-direct {p0}, Lcom/tencent/mm/resourceproguard/Configuration;->processOldMappingFile()V

    :cond_29
    return-void
.end method

.method private setSignData(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
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

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mUseSignAPK:Z

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mSignatureFile:Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mSignatureFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Ljava/io/IOException;

    const-string v1, "the signature file do not exit, raw path= %s\n"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mSignatureFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    iput-object p2, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mKeyPass:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mStoreAlias:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/mm/resourceproguard/Configuration;->mStorePass:Ljava/lang/String;

    return-void
.end method
