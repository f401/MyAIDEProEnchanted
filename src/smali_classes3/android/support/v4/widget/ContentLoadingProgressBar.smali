.class public Landroid/support/v4/widget/ContentLoadingProgressBar;
.super Landroid/widget/ProgressBar;


# instance fields
.field DW:Z

.field FH:Z

.field Hw:Z

.field private final Zo:Ljava/lang/Runnable;

.field j6:J

.field private final v5:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->j6:J

    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->DW:Z

    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->FH:Z

    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->Hw:Z

    new-instance p1, Landroid/support/v4/widget/d;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/d;-><init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V

    iput-object p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->v5:Ljava/lang/Runnable;

    new-instance p1, Landroid/support/v4/widget/e;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/e;-><init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V

    iput-object p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->Zo:Ljava/lang/Runnable;

    return-void
.end method

.method private j6()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->v5:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->Zo:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    invoke-direct {p0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->j6()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->j6()V

    return-void
.end method
