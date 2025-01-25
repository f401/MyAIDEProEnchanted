.class Landroid/support/v4/widget/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ContentLoadingProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Landroid/support/v4/widget/ContentLoadingProgressBar;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/e;->j6:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/widget/e;->j6:Landroid/support/v4/widget/ContentLoadingProgressBar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/ContentLoadingProgressBar;->FH:Z

    iget-boolean v2, v0, Landroid/support/v4/widget/ContentLoadingProgressBar;->Hw:Z

    if-nez v2, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v4/widget/ContentLoadingProgressBar;->j6:J

    iget-object v0, p0, Landroid/support/v4/widget/e;->j6:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_14
    return-void
.end method
