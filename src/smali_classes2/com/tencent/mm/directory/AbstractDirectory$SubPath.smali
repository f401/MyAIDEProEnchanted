.class Lcom/tencent/mm/directory/AbstractDirectory$SubPath;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/directory/AbstractDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubPath"
.end annotation


# instance fields
.field public dir:Lcom/tencent/mm/directory/AbstractDirectory;

.field public path:Ljava/lang/String;

.field private final this$0:Lcom/tencent/mm/directory/AbstractDirectory;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/directory/AbstractDirectory;Lcom/tencent/mm/directory/AbstractDirectory;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->this$0:Lcom/tencent/mm/directory/AbstractDirectory;

    iput-object p2, p0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->dir:Lcom/tencent/mm/directory/AbstractDirectory;

    iput-object p3, p0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->path:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/tencent/mm/directory/AbstractDirectory$SubPath;)Lcom/tencent/mm/directory/AbstractDirectory;
    .registers 2

    iget-object v0, p0, Lcom/tencent/mm/directory/AbstractDirectory$SubPath;->this$0:Lcom/tencent/mm/directory/AbstractDirectory;

    return-object v0
.end method
