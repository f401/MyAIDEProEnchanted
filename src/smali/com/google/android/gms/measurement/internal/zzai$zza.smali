.class public final Lcom/google/android/gms/measurement/internal/zzai$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzaan:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private zzalh:Lcom/google/android/gms/internal/measurement/Fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/Fa",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final zzali:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private volatile zzalj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zzoj:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzali:Ljava/lang/Object;

    return-void
.end method

.method static zza(Ljava/lang/String;DD)Lcom/google/android/gms/measurement/internal/zzai$zza;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lcom/google/android/gms/measurement/internal/zzai$zza",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-wide/high16 v0, -0x3ff8000000000000L    # -3.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gms/measurement/internal/zzai$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaim:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method static zzb(Ljava/lang/String;JJ)Lcom/google/android/gms/measurement/internal/zzai$zza;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lcom/google/android/gms/measurement/internal/zzai$zza",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzai$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzaij:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static zzb(Ljava/lang/String;ZZ)Lcom/google/android/gms/measurement/internal/zzai$zza;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/measurement/internal/zzai$zza",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzai$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzaik:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static zzc(Ljava/lang/String;II)Lcom/google/android/gms/measurement/internal/zzai$zza;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/measurement/internal/zzai$zza",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzai$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzaii:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai$zza;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/measurement/internal/zzai$zza",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzail:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static zzja()V
    .registers 3

    const-class v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaik:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/Fa;->j6()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Ljava/lang/Exception;)V

    :cond_0
    const-class v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzail:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/Fa;->j6()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    const-class v1, Lcom/google/android/gms/measurement/internal/zzai$zza;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    :try_start_5
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaij:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/Fa;->j6()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaii:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/Fa;->j6()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaim:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/Fa;->j6()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :cond_5
    :try_start_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to refresh flag cache on main thread or on package side."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method static synthetic zzjb()V
    .registers 0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzq()V

    return-void
.end method

.method private static zzq()V
    .registers 10

    const-class v2, Lcom/google/android/gms/measurement/internal/zzai$zza;

    monitor-enter v2

    :try_start_0
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzaik:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai;->zziz()Lcom/google/android/gms/internal/measurement/La;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v5, v6, v3}, Lcom/google/android/gms/internal/measurement/La;->j6(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    goto :goto_0

    :catchall_0
    move-exception v2

    const-class v3, Lcom/google/android/gms/measurement/internal/zzai$zza;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzail:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    move-object v3, v0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai;->zziz()Lcom/google/android/gms/internal/measurement/La;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lcom/google/android/gms/internal/measurement/La;->j6(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzaij:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    move-object v3, v0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai;->zziz()Lcom/google/android/gms/internal/measurement/La;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Lcom/google/android/gms/internal/measurement/La;->j6(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzaii:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    move-object v3, v0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai;->zziz()Lcom/google/android/gms/internal/measurement/La;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v6, v2}, Lcom/google/android/gms/internal/measurement/La;->j6(Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object v2

    iput-object v2, v3, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    goto :goto_3

    :cond_3
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzaim:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai;->zziz()Lcom/google/android/gms/internal/measurement/La;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Lcom/google/android/gms/internal/measurement/La;->j6(Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    goto :goto_4

    :cond_4
    const-class v2, Lcom/google/android/gms/measurement/internal/zzai$zza;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzja()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Fa;->j6()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Fa;->DW()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzja()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Fa;->j6()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Fa;->DW()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method public final getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    return-object v0
.end method
