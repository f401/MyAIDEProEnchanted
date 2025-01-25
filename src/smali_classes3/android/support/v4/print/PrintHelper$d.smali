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
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v4/print/PrintHelper$c;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/print/PrintHelper$a;->v5:Z

    iput-boolean p1, p0, Landroid/support/v4/print/PrintHelper$a;->Hw:Z

    return-void
.end method
