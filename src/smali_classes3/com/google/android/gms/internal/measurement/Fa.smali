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
    .registers 5
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

    if-eqz v0, :cond_13

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Fa;->v5:Lcom/google/android/gms/internal/measurement/La;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/Fa;->Zo:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/Fa;->VH:Ljava/lang/Object;

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Ga;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/Fa;-><init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/La;",
            "Ljava/lang/String;",
            "D)",
            "Lcom/google/android/gms/internal/measurement/Fa<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/Ja;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Ja;-><init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/Double;)V

    return-object v0
.end method

.method private static DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/La;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/measurement/Fa<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/Ha;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Ha;-><init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private static DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/La;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/internal/measurement/Fa<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/Ga;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Ga;-><init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/Long;)V

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
            "Lcom/google/android/gms/internal/measurement/Fa<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/Ka;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Ka;-><init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/La;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/measurement/Fa<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/Ia;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Ia;-><init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/Boolean;)V

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

    if-eqz v0, :cond_1b

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/Fa;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/Fa;->DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Fa;->DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/Fa;->DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Fa;->DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/Fa;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/Fa;->DW(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/Fa;

    move-result-object p0

    return-object p0
.end method

.method private final j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/Fa;->Zo:Ljava/lang/String;

    return-object p1

    :cond_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->Zo:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static j6(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/Fa;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_b

    :cond_a
    move-object p0, v1

    :goto_b
    sget-object v1, Lcom/google/android/gms/internal/measurement/Fa;->DW:Landroid/content/Context;

    if-eq v1, p0, :cond_45

    const-class v1, Lcom/google/android/gms/internal/measurement/ta;

    monitor-enter v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_47

    :try_start_12
    sget-object v1, Lcom/google/android/gms/internal/measurement/ta;->j6:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const-class v1, Lcom/google/android/gms/internal/measurement/ta;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_40

    :try_start_1a
    const-class v1, Lcom/google/android/gms/internal/measurement/Ma;

    monitor-enter v1
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_47

    :try_start_1d
    sget-object v1, Lcom/google/android/gms/internal/measurement/Ma;->j6:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const-class v1, Lcom/google/android/gms/internal/measurement/Ma;

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_3b

    :try_start_25
    const-class v1, Lcom/google/android/gms/internal/measurement/Ba;

    monitor-enter v1
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_47

    const/4 v1, 0x0

    :try_start_29
    sput-object v1, Lcom/google/android/gms/internal/measurement/Ba;->j6:Lcom/google/android/gms/internal/measurement/Ba;

    const-class v1, Lcom/google/android/gms/internal/measurement/Ba;

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_36

    :try_start_2e
    sget-object v1, Lcom/google/android/gms/internal/measurement/Fa;->Hw:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    sput-object p0, Lcom/google/android/gms/internal/measurement/Fa;->DW:Landroid/content/Context;
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_47

    goto :goto_45

    :catchall_36
    move-exception p0

    :try_start_37
    const-class v1, Lcom/google/android/gms/internal/measurement/Ba;

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_36

    :try_start_3a
    throw p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_47

    :catchall_3b
    move-exception p0

    :try_start_3c
    const-class v1, Lcom/google/android/gms/internal/measurement/Ma;

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3b

    :try_start_3f
    throw p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_47

    :catchall_40
    move-exception p0

    :try_start_41
    const-class v1, Lcom/google/android/gms/internal/measurement/ta;

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_40

    :try_start_44
    throw p0

    :cond_45
    :goto_45
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_47

    throw p0
.end method

.method private final v5()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/Fa;->DW:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Ba;->j6(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/Ba;

    move-result-object v0

    const-string v1, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/Ba;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1e

    sget-object v1, Lcom/google/android/gms/internal/measurement/qa;->FH:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    const/4 v1, 0x0

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->v5:Lcom/google/android/gms/internal/measurement/La;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/La;->j6(Lcom/google/android/gms/internal/measurement/La;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/google/android/gms/internal/measurement/Fa;->DW:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/Fa;->v5:Lcom/google/android/gms/internal/measurement/La;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/La;->j6(Lcom/google/android/gms/internal/measurement/La;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/ta;->j6(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/ta;

    move-result-object v0

    goto :goto_41

    :cond_3b
    sget-object v0, Lcom/google/android/gms/internal/measurement/Fa;->DW:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/Ma;->j6(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/Ma;

    move-result-object v0

    :goto_41
    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/Fa;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/measurement/ya;->j6(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/Fa;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/Fa;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Bypass reading Phenotype values for flag: "

    if-eqz v2, :cond_67

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6c

    :cond_67
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6c
    const-string v2, "PhenotypeFlag"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    return-object v1
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

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/Fa;->gn:I

    if-ge v1, v0, :cond_35

    monitor-enter p0

    :try_start_b
    iget v1, p0, Lcom/google/android/gms/internal/measurement/Fa;->gn:I

    if-ge v1, v0, :cond_30

    sget-object v1, Lcom/google/android/gms/internal/measurement/Fa;->DW:Landroid/content/Context;

    if-eqz v1, :cond_28

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/Fa;->v5()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    goto :goto_23

    :cond_1a
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/Fa;->Zo()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    goto :goto_23

    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Fa;->VH:Ljava/lang/Object;

    :goto_23
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/Fa;->u7:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->gn:I

    goto :goto_30

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call PhenotypeFlag.init() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    :goto_30
    monitor-exit p0

    goto :goto_35

    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_32

    throw v0

    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Fa;->u7:Ljava/lang/Object;

    return-object v0
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
