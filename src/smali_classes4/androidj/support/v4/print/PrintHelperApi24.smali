.class Landroidj/support/v4/print/PrintHelperApi24;
.super Landroidj/support/v4/print/PrintHelperApi23;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x18
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroidj/support/v4/print/PrintHelperApi23;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Landroidj/support/v4/print/PrintHelperApi24;->mIsMinMarginsHandlingCorrect:Z

    iput-boolean v0, p0, Landroidj/support/v4/print/PrintHelperApi24;->mPrintActivityRespectsOrientation:Z

    return-void
.end method
