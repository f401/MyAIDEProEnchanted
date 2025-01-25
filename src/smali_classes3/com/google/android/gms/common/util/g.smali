.class public final Lcom/google/android/gms/common/util/g;
.super Ljava/lang/Object;


# static fields
.field private static DW:Landroid/os/DropBoxManager;

.field private static FH:Z

.field private static Hw:I

.field private static Zo:I

.field private static final j6:[Ljava/lang/String;

.field private static v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "com.android."

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "dalvik."

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "java."

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "javax."

    aput-object v3, v0, v1

    sput-object v0, Lcom/google/android/gms/common/util/g;->j6:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/util/g;->DW:Landroid/os/DropBoxManager;

    sput-boolean v2, Lcom/google/android/gms/common/util/g;->FH:Z

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/common/util/g;->Hw:I

    sput v2, Lcom/google/android/gms/common/util/g;->v5:I

    sput v2, Lcom/google/android/gms/common/util/g;->Zo:I

    return-void
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .registers 3

    const/high16 v0, 0x20000000

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/util/g;->j6(Landroid/content/Context;Ljava/lang/Throwable;I)Z

    move-result p0

    return p0
.end method

.method private static j6(Landroid/content/Context;Ljava/lang/Throwable;I)Z
    .registers 4

    const/4 p2, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_8

    return p2

    :catch_8
    move-exception p0

    const-string p1, "CrashUtils"

    const-string v0, "Error adding exception to DropBox!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p2
.end method
