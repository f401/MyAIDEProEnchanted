.class public final Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/UiMessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UiMessage"
.end annotation


# instance fields
.field private mMessage:Landroid/os/Message;


# direct methods
.method private constructor <init>(Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->mMessage:Landroid/os/Message;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Message;Lcom/blankj/utilcode/util/UiMessageUtils$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;-><init>(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->setMessage(Landroid/os/Message;)V

    return-void
.end method

.method private setMessage(Landroid/os/Message;)V
    .registers 2

    iput-object p1, p0, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->mMessage:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->mMessage:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->what:I

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->mMessage:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->getObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
