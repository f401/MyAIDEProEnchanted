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
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Ba;->DW:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ba;->DW:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/qa;->j6:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/internal/measurement/Da;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/internal/measurement/Da;-><init>(Lcom/google/android/gms/internal/measurement/Ba;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private final FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ba;->DW:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/Ca;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/Ca;-><init>(Lcom/google/android/gms/internal/measurement/Ba;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/za;->j6(Lcom/google/android/gms/internal/measurement/Aa;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Unable to read GServices for: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v3, "GservicesLoader"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v3, "Unable to read GServices for: "

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static j6(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/Ba;
    .registers 3

    const-class v0, Lcom/google/android/gms/internal/measurement/Ba;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/Ba;->j6:Lcom/google/android/gms/internal/measurement/Ba;

    if-nez v0, :cond_0

    const-string v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-static {p0, v0}, Landroid/support/v4/content/h;->j6(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/measurement/Ba;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/Ba;-><init>(Landroid/content/Context;)V

    :goto_1
    sput-object v0, Lcom/google/android/gms/internal/measurement/Ba;->j6:Lcom/google/android/gms/internal/measurement/Ba;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/Ba;->j6:Lcom/google/android/gms/internal/measurement/Ba;

    const-class v1, Lcom/google/android/gms/internal/measurement/Ba;

    monitor-exit v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/measurement/Ba;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/Ba;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/measurement/Ba;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method final synthetic DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ba;->DW:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/qa;->j6(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic j6(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/Ba;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
