.class public Lcom/google/android/gms/common/c;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Lcom/google/android/gms/common/c;

.field public static final j6:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Lcom/google/android/gms/common/f;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    sput v0, Lcom/google/android/gms/common/c;->j6:I

    new-instance v0, Lcom/google/android/gms/common/c;

    invoke-direct {v0}, Lcom/google/android/gms/common/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/c;->DW:Lcom/google/android/gms/common/c;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static j6()Lcom/google/android/gms/common/c;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/c;->DW:Lcom/google/android/gms/common/c;

    return-object v0
.end method

.method private static j6(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gcore_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/google/android/gms/common/c;->j6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_42

    :try_start_2e
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->DW(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_40
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_40} :catch_41

    goto :goto_42

    :catch_41
    move-exception p0

    :cond_42
    :goto_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public DW(Landroid/content/Context;)I
    .registers 3

    sget v0, Lcom/google/android/gms/common/c;->j6:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public DW(I)Z
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/common/f;->isUserRecoverableError(I)Z

    move-result p1

    return p1
.end method

.method public j6(Landroid/content/Context;)I
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/common/f;->getApkVersion(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public j6(Landroid/content/Context;I)I
    .registers 3

    invoke-static {p1, p2}, Lcom/google/android/gms/common/f;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/common/f;->isPlayServicesPossiblyUpdating(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p2, 0x12

    :cond_c
    return p2
.end method

.method public j6(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public j6(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;
    .registers 5

    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    const/high16 p4, 0x8000000

    invoke-static {p1, p3, p2, p4}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public j6(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .registers 6

    const/4 v0, 0x1

    const-string v1, "com.google.android.gms"

    if-eq p2, v0, :cond_12

    const/4 v0, 0x2

    if-eq p2, v0, :cond_12

    const/4 p1, 0x3

    if-eq p2, p1, :cond_d

    const/4 p1, 0x0

    return-object p1

    :cond_d
    invoke-static {v1}, Lcom/google/android/gms/common/internal/J;->j6(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_12
    if-eqz p1, :cond_1f

    invoke-static {p1}, Lcom/google/android/gms/common/util/i;->Hw(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-static {}, Lcom/google/android/gms/common/internal/J;->j6()Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_1f
    invoke-static {p1, p3}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/J;->j6(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public j6(I)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/common/f;->getErrorString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
