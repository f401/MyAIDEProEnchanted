.class final Lcom/google/android/gms/internal/measurement/Ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ya;


# static fields
.field static j6:Lcom/google/android/gms/internal/measurement/Ba;


# instance fields
.field private final DW:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Ba;->DW:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Ba;->DW:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/measurement/qa;->j6:Landroid/net/Uri;

    new-instance v1, Lcom/google/android/gms/internal/measurement/Da;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/measurement/Da;-><init>(Lcom/google/android/gms/internal/measurement/Ba;Landroid/os/Handler;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private final FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ba;->DW:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    new-instance v0, Lcom/google/android/gms/internal/measurement/Ca;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/Ca;-><init>(Lcom/google/android/gms/internal/measurement/Ba;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/za;->j6(Lcom/google/android/gms/internal/measurement/Aa;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Unable to read GServices for: "

    if-eqz v2, :cond_24

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_29

    :cond_24
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_29
    const-string v2, "GservicesLoader"

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method static j6(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/Ba;
    .registers 2

    const-class v0, Lcom/google/android/gms/internal/measurement/Ba;

    monitor-enter v0

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/Ba;->j6:Lcom/google/android/gms/internal/measurement/Ba;

    if-nez v0, :cond_21

    const-string v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-static {p0, v0}, Landroid/support/v4/content/h;->j6(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_1a

    new-instance v0, Lcom/google/android/gms/internal/measurement/Ba;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/Ba;-><init>(Landroid/content/Context;)V

    goto :goto_1f

    :cond_1a
    new-instance v0, Lcom/google/android/gms/internal/measurement/Ba;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/Ba;-><init>()V

    :goto_1f
    sput-object v0, Lcom/google/android/gms/internal/measurement/Ba;->j6:Lcom/google/android/gms/internal/measurement/Ba;

    :cond_21
    sget-object p0, Lcom/google/android/gms/internal/measurement/Ba;->j6:Lcom/google/android/gms/internal/measurement/Ba;

    const-class v0, Lcom/google/android/gms/internal/measurement/Ba;

    monitor-exit v0

    return-object p0

    :catchall_27
    move-exception p0

    const-class v0, Lcom/google/android/gms/internal/measurement/Ba;

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_27

    throw p0
.end method


# virtual methods
.method final synthetic DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ba;->DW:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/qa;->j6(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic j6(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/Ba;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
