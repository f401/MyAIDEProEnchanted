.class Landroid/support/v4/media/A;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/A$a;,
        Landroid/support/v4/media/A$b;,
        Landroid/support/v4/media/A$c;
    }
.end annotation


# static fields
.field private static j6:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    :try_start_0
    const-class v0, Landroid/service/media/MediaBrowserService$Result;

    const-string v1, "mFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/media/A;->j6:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    move-exception v0

    const-string v1, "MBSCompatApi24"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return-void
.end method

.method public static j6(Landroid/content/Context;Landroid/support/v4/media/A$c;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Landroid/support/v4/media/A$a;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/A$a;-><init>(Landroid/content/Context;Landroid/support/v4/media/A$c;)V

    return-object v0
.end method

.method static synthetic j6()Ljava/lang/reflect/Field;
    .registers 1

    sget-object v0, Landroid/support/v4/media/A;->j6:Ljava/lang/reflect/Field;

    return-object v0
.end method
