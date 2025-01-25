.class public Lcom/google/android/gms/common/util/d;
.super Ljava/lang/Object;


# direct methods
.method public static DW(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :try_start_6
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->j6(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_10} :catch_17

    const/high16 p1, 0x200000

    and-int/2addr p0, p1

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :catch_17
    move-exception p0

    :cond_18
    return v0
.end method

.method private static FH(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->DW(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/d;->FH(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const/4 p1, -0x1

    if-eqz p0, :cond_18

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_c

    goto :goto_18

    :cond_c
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_11

    return p1

    :cond_11
    const-string v0, "com.google.android.gms.version"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_18
    :goto_18
    return p1
.end method

.method public static j6()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method
