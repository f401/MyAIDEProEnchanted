.class public final Landroidx/core/content/pm/PermissionInfoCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/pm/PermissionInfoCompat$Protection;,
        Landroidx/core/content/pm/PermissionInfoCompat$ProtectionFlags;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProtection(Landroid/content/pm/PermissionInfo;)I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    goto :goto_a
.end method

.method public static getProtectionFlags(Landroid/content/pm/PermissionInfo;)I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, -0x10

    goto :goto_a
.end method
