.class final Lcom/blankj/utilcode/util/LogUtils$TagHead;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TagHead"
.end annotation


# instance fields
.field consoleHead:[Ljava/lang/String;

.field fileHead:Ljava/lang/String;

.field tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$TagHead;->tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/blankj/utilcode/util/LogUtils$TagHead;->consoleHead:[Ljava/lang/String;

    iput-object p3, p0, Lcom/blankj/utilcode/util/LogUtils$TagHead;->fileHead:Ljava/lang/String;

    return-void
.end method
