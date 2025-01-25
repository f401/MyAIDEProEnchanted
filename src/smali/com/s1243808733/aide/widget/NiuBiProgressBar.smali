.class public Lcom/s1243808733/aide/widget/NiuBiProgressBar;
.super Landroid/widget/ProgressBar;
.source "NiuBiProgressBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-direct {p0}, Lcom/s1243808733/aide/widget/NiuBiProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0}, Lcom/s1243808733/aide/widget/NiuBiProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0}, Lcom/s1243808733/aide/widget/NiuBiProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    invoke-direct {p0}, Lcom/s1243808733/aide/widget/NiuBiProgressBar;->init()V

    return-void
.end method

.method private init()V
    .registers 1

    return-void
.end method


# virtual methods
.method public setProgress(I)V
    .registers 4

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/aide/widget/NiuBiProgressBar;->setProgress(IZ)V

    goto :goto_e

    .line 39
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_e
    return-void
.end method
