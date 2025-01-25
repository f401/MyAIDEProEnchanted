.class Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MergeDuplicatedResInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo$Builder;
    }
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private originalName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->originalName:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->md5:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$L1000069(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000070(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000071(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->originalName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000072(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$S1000069(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->fileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000070(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->filePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000071(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->originalName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000072(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$MergeDuplicatedResInfo;->md5:Ljava/lang/String;

    return-void
.end method
