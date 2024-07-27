.class public final Landroid/support/v4/view/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/u$a;,
        Landroid/support/v4/view/u$b;,
        Landroid/support/v4/view/u$c;
    }
.end annotation


# static fields
.field static final j6:Landroid/support/v4/view/u$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/u$b;

    invoke-direct {v0}, Landroid/support/v4/view/u$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/u;->j6:Landroid/support/v4/view/u$c;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/u$a;

    invoke-direct {v0}, Landroid/support/v4/view/u$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/u;->j6:Landroid/support/v4/view/u$c;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/view/u$c;

    invoke-direct {v0}, Landroid/support/v4/view/u$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/u;->j6:Landroid/support/v4/view/u$c;

    goto :goto_0
.end method

.method public static j6(Landroid/view/ViewGroup;Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method
