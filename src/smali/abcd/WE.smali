.class public Labcd/WE;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/WE$a;,
        Labcd/WE$b;,
        Labcd/WE$c;
    }
.end annotation


# static fields
.field private static final j6:Labcd/WE;


# instance fields
.field private final DW:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Labcd/WE$b;",
            "Ljava/lang/ref/Reference",
            "<",
            "Labcd/UE;",
            ">;>;"
        }
    .end annotation
.end field

.field private final FH:[Labcd/WE$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/WE;

    invoke-direct {v0}, Labcd/WE;-><init>()V

    sput-object v0, Labcd/WE;->j6:Labcd/WE;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Labcd/WE;->DW:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x4

    new-array v0, v0, [Labcd/WE$c;

    iput-object v0, p0, Labcd/WE;->FH:[Labcd/WE$c;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/WE;->FH:[Labcd/WE$c;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Labcd/WE$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Labcd/WE$c;-><init>(Labcd/WE$c;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private DW(Labcd/WE$b;Z)Labcd/UE;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/WE;->DW:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/UE;

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Labcd/WE;->DW(Labcd/WE$b;)Labcd/WE$c;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Labcd/WE;->DW:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/UE;

    :goto_1
    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Labcd/WE$b;->j6(Z)Labcd/UE;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Labcd/WE;->DW:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v0}, Labcd/UE;->Ws()V

    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private DW(Labcd/WE$b;)Labcd/WE$c;
    .registers 5

    iget-object v0, p0, Labcd/WE;->FH:[Labcd/WE$c;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Labcd/WE;->FH:[Labcd/WE$c;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static j6(Labcd/WE$b;)Labcd/UE;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Labcd/WE;->j6(Labcd/WE$b;Z)Labcd/UE;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Labcd/WE$b;Z)Labcd/UE;
    .registers 3

    sget-object v0, Labcd/WE;->j6:Labcd/WE;

    invoke-direct {v0, p0, p1}, Labcd/WE;->DW(Labcd/WE$b;Z)Labcd/UE;

    move-result-object v0

    return-object v0
.end method
