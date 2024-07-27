.class Landroidj/support/v4/print/PrintHelperApi20;
.super Landroidj/support/v4/print/PrintHelperKitkat;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x14
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroidj/support/v4/print/PrintHelperKitkat;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/print/PrintHelperApi20;->mPrintActivityRespectsOrientation:Z

    return-void
.end method
