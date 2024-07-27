.class public final Landroid/support/v4/app/ha;
.super Landroid/support/v4/app/ja;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ha$a;,
        Landroid/support/v4/app/ha$b;,
        Landroid/support/v4/app/ha$c;,
        Landroid/support/v4/app/ha$d;
    }
.end annotation


# static fields
.field public static final DW:Landroid/support/v4/app/ja$a;

.field private static final j6:Landroid/support/v4/app/ha$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/ha$b;

    invoke-direct {v0}, Landroid/support/v4/app/ha$b;-><init>()V

    sput-object v0, Landroid/support/v4/app/ha;->j6:Landroid/support/v4/app/ha$a;

    :goto_0
    new-instance v0, Landroid/support/v4/app/ga;

    invoke-direct {v0}, Landroid/support/v4/app/ga;-><init>()V

    sput-object v0, Landroid/support/v4/app/ha;->DW:Landroid/support/v4/app/ja$a;

    return-void

    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/app/ha$d;

    invoke-direct {v0}, Landroid/support/v4/app/ha$d;-><init>()V

    sput-object v0, Landroid/support/v4/app/ha;->j6:Landroid/support/v4/app/ha$a;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/app/ha$c;

    invoke-direct {v0}, Landroid/support/v4/app/ha$c;-><init>()V

    sput-object v0, Landroid/support/v4/app/ha;->j6:Landroid/support/v4/app/ha$a;

    goto :goto_0
.end method
