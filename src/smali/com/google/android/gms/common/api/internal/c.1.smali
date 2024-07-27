.class public final Lcom/google/android/gms/common/api/internal/c;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static DW:Lcom/google/android/gms/common/api/internal/c;

.field private static final j6:Ljava/lang/Object;


# instance fields
.field private final FH:Ljava/lang/String;

.field private final Hw:Lcom/google/android/gms/common/api/Status;

.field private final Zo:Z

.field private final v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/c;->j6:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "google_app_measurement_enable"

    const-string v4, "integer"

    sget v5, Lcom/google/android/gms/common/h;->common_google_play_services_unknown_issue:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/c;->Zo:Z

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/c;->v5:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/S;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    const-string v1, "google_app_id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    const-string v2, "Missing google app id value from from string resources with name google_app_id."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->Hw:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->FH:Ljava/lang/String;

    :goto_2
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/c;->Zo:Z

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->FH:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->j6:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->Hw:Lcom/google/android/gms/common/api/Status;

    goto :goto_2
.end method

.method public static DW()Z
    .registers 1

    const-string v0, "isMeasurementExplicitlyDisabled"

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/c;->j6(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/c;->Zo:Z

    return v0
.end method

.method public static j6(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;
    .registers 3

    const-string v0, "Context must not be null."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/common/api/internal/c;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/c;->DW:Lcom/google/android/gms/common/api/internal/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/c;->DW:Lcom/google/android/gms/common/api/internal/c;

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/c;->DW:Lcom/google/android/gms/common/api/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->Hw:Lcom/google/android/gms/common/api/Status;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static j6(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/c;
    .registers 5

    sget-object v1, Lcom/google/android/gms/common/api/internal/c;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/c;->DW:Lcom/google/android/gms/common/api/internal/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/internal/c;->DW:Lcom/google/android/gms/common/api/internal/c;

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x22

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Initialize must be called before "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static j6()Ljava/lang/String;
    .registers 1

    const-string v0, "getGoogleAppId"

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/c;->j6(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->FH:Ljava/lang/String;

    return-object v0
.end method
