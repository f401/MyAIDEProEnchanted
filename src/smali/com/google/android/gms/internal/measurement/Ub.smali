.class public Lcom/google/android/gms/internal/measurement/Ub;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Lcom/google/android/gms/internal/measurement/sb;


# instance fields
.field private DW:Lcom/google/android/gms/internal/measurement/Wa;

.field private volatile FH:Lcom/google/android/gms/internal/measurement/lc;

.field private volatile Hw:Lcom/google/android/gms/internal/measurement/Wa;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/sb;->DW()Lcom/google/android/gms/internal/measurement/sb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/Ub;->j6:Lcom/google/android/gms/internal/measurement/sb;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final DW(Lcom/google/android/gms/internal/measurement/lc;)Lcom/google/android/gms/internal/measurement/lc;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->FH:Lcom/google/android/gms/internal/measurement/lc;

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->FH:Lcom/google/android/gms/internal/measurement/lc;

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->FH:Lcom/google/android/gms/internal/measurement/lc;

    return-object v0

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Ub;->FH:Lcom/google/android/gms/internal/measurement/lc;

    sget-object v0, Lcom/google/android/gms/internal/measurement/Wa;->j6:Lcom/google/android/gms/internal/measurement/Wa;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->Hw:Lcom/google/android/gms/internal/measurement/Wa;
    :try_end_1
    .catch Lcom/google/android/gms/internal/measurement/Mb; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Ub;->FH:Lcom/google/android/gms/internal/measurement/lc;

    sget-object v0, Lcom/google/android/gms/internal/measurement/Wa;->j6:Lcom/google/android/gms/internal/measurement/Wa;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->Hw:Lcom/google/android/gms/internal/measurement/Wa;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->Hw:Lcom/google/android/gms/internal/measurement/Wa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->Hw:Lcom/google/android/gms/internal/measurement/Wa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/Wa;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->FH:Lcom/google/android/gms/internal/measurement/lc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->FH:Lcom/google/android/gms/internal/measurement/lc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/lc;->FH()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/Ub;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/Ub;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->FH:Lcom/google/android/gms/internal/measurement/lc;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/Ub;->FH:Lcom/google/android/gms/internal/measurement/lc;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/Ub;->j6()Lcom/google/android/gms/internal/measurement/Wa;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/Ub;->j6()Lcom/google/android/gms/internal/measurement/Wa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/Wa;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/nc;->j6()Lcom/google/android/gms/internal/measurement/lc;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/Ub;->DW(Lcom/google/android/gms/internal/measurement/lc;)Lcom/google/android/gms/internal/measurement/lc;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/nc;->j6()Lcom/google/android/gms/internal/measurement/lc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/Ub;->DW(Lcom/google/android/gms/internal/measurement/lc;)Lcom/google/android/gms/internal/measurement/lc;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final j6()Lcom/google/android/gms/internal/measurement/Wa;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->Hw:Lcom/google/android/gms/internal/measurement/Wa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->Hw:Lcom/google/android/gms/internal/measurement/Wa;

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->Hw:Lcom/google/android/gms/internal/measurement/Wa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->Hw:Lcom/google/android/gms/internal/measurement/Wa;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->FH:Lcom/google/android/gms/internal/measurement/lc;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/measurement/Wa;->j6:Lcom/google/android/gms/internal/measurement/Wa;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->Hw:Lcom/google/android/gms/internal/measurement/Wa;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->Hw:Lcom/google/android/gms/internal/measurement/Wa;

    monitor-exit p0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->FH:Lcom/google/android/gms/internal/measurement/lc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/lc;->VH()Lcom/google/android/gms/internal/measurement/Wa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->Hw:Lcom/google/android/gms/internal/measurement/Wa;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final j6(Lcom/google/android/gms/internal/measurement/lc;)Lcom/google/android/gms/internal/measurement/lc;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Ub;->FH:Lcom/google/android/gms/internal/measurement/lc;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/Ub;->DW:Lcom/google/android/gms/internal/measurement/Wa;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/Ub;->Hw:Lcom/google/android/gms/internal/measurement/Wa;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Ub;->FH:Lcom/google/android/gms/internal/measurement/lc;

    return-object v0
.end method
