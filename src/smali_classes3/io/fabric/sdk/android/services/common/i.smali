.class public Lio/fabric/sdk/android/services/common/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/common/i$a;
    }
.end annotation


# static fields
.field private static final DW:[C

.field private static FH:J

.field public static final Hw:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static j6:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_16

    sput-object v0, Lio/fabric/sdk/android/services/common/i;->DW:[C

    const-wide/16 v0, -0x1

    sput-wide v0, Lio/fabric/sdk/android/services/common/i;->FH:J

    new-instance v0, Lio/fabric/sdk/android/services/common/h;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/h;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/services/common/i;->Hw:Ljava/util/Comparator;

    return-void

    nop

    :array_16
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static DW()J
    .registers 5

    const-class v0, Lio/fabric/sdk/android/services/common/i;

    monitor-enter v0

    :try_start_3
    sget-wide v0, Lio/fabric/sdk/android/services/common/i;->FH:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_91

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/meminfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "MemTotal"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8d

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_97

    :try_start_24
    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "KB"

    const/16 v2, 0x400

    invoke-static {v0, v1, v2}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_8f

    :cond_35
    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v1, "MB"

    const/high16 v2, 0x100000

    invoke-static {v0, v1, v2}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_8f

    :cond_46
    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    const-string v1, "GB"

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v0, v1, v2}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_8f

    :cond_57
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected meminfo format while computing RAM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Fabric"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_71} :catch_72
    .catchall {:try_start_24 .. :try_end_71} :catchall_97

    goto :goto_8d

    :catch_72
    move-exception v1

    :try_start_73
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected meminfo format while computing RAM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Fabric"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3, v1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8d
    :goto_8d
    const-wide/16 v0, 0x0

    :goto_8f
    sput-wide v0, Lio/fabric/sdk/android/services/common/i;->FH:J

    :cond_91
    sget-wide v0, Lio/fabric/sdk/android/services/common/i;->FH:J
    :try_end_93
    .catchall {:try_start_73 .. :try_end_93} :catchall_97

    const-class v2, Lio/fabric/sdk/android/services/common/i;

    monitor-exit v2

    return-wide v0

    :catchall_97
    move-exception v0

    const-class v1, Lio/fabric/sdk/android/services/common/i;

    monitor-exit v1

    throw v0
.end method

.method public static DW(I)Ljava/lang/String;
    .registers 4

    if-ltz p0, :cond_1d

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%1$10s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x20

    const/16 v1, 0x30

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "value must be zero or greater"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static DW(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "string"

    invoke-static {p0, p1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, ""

    return-object p0
.end method

.method public static DW(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string p0, "\\A"

    invoke-virtual {v0, p0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_16
    const-string p0, ""

    :goto_18
    return-object p0
.end method

.method public static DW(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

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
    return p0
.end method

.method public static DW(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static EQ(Landroid/content/Context;)Z
    .registers 3

    sget-object v0, Lio/fabric/sdk/android/services/common/i;->j6:Ljava/lang/Boolean;

    if-nez v0, :cond_11

    const-string v0, "com.crashlytics.Trace"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lio/fabric/sdk/android/services/common/i;->j6:Ljava/lang/Boolean;

    :cond_11
    sget-object p0, Lio/fabric/sdk/android/services/common/i;->j6:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static FH(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const-string v0, "Failed to close icon input stream."

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->Hw(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_23
    .catchall {:try_start_3 .. :try_end_f} :catchall_21

    :try_start_f
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/i;->DW(Ljava/lang/String;)Z

    move-result v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_1f
    .catchall {:try_start_f .. :try_end_17} :catchall_48

    if-eqz v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move-object v1, v2

    :goto_1b
    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v1

    :catch_1f
    move-exception v2

    goto :goto_26

    :catchall_21
    move-exception p0

    goto :goto_4c

    :catch_23
    move-exception p0

    move-object v2, p0

    move-object p0, v1

    :goto_26
    :try_start_26
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not calculate hash for app icon:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Fabric"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_26 .. :try_end_44} :catchall_48

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v1

    :catchall_48
    move-exception v1

    move-object v6, v1

    move-object v1, p0

    move-object p0, v6

    :goto_4c
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p0
.end method

.method public static FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static FH(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->EQ(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p0

    const-string v0, "Fabric"

    invoke-interface {p0, v0, p1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public static FH()Z
    .registers 1

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static Hw(Landroid/content/Context;)I
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    return p0
.end method

.method public static Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "SHA-256"

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static J0(Landroid/content/Context;)Z
    .registers 4

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->we(Landroid/content/Context;)Z

    move-result p0

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez p0, :cond_14

    if-eqz v0, :cond_14

    const-string v2, "test-keys"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    :cond_14
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/app/Superuser.apk"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    return v1

    :cond_22
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/xbin/su"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_32

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_32

    return v1

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public static J8(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "io.fabric.android.build_id"

    const-string v1, "string"

    invoke-static {p0, v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "com.crashlytics.android.build_id"

    invoke-static {p0, v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_10
    if-eqz v0, :cond_35

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build ID is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Fabric"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :cond_35
    const/4 p0, 0x0

    :goto_36
    return-object p0
.end method

.method public static VH(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->we(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    if-eqz p0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public static Ws(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "com.google.firebase.crashlytics.unity_version"

    const-string v1, "string"

    invoke-static {p0, v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unity Editor version is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Fabric"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    return-object p0
.end method

.method public static Zo(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->we(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->J0(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_c

    or-int/lit8 v0, v0, 0x2

    :cond_c
    invoke-static {}, Lio/fabric/sdk/android/services/common/i;->FH()Z

    move-result p0

    if-eqz p0, :cond_14

    or-int/lit8 v0, v0, 0x4

    :cond_14
    return v0
.end method

.method public static gn(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-lez v0, :cond_16

    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    move-exception v0

    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_1a
    return-object p0
.end method

.method public static j6()I
    .registers 1

    invoke-static {}, Lio/fabric/sdk/android/services/common/i$a;->Hw()Lio/fabric/sdk/android/services/common/i$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->gn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static j6(Landroid/content/Context;Z)I
    .registers 6

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->v5(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object p0

    if-eqz p1, :cond_26

    if-nez p0, :cond_9

    goto :goto_26

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x4058c00000000000L  # 99.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_19

    const/4 p0, 0x3

    return p0

    :cond_19
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double p0, p0

    cmpg-double v0, p0, v2

    if-gez v0, :cond_24

    const/4 p0, 0x2

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0

    :cond_26
    :goto_26
    const/4 p0, 0x1

    return p0
.end method

.method public static j6(Landroid/content/Context;)J
    .registers 3

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static j6(Ljava/lang/String;)J
    .registers 8

    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result p0

    int-to-long v3, p0

    mul-long v3, v3, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v5, p0

    mul-long v1, v1, v5

    sub-long/2addr v3, v1

    return-wide v3
.end method

.method static j6(Ljava/lang/String;Ljava/lang/String;I)J
    .registers 5

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    int-to-long v0, p2

    mul-long p0, p0, v0

    return-wide p0
.end method

.method public static j6(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .registers 4

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return-object v0
.end method

.method public static j6(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_18

    const-string p0, "?"

    return-object p0

    :pswitch_6  #0x7
    const-string p0, "A"

    return-object p0

    :pswitch_9  #0x6
    const-string p0, "E"

    return-object p0

    :pswitch_c  #0x5
    const-string p0, "W"

    return-object p0

    :pswitch_f  #0x4
    const-string p0, "I"

    return-object p0

    :pswitch_12  #0x3
    const-string p0, "D"

    return-object p0

    :pswitch_15  #0x2
    const-string p0, "V"

    return-object p0

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_15  #00000002
        :pswitch_12  #00000003
        :pswitch_f  #00000004
        :pswitch_c  #00000005
        :pswitch_9  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method

.method public static j6(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "Failed to close system file reader."

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_61

    :try_start_9
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_3b
    .catchall {:try_start_9 .. :try_end_15} :catchall_39

    :cond_15
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_57

    const-string v4, "\\s*:\\s*"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_15

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_31} :catch_37
    .catchall {:try_start_15 .. :try_end_31} :catchall_5b

    if-eqz v4, :cond_15

    aget-object p0, v3, v5

    move-object v2, p0

    goto :goto_57

    :catch_37
    move-exception p1

    goto :goto_3d

    :catchall_39
    move-exception p0

    goto :goto_5d

    :catch_3b
    move-exception p1

    move-object v1, v2

    :goto_3d
    :try_start_3d
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "Fabric"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p0, v4, p1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_57
    .catchall {:try_start_3d .. :try_end_57} :catchall_5b

    :cond_57
    :goto_57
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_61

    :catchall_5b
    move-exception p0

    move-object v2, v1

    :goto_5d
    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p0

    :cond_61
    :goto_61
    return-object v2
.end method

.method public static j6(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_8
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_8

    :cond_14
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->j6([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v0, "Fabric"

    const-string v1, "Could not calculate hash for app icon."

    invoke-interface {p1, v0, v1, p0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/common/i;->j6([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6([B)Ljava/lang/String;
    .registers 7

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_22

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lio/fabric/sdk/android/services/common/i;->DW:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_22
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static j6([BLjava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_10

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->j6([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_10
    move-exception p0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create hashing algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", returning empty string."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Fabric"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static varargs j6([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_52

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_52

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_27

    aget-object v3, p0, v2

    if-eqz v3, :cond_24

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_27
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_52

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_53

    :cond_52
    :goto_52
    const/4 p0, 0x0

    :goto_53
    return-object p0
.end method

.method public static j6(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->EQ(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p0

    const-string p2, "Fabric"

    invoke-interface {p0, p1, p2, p3}, Lio/fabric/sdk/android/m;->j6(ILjava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->EQ(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p0

    const-string p2, "Fabric"

    invoke-interface {p0, p2, p1}, Lio/fabric/sdk/android/m;->DW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public static j6(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_a

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    goto :goto_a

    :catch_8
    move-exception p0

    throw p0

    :cond_a
    :goto_a
    return-void
.end method

.method public static j6(Ljava/io/Closeable;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_10

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_10

    :catch_6
    move-exception p0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "Fabric"

    invoke-interface {v0, v1, p1, p0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public static j6(Ljava/io/Flushable;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_10

    :try_start_2
    invoke-interface {p0}, Ljava/io/Flushable;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_10

    :catch_6
    move-exception p0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "Fabric"

    invoke-interface {v0, v1, p1, p0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public static j6(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .registers 5

    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_c
    return-void
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_26

    const-string v1, "bool"

    invoke-static {p0, p1, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_15

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_15
    const-string v0, "string"

    invoke-static {p0, p1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_26

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_26
    return p2
.end method

.method public static tp(Landroid/content/Context;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static u7(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-string v0, "com.crashlytics.prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static v5(Landroid/content/Context;)Ljava/lang/Float;
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v1

    :cond_f
    const-string v0, "level"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static we(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "google_sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    if-nez p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method
