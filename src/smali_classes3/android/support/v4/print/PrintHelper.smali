.class public final Landroid/support/v4/print/PrintHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/print/PrintHelper$a;,
        Landroid/support/v4/print/PrintHelper$b;,
        Landroid/support/v4/print/PrintHelper$c;,
        Landroid/support/v4/print/PrintHelper$d;,
        Landroid/support/v4/print/PrintHelper$e;,
        Landroid/support/v4/print/PrintHelper$f;
    }
.end annotation


# instance fields
.field private final j6:Landroid/support/v4/print/PrintHelper$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_11

    new-instance v0, Landroid/support/v4/print/PrintHelper$d;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$d;-><init>(Landroid/content/Context;)V

    :goto_e
    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->j6:Landroid/support/v4/print/PrintHelper$f;

    goto :goto_37

    :cond_11
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1b

    new-instance v0, Landroid/support/v4/print/PrintHelper$c;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$c;-><init>(Landroid/content/Context;)V

    goto :goto_e

    :cond_1b
    const/16 v1, 0x14

    if-lt v0, v1, :cond_25

    new-instance v0, Landroid/support/v4/print/PrintHelper$b;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$b;-><init>(Landroid/content/Context;)V

    goto :goto_e

    :cond_25
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2f

    new-instance v0, Landroid/support/v4/print/PrintHelper$a;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$a;-><init>(Landroid/content/Context;)V

    goto :goto_e

    :cond_2f
    new-instance p1, Landroid/support/v4/print/PrintHelper$e;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/support/v4/print/PrintHelper$e;-><init>(Landroid/support/v4/print/a;)V

    iput-object p1, p0, Landroid/support/v4/print/PrintHelper;->j6:Landroid/support/v4/print/PrintHelper$f;

    :goto_37
    return-void
.end method
