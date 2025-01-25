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
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/common/h;->common_google_play_services_unknown_issue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google_app_measurement_enable"

    const-string v3, "integer"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_20

    const/4 v2, 0x1

    :cond_20
    xor-int/lit8 v0, v2, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/c;->Zo:Z

    move v3, v2

    goto :goto_28

    :cond_26
    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/c;->Zo:Z

    :goto_28
    iput-boolean v3, p0, Lcom/google/android/gms/common/api/internal/c;->v5:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/S;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3b

    new-instance v0, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    const-string p1, "google_app_id"

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_50

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    const-string v1, "Missing google app id value from from string resources with name google_app_id."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/c;->Hw:Lcom/google/android/gms/common/api/Status;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/c;->FH:Ljava/lang/String;

    return-void

    :cond_50
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->FH:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/common/api/Status;->j6:Lcom/google/android/gms/common/api/Status;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/c;->Hw:Lcom/google/android/gms/common/api/Status;

    return-void
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

    sget-object v0, Lcom/google/android/gms/common/api/internal/c;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    sget-object v1, Lcom/google/android/gms/common/api/internal/c;->DW:Lcom/google/android/gms/common/api/internal/c;

    if-nez v1, :cond_13

    new-instance v1, Lcom/google/android/gms/common/api/internal/c;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/api/internal/c;->DW:Lcom/google/android/gms/common/api/internal/c;

    :cond_13
    sget-object p0, Lcom/google/android/gms/common/api/internal/c;->DW:Lcom/google/android/gms/common/api/internal/c;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/c;->Hw:Lcom/google/android/gms/common/api/Status;

    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method private static j6(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/c;
    .registers 5

    sget-object v0, Lcom/google/android/gms/common/api/internal/c;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/api/internal/c;->DW:Lcom/google/android/gms/common/api/internal/c;

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

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

    const-string p0, "."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public static j6()Ljava/lang/String;
    .registers 1

    const-string v0, "getGoogleAppId"

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/c;->j6(Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->FH:Ljava/lang/String;

    return-object v0
.end method
