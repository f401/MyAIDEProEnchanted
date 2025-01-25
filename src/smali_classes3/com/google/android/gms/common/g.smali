.class public Lcom/google/android/gms/common/g;
.super Ljava/lang/Object;


# static fields
.field private static j6:Lcom/google/android/gms/common/g;


# instance fields
.field private final DW:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/g;->DW:Landroid/content/Context;

    return-void
.end method

.method private final DW(Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/common/v;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/common/g;->DW:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/f;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v0

    if-nez p1, :cond_f

    const-string p1, "null pkg"

    :goto_a
    invoke-static {p1}, Lcom/google/android/gms/common/v;->j6(Ljava/lang/String;)Lcom/google/android/gms/common/v;

    move-result-object p1

    return-object p1

    :cond_f
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_18

    const-string p1, "single cert required"

    goto :goto_a

    :cond_18
    new-instance v2, Lcom/google/android/gms/common/p;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/common/p;-><init>([B)V

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/m;->j6(Ljava/lang/String;Lcom/google/android/gms/common/o;Z)Lcom/google/android/gms/common/v;

    move-result-object v4

    iget-boolean v5, v4, Lcom/google/android/gms/common/v;->DW:Z

    if-eqz v5, :cond_45

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_45

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_45

    if-eqz v0, :cond_42

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/m;->j6(Ljava/lang/String;Lcom/google/android/gms/common/o;Z)Lcom/google/android/gms/common/v;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/gms/common/v;->DW:Z

    if-eqz p1, :cond_45

    :cond_42
    const-string p1, "debuggable release cert app rejected"

    goto :goto_a

    :cond_45
    return-object v4
.end method

.method public static j6(Landroid/content/Context;)Lcom/google/android/gms/common/g;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/android/gms/common/g;

    monitor-enter v0

    :try_start_6
    sget-object v0, Lcom/google/android/gms/common/g;->j6:Lcom/google/android/gms/common/g;

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/google/android/gms/common/m;->j6(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/common/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/common/g;->j6:Lcom/google/android/gms/common/g;

    :cond_14
    const-class p0, Lcom/google/android/gms/common/g;

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1a

    sget-object p0, Lcom/google/android/gms/common/g;->j6:Lcom/google/android/gms/common/g;

    return-object p0

    :catchall_1a
    move-exception p0

    :try_start_1b
    const-class v0, Lcom/google/android/gms/common/g;

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1a

    throw p0
.end method

.method private static varargs j6(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/o;)Lcom/google/android/gms/common/o;
    .registers 5

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    array-length v1, p0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_12

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_12
    new-instance v1, Lcom/google/android/gms/common/p;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/p;-><init>([B)V

    :goto_1e
    array-length p0, p1

    if-ge v2, p0, :cond_2f

    aget-object p0, p1, v2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/o;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    aget-object p0, p1, v2

    return-object p0

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2f
    return-object v0
.end method

.method private final j6(Ljava/lang/String;I)Lcom/google/android/gms/common/v;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/g;->DW:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->j6(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/g;->DW(Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/common/v;

    move-result-object p1
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "no pkg "

    if-eqz p2, :cond_23

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :cond_23
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_28
    invoke-static {p1}, Lcom/google/android/gms/common/v;->j6(Ljava/lang/String;)Lcom/google/android/gms/common/v;

    move-result-object p1

    return-object p1
.end method

.method public static j6(Landroid/content/pm/PackageInfo;Z)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    if-eqz p1, :cond_11

    sget-object p1, Lcom/google/android/gms/common/r;->j6:[Lcom/google/android/gms/common/o;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/g;->j6(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/o;)Lcom/google/android/gms/common/o;

    move-result-object p0

    goto :goto_1d

    :cond_11
    new-array p1, v1, [Lcom/google/android/gms/common/o;

    sget-object v2, Lcom/google/android/gms/common/r;->j6:[Lcom/google/android/gms/common/o;

    aget-object v2, v2, v0

    aput-object v2, p1, v0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/g;->j6(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/o;)Lcom/google/android/gms/common/o;

    move-result-object p0

    :goto_1d
    if-eqz p0, :cond_20

    return v1

    :cond_20
    return v0
.end method


# virtual methods
.method public j6(I)Z
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/common/g;->DW:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->j6(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    array-length v1, v0

    if-nez v1, :cond_10

    goto :goto_22

    :cond_10
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_28

    aget-object v2, v0, v3

    invoke-direct {p0, v2, p1}, Lcom/google/android/gms/common/g;->j6(Ljava/lang/String;I)Lcom/google/android/gms/common/v;

    move-result-object v2

    iget-boolean v4, v2, Lcom/google/android/gms/common/v;->DW:Z

    if-nez v4, :cond_28

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_22
    :goto_22
    const-string p1, "no pkgs"

    invoke-static {p1}, Lcom/google/android/gms/common/v;->j6(Ljava/lang/String;)Lcom/google/android/gms/common/v;

    move-result-object v2

    :cond_28
    invoke-virtual {v2}, Lcom/google/android/gms/common/v;->FH()V

    iget-boolean p1, v2, Lcom/google/android/gms/common/v;->DW:Z

    return p1
.end method

.method public j6(Landroid/content/pm/PackageInfo;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/g;->j6(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    return v2

    :cond_c
    invoke-static {p1, v2}, Lcom/google/android/gms/common/g;->j6(Landroid/content/pm/PackageInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/google/android/gms/common/g;->DW:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/f;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1b

    return v2

    :cond_1b
    const-string p1, "GoogleSignatureVerifier"

    const-string v1, "Test-keys aren\'t accepted on this build."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return v0
.end method
