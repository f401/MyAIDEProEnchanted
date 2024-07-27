.class Landroid/support/v4/print/PrintHelper$d;
.super Landroid/support/v4/print/PrintHelper$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/support/v4/print/PrintHelper$c;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelper$a;->v5:Z

    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelper$a;->Hw:Z

    return-void
.end method
