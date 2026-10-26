.class public Lcom/s1243808733/widget/CustomEditText;
.super Landroid/widget/EditText;
.source "CustomEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/widget/CustomEditText$AutoCloseError;
    }
.end annotation


# instance fields
.field mAutoCloseError:Lcom/s1243808733/widget/CustomEditText$AutoCloseError;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0}, Lcom/s1243808733/widget/CustomEditText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/s1243808733/widget/CustomEditText;->init()V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method public setError(Ljava/lang/CharSequence;)V
    .locals 4

    .line 32
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 33
    invoke-super {p0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/s1243808733/widget/CustomEditText;->mAutoCloseError:Lcom/s1243808733/widget/CustomEditText$AutoCloseError;

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/widget/CustomEditText;->mAutoCloseError:Lcom/s1243808733/widget/CustomEditText$AutoCloseError;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    :cond_0
    new-instance v0, Lcom/s1243808733/widget/CustomEditText$AutoCloseError;

    invoke-direct {v0, p0}, Lcom/s1243808733/widget/CustomEditText$AutoCloseError;-><init>(Lcom/s1243808733/widget/CustomEditText;)V

    iput-object v0, p0, Lcom/s1243808733/widget/CustomEditText;->mAutoCloseError:Lcom/s1243808733/widget/CustomEditText$AutoCloseError;

    .line 39
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/widget/CustomEditText;->mAutoCloseError:Lcom/s1243808733/widget/CustomEditText$AutoCloseError;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
