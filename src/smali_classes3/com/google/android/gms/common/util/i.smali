.class public final Lcom/google/android/gms/common/util/i;
.super Ljava/lang/Object;


# static fields
.field private static DW:Ljava/lang/Boolean;

.field private static FH:Ljava/lang/Boolean;

.field private static Hw:Ljava/lang/Boolean;

.field private static j6:Ljava/lang/Boolean;


# direct methods
.method public static DW(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/util/i;->DW:Ljava/lang/Boolean;

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/google/android/gms/common/util/o;->gn()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "cn.google"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/i;->DW:Ljava/lang/Boolean;

    :cond_1f
    sget-object p0, Lcom/google/android/gms/common/util/i;->DW:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static FH(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/util/i;->j6:Ljava/lang/Boolean;

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/google/android/gms/common/util/o;->VH()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/i;->j6:Ljava/lang/Boolean;

    :cond_1f
    sget-object p0, Lcom/google/android/gms/common/util/i;->j6:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static Hw(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/common/util/i;->FH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/google/android/gms/common/util/o;->tp()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0}, Lcom/google/android/gms/common/util/i;->DW(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-static {}, Lcom/google/android/gms/common/util/o;->EQ()Z

    move-result p0

    if-nez p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static j6()Z
    .registers 2

    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static j6(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/util/i;->FH:Ljava/lang/Boolean;

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.feature.services_updater"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "cn.google.services"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/i;->FH:Ljava/lang/Boolean;

    :cond_21
    sget-object p0, Lcom/google/android/gms/common/util/i;->FH:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static v5(Landroid/content/Context;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/common/util/i;->Hw:Ljava/lang/Boolean;

    if-nez v0, :cond_26

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.iot"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.embedded"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/i;->Hw:Ljava/lang/Boolean;

    :cond_26
    sget-object p0, Lcom/google/android/gms/common/util/i;->Hw:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
