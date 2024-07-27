.class public final Lcom/google/android/gms/internal/ads/Mj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Wj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static DW:Ljava/util/concurrent/ScheduledExecutorService;

.field private static j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final EQ:Lcom/google/android/gms/internal/ads/Zj;

.field private final FH:Lcom/google/android/gms/internal/ads/mw;

.field private final Hw:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/sw;",
            ">;"
        }
    .end annotation
.end field

.field private J0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J8:Z

.field private QX:Z

.field private final VH:Landroid/content/Context;

.field private Ws:Z

.field private final Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Lcom/google/android/gms/internal/ads/Yj;

.field private final tp:Lcom/google/android/gms/internal/ads/zzawo;

.field private u7:Z

.field private final v5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final we:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Mj;->j6:Ljava/util/List;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Mj;->DW:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/zzawo;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Yj;)V
    .registers 12

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->v5:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->Zo:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->we:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->J0:Ljava/util/HashSet;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Mj;->J8:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Mj;->Ws:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Mj;->QX:Z

    const-string v0, "SafeBrowsing config is not present."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Mj;->VH:Landroid/content/Context;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->Hw:Ljava/util/LinkedHashMap;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Mj;->gn:Lcom/google/android/gms/internal/ads/Yj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Mj;->tp:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->tp:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzawo;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Mj;->J0:Ljava/util/HashSet;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->J0:Ljava/util/HashSet;

    const-string v1, "cookie"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/ads/mw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/mw;-><init>()V

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/mw;->FH:Ljava/lang/Integer;

    iput-object p4, v0, Lcom/google/android/gms/internal/ads/mw;->v5:Ljava/lang/String;

    iput-object p4, v0, Lcom/google/android/gms/internal/ads/mw;->Zo:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/nw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/nw;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/mw;->gn:Lcom/google/android/gms/internal/ads/nw;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/mw;->gn:Lcom/google/android/gms/internal/ads/nw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Mj;->tp:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzawo;->j6:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/nw;->FH:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/tw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/tw;-><init>()V

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/tw;->FH:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Mj;->VH:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->j6()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/tw;->v5:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/common/c;->j6()Lcom/google/android/gms/common/c;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Mj;->VH:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/tw;->Hw:Ljava/lang/Long;

    :cond_2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/mw;->aM:Lcom/google/android/gms/internal/ads/tw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->FH:Lcom/google/android/gms/internal/ads/mw;

    new-instance v0, Lcom/google/android/gms/internal/ads/Zj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mj;->VH:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Mj;->tp:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzawo;->gn:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/Zj;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/google/android/gms/internal/ads/Mj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->EQ:Lcom/google/android/gms/internal/ads/Zj;

    return-void
.end method

.method private final DW()Lcom/google/android/gms/internal/ads/Hm;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Mj;->u7:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Mj;->tp:Lcom/google/android/gms/internal/ads/zzawo;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzawo;->VH:Z

    if-nez v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Mj;->QX:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Mj;->tp:Lcom/google/android/gms/internal/ads/zzawo;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzawo;->Zo:Z

    if-nez v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Mj;->u7:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Mj;->tp:Lcom/google/android/gms/internal/ads/zzawo;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzawo;->Hw:Z

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Mj;->we:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->FH:Lcom/google/android/gms/internal/ads/mw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Mj;->Hw:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/sw;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/mw;->u7:[Lcom/google/android/gms/internal/ads/sw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->Hw:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Mj;->FH:Lcom/google/android/gms/internal/ads/mw;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/mw;->u7:[Lcom/google/android/gms/internal/ads/sw;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Mj;->FH:Lcom/google/android/gms/internal/ads/mw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->v5:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/mw;->j3:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Mj;->FH:Lcom/google/android/gms/internal/ads/mw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->Zo:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/mw;->Mr:[Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Vj;->j6()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->FH:Lcom/google/android/gms/internal/ads/mw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mw;->v5:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Mj;->FH:Lcom/google/android/gms/internal/ads/mw;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/mw;->tp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x35

    add-int/2addr v5, v6

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Sending SB report\n  url: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n  clickUrl: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n  resources: \n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->FH:Lcom/google/android/gms/internal/ads/mw;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/mw;->u7:[Lcom/google/android/gms/internal/ads/sw;

    array-length v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_5

    aget-object v1, v4, v0

    :try_start_1
    const-string v6, "    ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/sw;->we:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/sw;->v5:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Vj;->j6(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->FH:Lcom/google/android/gms/internal/ads/mw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cw;->j6(Lcom/google/android/gms/internal/ads/cw;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mj;->tp:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzawo;->DW:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzazs;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Mj;->VH:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzazs;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5, v0}, Lcom/google/android/gms/internal/ads/zzazs;->j6(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/Vj;->j6()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/google/android/gms/internal/ads/Rj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Rj;-><init>(Lcom/google/android/gms/internal/ads/Mj;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/Lk;->j6:Lcom/google/android/gms/internal/ads/Lm;

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/ads/Hm;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_7
    sget-object v1, Lcom/google/android/gms/internal/ads/Oj;->j6:Lcom/google/android/gms/internal/ads/rm;

    sget-object v3, Lcom/google/android/gms/internal/ads/Mm;->DW:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/rm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    monitor-exit v2

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/Mj;)Lcom/google/android/gms/internal/ads/mw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->FH:Lcom/google/android/gms/internal/ads/mw;

    return-object v0
.end method

.method static final synthetic Hw(Ljava/lang/String;)Ljava/lang/Void;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Mj;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->we:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j6()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Mj;->j6:Ljava/util/List;

    return-object v0
.end method

.method private final v5(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/sw;
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mj;->we:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->Hw:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/sw;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method final DW(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mj;->we:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->v5:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final FH(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mj;->we:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->Zo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final Hw()Lcom/google/android/gms/internal/ads/zzawo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->tp:Lcom/google/android/gms/internal/ads/zzawo;

    return-object v0
.end method

.method public final VH()Z
    .registers 2

    invoke-static {}, Lcom/google/android/gms/common/util/o;->Zo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->tp:Lcom/google/android/gms/internal/ads/zzawo;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzawo;->FH:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Mj;->Ws:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Zo()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Mj;->J8:Z

    return-void
.end method

.method final synthetic j6(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 12

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "matches"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Mj;->we:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Mj;->v5(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/sw;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Cannot find the corresponding resource object for "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Vj;->j6(Ljava/lang/String;)V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->g0:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Failed to get SafeBrowsing metadata"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Safebrowsing report transmission failed."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/Em;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/String;

    const-string v1, "Cannot find the corresponding resource object for "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/sw;->we:[Ljava/lang/String;

    move v0, v2

    :goto_3
    if-ge v0, v5, :cond_4

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/sw;->we:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "threat_type"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Mj;->u7:Z

    if-lez v5, :cond_7

    const/4 v0, 0x1

    :goto_4
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Mj;->u7:Z

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_5
    :try_start_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Mj;->u7:Z

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mj;->we:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->FH:Lcom/google/android/gms/internal/ads/mw;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/mw;->FH:Ljava/lang/Integer;

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    :try_start_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Mj;->DW()Lcom/google/android/gms/internal/ads/Hm;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v0

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_7
    move v0, v2

    goto :goto_4
.end method

.method public final j6(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->tp:Lcom/google/android/gms/internal/ads/zzawo;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzawo;->FH:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Mj;->Ws:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Nk;->DW(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Failed to capture the webview bitmap."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Vj;->j6(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Mj;->Ws:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/Pj;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/Pj;-><init>(Lcom/google/android/gms/internal/ads/Mj;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mj;->we:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->FH:Lcom/google/android/gms/internal/ads/mw;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/mw;->tp:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j6(Ljava/lang/String;Ljava/util/Map;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Mj;->we:Ljava/lang/Object;

    monitor-enter v2

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Mj;->QX:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->Hw:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p3, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->Hw:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/sw;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sw;->EQ:Ljava/lang/Integer;

    :cond_1
    monitor-exit v2

    :goto_0
    return-void

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/ads/sw;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/sw;-><init>()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/sw;->EQ:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->Hw:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/sw;->Hw:Ljava/lang/Integer;

    iput-object p1, v3, Lcom/google/android/gms/internal/ads/sw;->v5:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/pw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/pw;-><init>()V

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/sw;->Zo:Lcom/google/android/gms/internal/ads/pw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->J0:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_7

    if-eqz p2, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_3
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/Mj;->J0:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Lcom/google/android/gms/internal/ads/ow;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/ow;-><init>()V

    const-string v7, "UTF-8"

    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/ow;->Hw:[B

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/ow;->v5:[B

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "Cannot convert string to bytes, skip header."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Vj;->j6(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    const-string v1, ""

    goto :goto_2

    :cond_5
    const-string v0, ""

    goto :goto_3

    :cond_6
    :try_start_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/ow;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/sw;->Zo:Lcom/google/android/gms/internal/ads/pw;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/pw;->Hw:[Lcom/google/android/gms/internal/ads/ow;

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->Hw:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public final j6([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->EQ:Lcom/google/android/gms/internal/ads/Zj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Zj;->j6([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final v5()V
    .registers 7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mj;->we:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mj;->gn:Lcom/google/android/gms/internal/ads/Yj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Mj;->VH:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Mj;->Hw:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Yj;->j6(Landroid/content/Context;Ljava/util/Set;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/Nj;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/Nj;-><init>(Lcom/google/android/gms/internal/ads/Mj;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/Mm;->DW:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Lcom/google/android/gms/internal/ads/Mj;->DW:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/Qj;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/ads/Qj;-><init>(Lcom/google/android/gms/internal/ads/Mj;Lcom/google/android/gms/internal/ads/Hm;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/Mm;->DW:Ljava/util/concurrent/Executor;

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/sm;Ljava/util/concurrent/Executor;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Mj;->j6:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
