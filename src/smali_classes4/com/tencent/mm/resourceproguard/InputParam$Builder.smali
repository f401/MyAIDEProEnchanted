.class public Lcom/tencent/mm/resourceproguard/InputParam$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/resourceproguard/InputParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private apkPath:Ljava/lang/String;

.field private compressFilePattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private digestAlg:Ljava/lang/String;

.field private finalApkBackupPath:Ljava/lang/String;

.field private fixedResName:Ljava/lang/String;

.field private keepRoot:Z

.field private keypass:Ljava/lang/String;

.field private mappingFile:Ljava/io/File;

.field private mergeDuplicatedRes:Z

.field private metaName:Ljava/lang/String;

.field private minSDKVersion:I

.field private outFolder:Ljava/lang/String;

.field private sevenZipPath:Ljava/lang/String;

.field private signFile:Ljava/io/File;

.field private signatureType:Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

.field private storealias:Ljava/lang/String;

.field private storepass:Ljava/lang/String;

.field private use7zip:Z

.field private useSign:Z

.field private whiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zipAlignPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->use7zip:Z

    iput-boolean v0, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->keepRoot:Z

    sget-object v0, Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;->SchemaV1:Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->signatureType:Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    return-void
.end method


# virtual methods
.method public create()Lcom/tencent/mm/resourceproguard/InputParam;
    .registers 24

    new-instance v1, Lcom/tencent/mm/resourceproguard/InputParam;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->mappingFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->use7zip:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->useSign:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->keepRoot:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->mergeDuplicatedRes:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->whiteList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->compressFilePattern:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->apkPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->outFolder:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->signFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->keypass:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->storealias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->storepass:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->metaName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->fixedResName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->zipAlignPath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->sevenZipPath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->signatureType:Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->finalApkBackupPath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->digestAlg:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->minSDKVersion:I

    move/from16 v22, v0

    invoke-direct/range {v1 .. v22}, Lcom/tencent/mm/resourceproguard/InputParam;-><init>(Ljava/io/File;ZZZZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method public setApkPath(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->apkPath:Ljava/lang/String;

    return-object p0
.end method

.method public setCompressFilePattern(Ljava/util/ArrayList;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/mm/resourceproguard/InputParam$Builder;"
        }
    .end annotation

    const-string v0, "resource.asrc"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[Warning] compress %s will prevent optimization at runtime"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "resource.asrc"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_17
    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->compressFilePattern:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setDigestAlg(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 3

    invoke-static {p1}, Lcom/tencent/mm/androlib/res/util/StringUtil;->isPresent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->digestAlg:Ljava/lang/String;

    :goto_8
    return-object p0

    :cond_9
    const-string v0, "SHA1"

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->digestAlg:Ljava/lang/String;

    goto :goto_8
.end method

.method public setFinalApkBackupPath(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->finalApkBackupPath:Ljava/lang/String;

    return-object p0
.end method

.method public setFixedResName(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->fixedResName:Ljava/lang/String;

    return-object p0
.end method

.method public setKeepRoot(Z)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->keepRoot:Z

    return-object p0
.end method

.method public setKeypass(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->keypass:Ljava/lang/String;

    return-object p0
.end method

.method public setMappingFile(Ljava/io/File;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->mappingFile:Ljava/io/File;

    return-object p0
.end method

.method public setMergeDuplicatedRes(Z)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->mergeDuplicatedRes:Z

    return-object p0
.end method

.method public setMetaName(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->metaName:Ljava/lang/String;

    return-object p0
.end method

.method public setMinSDKVersion(I)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->minSDKVersion:I

    return-object p0
.end method

.method public setOutBuilder(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->outFolder:Ljava/lang/String;

    return-object p0
.end method

.method public setSevenZipPath(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->sevenZipPath:Ljava/lang/String;

    return-object p0
.end method

.method public setSignFile(Ljava/io/File;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->signFile:Ljava/io/File;

    return-object p0
.end method

.method public setSignatureType(Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->signatureType:Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    return-object p0
.end method

.method public setStorealias(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->storealias:Ljava/lang/String;

    return-object p0
.end method

.method public setStorepass(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->storepass:Ljava/lang/String;

    return-object p0
.end method

.method public setUse7zip(Z)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->use7zip:Z

    return-object p0
.end method

.method public setUseSign(Z)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->useSign:Z

    return-object p0
.end method

.method public setWhiteList(Ljava/util/ArrayList;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/mm/resourceproguard/InputParam$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->whiteList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setZipAlign(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$Builder;
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/InputParam$Builder;->zipAlignPath:Ljava/lang/String;

    return-object p0
.end method
