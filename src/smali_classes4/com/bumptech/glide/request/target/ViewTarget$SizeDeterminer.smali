.class Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/target/ViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizeDeterminer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;
    }
.end annotation


# static fields
.field private static final PENDING_SIZE:I


# instance fields
.field private final cbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/target/SizeReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private displayDimens:Landroid/graphics/Point;

.field private layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    iput-object p1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->checkCurrentDimens()V

    return-void
.end method

.method private checkCurrentDimens()V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getViewWidthOrParam()I

    move-result v0

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getViewHeightOrParam()I

    move-result v1

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->notifyCbs(II)V

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    goto :goto_8
.end method

.method private getDisplayDimens()Landroid/graphics/Point;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Landroid/graphics/Point;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Landroid/graphics/Point;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_2e

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :goto_2b
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Landroid/graphics/Point;

    goto :goto_6

    :cond_2e
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Landroid/graphics/Point;

    goto :goto_2b
.end method

.method private getSizeForParam(IZ)I
    .registers 4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_b

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getDisplayDimens()Landroid/graphics/Point;

    move-result-object v0

    if-eqz p2, :cond_c

    iget p1, v0, Landroid/graphics/Point;->y:I

    :cond_b
    :goto_b
    return p1

    :cond_c
    iget p1, v0, Landroid/graphics/Point;->x:I

    goto :goto_b
.end method

.method private getViewHeightOrParam()I
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_18
    return v0

    :cond_19
    if-eqz v0, :cond_23

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getSizeForParam(IZ)I

    move-result v0

    goto :goto_18

    :cond_23
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private getViewWidthOrParam()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_19
    :goto_19
    return v0

    :cond_1a
    if-eqz v1, :cond_19

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getSizeForParam(IZ)I

    move-result v0

    goto :goto_19
.end method

.method private isSizeValid(I)Z
    .registers 3

    if-gtz p1, :cond_5

    const/4 v0, -0x2

    if-ne p1, v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private notifyCbs(II)V
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/target/SizeReadyCallback;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 5

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getViewWidthOrParam()I

    move-result v0

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getViewHeightOrParam()I

    move-result v1

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-direct {p0, v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;-><init>(Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V

    iput-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_17
.end method
