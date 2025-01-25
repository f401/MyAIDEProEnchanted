.class public final Landroid/support/v4/widget/t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/t$a;,
        Landroid/support/v4/widget/t$b;,
        Landroid/support/v4/widget/t$c;,
        Landroid/support/v4/widget/t$d;,
        Landroid/support/v4/widget/t$e;,
        Landroid/support/v4/widget/t$f;
    }
.end annotation


# static fields
.field static final j6:Landroid/support/v4/widget/t$f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/widget/t$e;

    invoke-direct {v0}, Landroid/support/v4/widget/t$e;-><init>()V

    :goto_b
    sput-object v0, Landroid/support/v4/widget/t;->j6:Landroid/support/v4/widget/t$f;

    goto :goto_3c

    :cond_e
    const/16 v1, 0x17

    if-lt v0, v1, :cond_18

    new-instance v0, Landroid/support/v4/widget/t$d;

    invoke-direct {v0}, Landroid/support/v4/widget/t$d;-><init>()V

    goto :goto_b

    :cond_18
    const/16 v1, 0x12

    if-lt v0, v1, :cond_22

    new-instance v0, Landroid/support/v4/widget/t$c;

    invoke-direct {v0}, Landroid/support/v4/widget/t$c;-><init>()V

    goto :goto_b

    :cond_22
    const/16 v1, 0x11

    if-lt v0, v1, :cond_2c

    new-instance v0, Landroid/support/v4/widget/t$b;

    invoke-direct {v0}, Landroid/support/v4/widget/t$b;-><init>()V

    goto :goto_b

    :cond_2c
    const/16 v1, 0x10

    if-lt v0, v1, :cond_36

    new-instance v0, Landroid/support/v4/widget/t$a;

    invoke-direct {v0}, Landroid/support/v4/widget/t$a;-><init>()V

    goto :goto_b

    :cond_36
    new-instance v0, Landroid/support/v4/widget/t$f;

    invoke-direct {v0}, Landroid/support/v4/widget/t$f;-><init>()V

    goto :goto_b

    :goto_3c
    return-void
.end method

.method public static j6(Landroid/widget/TextView;I)V
    .registers 3

    sget-object v0, Landroid/support/v4/widget/t;->j6:Landroid/support/v4/widget/t$f;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/t$f;->j6(Landroid/widget/TextView;I)V

    return-void
.end method
