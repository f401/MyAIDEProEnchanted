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
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Labcd/WE$b;",
            "Ljava/lang/ref/Reference<",
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

    :goto_10
    iget-object v1, p0, Labcd/WE;->FH:[Labcd/WE$c;

    array-length v2, v1

    if-lt v0, v2, :cond_16

    return-void

    :cond_16
    new-instance v2, Labcd/WE$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Labcd/WE$c;-><init>(Labcd/WE$c;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method private DW(Labcd/WE$b;Z)Labcd/UE;
    .registers 6

    iget-object v0, p0, Labcd/WE;->DW:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/UE;

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    if-nez v0, :cond_43

    invoke-direct {p0, p1}, Labcd/WE;->DW(Labcd/WE$b;)Labcd/WE$c;

    move-result-object v2

    monitor-enter v2

    :try_start_1a
    iget-object v0, p0, Labcd/WE;->DW:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Labcd/UE;

    :cond_2b
    if-nez v1, :cond_3d

    invoke-interface {p1, p2}, Labcd/WE$b;->j6(Z)Labcd/UE;

    move-result-object p2

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Labcd/WE;->DW:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    goto :goto_3e

    :cond_3d
    move-object v0, v1

    :goto_3e
    monitor-exit v2

    goto :goto_43

    :catchall_40
    move-exception p1

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_1a .. :try_end_42} :catchall_40

    throw p1

    :cond_43
    :goto_43
    invoke-virtual {v0}, Labcd/UE;->Ws()V

    return-object v0
.end method

.method private DW(Labcd/WE$b;)Labcd/WE$c;
    .registers 4

    iget-object v0, p0, Labcd/WE;->FH:[Labcd/WE$c;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    ushr-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Labcd/WE;->FH:[Labcd/WE$c;

    array-length v1, v1

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public static j6(Labcd/WE$b;)Labcd/UE;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Labcd/WE;->j6(Labcd/WE$b;Z)Labcd/UE;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Labcd/WE$b;Z)Labcd/UE;
    .registers 3

    sget-object v0, Labcd/WE;->j6:Labcd/WE;

    invoke-direct {v0, p0, p1}, Labcd/WE;->DW(Labcd/WE$b;Z)Labcd/UE;

    move-result-object p0

    return-object p0
.end method
