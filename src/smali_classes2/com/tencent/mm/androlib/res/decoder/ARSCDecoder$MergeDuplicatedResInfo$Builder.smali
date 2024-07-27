.class Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private originalName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method create()Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;
    .registers 6

    new-instance v0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;->filePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;->originalName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;->md5:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method setFileName(Ljava/lang/String;)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method setFilePath(Ljava/lang/String;)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public setMd5(Ljava/lang/String;)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;->md5:Ljava/lang/String;

    return-object p0
.end method

.method setOriginalName(Ljava/lang/String;)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;->originalName:Ljava/lang/String;

    return-object p0
.end method
