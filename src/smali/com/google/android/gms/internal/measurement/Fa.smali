.class public abstract Lcom/google/android/gms/internal/measurement/Fa;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static DW:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static FH:Z

.field private static final Hw:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final j6:Ljava/lang/Object;


# instance fields
.field private final VH:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/lang/String;

.field private volatile gn:I

.field private volatile u7:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final v5:Lcom/google/android/gms/internal/measurement/La;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/Fa;->j6:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/measurement/Fa;->DW:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/Fa;->FH:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/Fa;->Hw:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/La;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->gn:I

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/La;->j6(Lcom/google/android/gms/internal/measurement/La;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Fa;->v5:Lcom/google/android/gms/internal/measurement/La;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/Fa;->Zo:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/Fa;->VH:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Ga;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/Fa;-><init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/La;",
            "Ljava/lang/String;",
            "D)",
            "Lcom/google/android/gms/internal/measurement/Fa",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/Ja;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/Ja;-><init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/Double;)V

    return-object v0
.end method

.method private static DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/La;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/measurement/Fa",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/Ha;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/Ha;-><init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private static DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/La;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/internal/measurement/Fa",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/Ga;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/Ga;-><init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method private static DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/La;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/measurement/Fa",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/Ka;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Ka;-><init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/La;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/measurement/Fa",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/Ia;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/Ia;-><init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method static FH()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/Fa;->Hw:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method private final Zo()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->v5:Lcom/google/android/gms/internal/measurement/La;

    sget-object v0, Lcom/google/android/gms/internal/measurement/Fa;->DW:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Ba;->j6(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/Ba;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Fa;->v5:Lcom/google/android/gms/internal/measurement/La;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/La;->FH(Lcom/google/android/gms/internal/measurement/La;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/Fa;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/ya;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/Fa;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 6

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/Fa;->DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Fa;->DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 6

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/Fa;->DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Fa;->DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Fa;->DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object v0

    return-object v0
.end method

.method private final j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->Zo:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->Zo:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static j6(Landroid/content/Context;)V
    .registers 4

    sget-object v1, Lcom/google/android/gms/internal/measurement/Fa;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/Fa;->DW:Landroid/content/Context;

    if-eq v0, p0, :cond_0

    const-class v0, Lcom/google/android/gms/internal/measurement/ta;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/ta;->j6:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-class v0, Lcom/google/android/gms/internal/measurement/ta;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    const-class v0, Lcom/google/android/gms/internal/measurement/Ma;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/Ma;->j6:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-class v0, Lcom/google/android/gms/internal/measurement/Ma;

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    const-class v0, Lcom/google/android/gms/internal/measurement/Ba;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x0

    :try_start_5
    sput-object v0, Lcom/google/android/gms/internal/measurement/Ba;->j6:Lcom/google/android/gms/internal/measurement/Ba;

    const-class v0, Lcom/google/android/gms/internal/measurement/Ba;

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    sget-object v0, Lcom/google/android/gms/internal/measurement/Fa;->Hw:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    sput-object p0, Lcom/google/android/gms/internal/measurement/Fa;->DW:Landroid/content/Context;

    :cond_0
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :cond_1
    move-object p0, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    const-class v2, Lcom/google/android/gms/internal/measurement/Ba;

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_9
    const-class v2, Lcom/google/android/gms/internal/measurement/Ma;

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_3
    move-exception v0

    :try_start_b
    const-class v2, Lcom/google/android/gms/internal/measurement/ta;

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
.end method

.method private final v5()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->v5:Lcom/google/android/gms/internal/measurement/La;

    sget-object v0, Lcom/google/android/gms/internal/measurement/Fa;->DW:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Ba;->j6(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/Ba;

    move-result-object v0

    const-string v2, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/Ba;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/measurement/qa;->FH:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->v5:Lcom/google/android/gms/internal/measurement/La;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/La;->j6(Lcom/google/android/gms/internal/measurement/La;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/measurement/Fa;->DW:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/Fa;->v5:Lcom/google/android/gms/internal/measurement/La;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/La;->j6(Lcom/google/android/gms/internal/measurement/La;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/ta;->j6(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/ta;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/Fa;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/measurement/ya;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/Fa;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/Fa;->DW:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/Fa;->v5:Lcom/google/android/gms/internal/measurement/La;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/Ma;->j6(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/Ma;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/Fa;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Bypass reading Phenotype values for flag: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string v2, "PhenotypeFlag"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/String;

    const-string v2, "Bypass reading Phenotype values for flag: "

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public final DW()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->VH:Ljava/lang/Object;

    return-object v0
.end method

.method public final Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->v5:Lcom/google/android/gms/internal/measurement/La;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/La;->DW(Lcom/google/android/gms/internal/measurement/La;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/Fa;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j6()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/Fa;->Hw:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->gn:I

    if-ge v0, v1, :cond_2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->gn:I

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/measurement/Fa;->DW:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->v5:Lcom/google/android/gms/internal/measurement/La;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/Fa;->v5()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->u7:Ljava/lang/Object;

    iput v1, p0, Lcom/google/android/gms/internal/measurement/Fa;->gn:I

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->u7:Ljava/lang/Object;

    return-object v0

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/Fa;->Zo()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->VH:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call PhenotypeFlag.init() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method abstract j6(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method
