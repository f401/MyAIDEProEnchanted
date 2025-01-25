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
            "Lcom/google/android/gms/internal/measurement/Fa<",
            "TV;>;"
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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lcom/google/android/gms/measurement/internal/zzai$zza<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-wide/high16 p1, -0x3ff8000000000000L  # -3.0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-direct {p2, p0, p1, p1}, Lcom/google/android/gms/measurement/internal/zzai$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzai;->zzaim:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method static zzb(Ljava/lang/String;JJ)Lcom/google/android/gms/measurement/internal/zzai$zza;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lcom/google/android/gms/measurement/internal/zzai$zza<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzai;->zzaij:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static zzb(Ljava/lang/String;ZZ)Lcom/google/android/gms/measurement/internal/zzai$zza;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/measurement/internal/zzai$zza<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzai;->zzaik:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static zzc(Ljava/lang/String;II)Lcom/google/android/gms/measurement/internal/zzai$zza;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/measurement/internal/zzai$zza<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzai;->zzaii:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai$zza;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/measurement/internal/zzai$zza<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzai;->zzail:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static zzja()V
    .registers 3

    const-class v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_9a

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_a2

    :try_start_b
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaik:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzai$zza;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/Fa;->j6()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;

    goto :goto_11

    :cond_26
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzail:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzai$zza;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/Fa;->j6()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;

    goto :goto_2c

    :cond_41
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaij:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzai$zza;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/Fa;->j6()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;

    goto :goto_47

    :cond_5c
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaii:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzai$zza;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/Fa;->j6()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;

    goto :goto_62

    :cond_77
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaim:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzai$zza;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/Fa;->j6()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;
    :try_end_91
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_91} :catch_92
    .catchall {:try_start_b .. :try_end_91} :catchall_a2

    goto :goto_7d

    :catch_92
    move-exception v0

    :try_start_93
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Ljava/lang/Exception;)V

    :cond_96
    const-class v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    monitor-exit v0

    return-void

    :cond_9a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to refresh flag cache on main thread or on package side."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_a2
    move-exception v0

    const-class v1, Lcom/google/android/gms/measurement/internal/zzai$zza;

    monitor-exit v1
    :try_end_a6
    .catchall {:try_start_93 .. :try_end_a6} :catchall_a2

    goto :goto_a8

    :goto_a7
    throw v0

    :goto_a8
    goto :goto_a7
.end method

.method static synthetic zzjb()V
    .registers 0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzq()V

    return-void
.end method

.method private static zzq()V
    .registers 6

    const-class v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    monitor-enter v0

    :try_start_3
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaik:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai;->zziz()Lcom/google/android/gms/internal/measurement/La;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/La;->j6(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    goto :goto_9

    :cond_2c
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzail:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai;->zziz()Lcom/google/android/gms/internal/measurement/La;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/La;->j6(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    goto :goto_32

    :cond_51
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaij:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai;->zziz()Lcom/google/android/gms/internal/measurement/La;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/La;->j6(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    goto :goto_57

    :cond_7a
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaii:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_80
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai;->zziz()Lcom/google/android/gms/internal/measurement/La;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/La;->j6(Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    goto :goto_80

    :cond_a3
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaim:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai;->zziz()Lcom/google/android/gms/internal/measurement/La;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/La;->j6(Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    goto :goto_a9

    :cond_cc
    const-class v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    monitor-exit v0

    return-void

    :catchall_d0
    move-exception v0

    const-class v1, Lcom/google/android/gms/measurement/internal/zzai$zza;

    monitor-exit v1
    :try_end_d4
    .catchall {:try_start_3 .. :try_end_d4} :catchall_d0

    goto :goto_d6

    :goto_d5
    throw v0

    :goto_d6
    goto :goto_d5
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

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    return-object v0

    :cond_7
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;

    return-object v0

    :cond_17
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzja()V

    :try_start_1a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Fa;->j6()Ljava/lang/Object;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_20} :catch_21

    return-object v0

    :catch_21
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Fa;->DW()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    return-object p1

    :cond_a
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    return-object p1

    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Ljava/lang/Object;

    return-object p1

    :cond_1a
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzja()V

    :try_start_1d
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/Fa;->j6()Ljava/lang/Object;

    move-result-object p1
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_23} :catch_24

    return-object p1

    :catch_24
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Ljava/lang/Exception;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalh:Lcom/google/android/gms/internal/measurement/Fa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/Fa;->DW()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    return-object v0
.end method
