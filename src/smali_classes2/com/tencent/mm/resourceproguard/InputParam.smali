.class public Lcom/tencent/mm/resourceproguard/InputParam;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/resourceproguard/InputParam$Builder;,
        Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;
    }
.end annotation


# instance fields
.field public final apkPath:Ljava/lang/String;

.field public final compressFilePattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final digestAlg:Ljava/lang/String;

.field public final finalApkBackupPath:Ljava/lang/String;

.field public final fixedResName:Ljava/lang/String;

.field public final keepRoot:Z

.field public final keypass:Ljava/lang/String;

.field public final mappingFile:Ljava/io/File;

.field public final mergeDuplicatedRes:Z

.field public final metaName:Ljava/lang/String;

.field public final minSDKVersion:I

.field public final outFolder:Ljava/lang/String;

.field public final sevenZipPath:Ljava/lang/String;

.field public final signFile:Ljava/io/File;

.field public final signatureType:Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

.field public final storealias:Ljava/lang/String;

.field public final storepass:Ljava/lang/String;

.field public final use7zip:Z

.field public final useSign:Z

.field public final whiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zipAlignPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;ZZZZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "ZZZZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/resourceproguard/InputParam;->mappingFile:Ljava/io/File;

    iput-boolean p2, p0, Lcom/tencent/mm/resourceproguard/InputParam;->use7zip:Z

    iput-boolean p3, p0, Lcom/tencent/mm/resourceproguard/InputParam;->useSign:Z

    iput-boolean p4, p0, Lcom/tencent/mm/resourceproguard/InputParam;->keepRoot:Z

    iput-boolean p5, p0, Lcom/tencent/mm/resourceproguard/InputParam;->mergeDuplicatedRes:Z

    iput-object p6, p0, Lcom/tencent/mm/resourceproguard/InputParam;->whiteList:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/tencent/mm/resourceproguard/InputParam;->compressFilePattern:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/tencent/mm/resourceproguard/InputParam;->apkPath:Ljava/lang/String;

    iput-object p9, p0, Lcom/tencent/mm/resourceproguard/InputParam;->outFolder:Ljava/lang/String;

    iput-object p10, p0, Lcom/tencent/mm/resourceproguard/InputParam;->signFile:Ljava/io/File;

    iput-object p11, p0, Lcom/tencent/mm/resourceproguard/InputParam;->keypass:Ljava/lang/String;

    iput-object p12, p0, Lcom/tencent/mm/resourceproguard/InputParam;->storealias:Ljava/lang/String;

    iput-object p13, p0, Lcom/tencent/mm/resourceproguard/InputParam;->storepass:Ljava/lang/String;

    iput-object p14, p0, Lcom/tencent/mm/resourceproguard/InputParam;->metaName:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/InputParam;->fixedResName:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/InputParam;->zipAlignPath:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/InputParam;->sevenZipPath:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/InputParam;->signatureType:Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/InputParam;->finalApkBackupPath:Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/tencent/mm/resourceproguard/InputParam;->digestAlg:Ljava/lang/String;

    move/from16 v0, p21

    iput v0, p0, Lcom/tencent/mm/resourceproguard/InputParam;->minSDKVersion:I

    return-void
.end method
