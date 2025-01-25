.class public final Lcom/google/android/gms/common/api/internal/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f;
.implements Lcom/google/android/gms/common/api/g;
.implements Lcom/google/android/gms/common/api/internal/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$d;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/f;",
        "Lcom/google/android/gms/common/api/g;",
        "Lcom/google/android/gms/common/api/internal/I;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/common/api/a$f;

.field private final EQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/internal/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Lcom/google/android/gms/common/api/a$b;

.field private final Hw:Lcom/google/android/gms/common/api/internal/E;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/E<",
            "TO;>;"
        }
    .end annotation
.end field

.field final J0:Lcom/google/android/gms/common/api/internal/b;

.field private final VH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/f<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/u;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/F;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:I

.field private final j6:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/common/api/internal/l;",
            ">;"
        }
    .end annotation
.end field

.field private tp:Z

.field private final u7:Lcom/google/android/gms/common/api/internal/w;

.field private final v5:Lcom/google/android/gms/common/api/internal/i;

.field private we:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/api/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/e<",
            "TO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->j6:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->Zo:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->VH:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->EQ:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->we:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lcom/google/android/gms/common/api/e;->j6(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    instance-of v2, v1, Lcom/google/android/gms/common/internal/t;

    if-eqz v2, :cond_40

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/common/internal/t;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/t;->j6()Lcom/google/android/gms/common/api/a$h;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->FH:Lcom/google/android/gms/common/api/a$b;

    goto :goto_42

    :cond_40
    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->FH:Lcom/google/android/gms/common/api/a$b;

    :goto_42
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/e;->FH()Lcom/google/android/gms/common/api/internal/E;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->Hw:Lcom/google/android/gms/common/api/internal/E;

    new-instance v2, Lcom/google/android/gms/common/api/internal/i;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/i;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->v5:Lcom/google/android/gms/common/api/internal/i;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/e;->DW()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->gn:I

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b;->DW(Lcom/google/android/gms/common/api/internal/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/common/api/e;->j6(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/w;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->u7:Lcom/google/android/gms/common/api/internal/w;

    return-void

    :cond_6a
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->u7:Lcom/google/android/gms/common/api/internal/w;

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/common/api/internal/b$a;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/b$a;->J8()V

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/common/api/internal/b$a;Lcom/google/android/gms/common/api/internal/b$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->DW(Lcom/google/android/gms/common/api/internal/b$b;)V

    return-void
.end method

.method private final DW(Lcom/google/android/gms/common/api/internal/b$b;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->EQ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b$b;->DW(Lcom/google/android/gms/common/api/internal/b$b;)Lcom/google/android/gms/common/Feature;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->j6:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->j6:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/l;

    instance-of v3, v2, Lcom/google/android/gms/common/api/internal/v;

    if-eqz v3, :cond_33

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/common/api/internal/v;

    invoke-virtual {v3, p0}, Lcom/google/android/gms/common/api/internal/v;->DW(Lcom/google/android/gms/common/api/internal/b$a;)[Lcom/google/android/gms/common/Feature;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-static {v3, p1}, Lcom/google/android/gms/common/util/b;->j6([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_5b
    if-ge v2, v1, :cond_73

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/internal/l;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/b$a;->j6:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    new-instance v4, Lcom/google/android/gms/common/api/l;

    invoke-direct {v4, p1}, Lcom/google/android/gms/common/api/l;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/l;->j6(Ljava/lang/RuntimeException;)V

    goto :goto_5b

    :cond_73
    return-void
.end method

.method private final DW(Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 5

    invoke-static {}, Lcom/google/android/gms/common/api/internal/b;->j6()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/b;->Zo(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/j;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/b;->VH(Lcom/google/android/gms/common/api/internal/b;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->Hw:Lcom/google/android/gms/common/api/internal/E;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_29

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/b;->Zo(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/j;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->gn:I

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/api/internal/G;->j6(Lcom/google/android/gms/common/ConnectionResult;I)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_2c

    const/4 p1, 0x0

    throw p1

    :cond_29
    :goto_29
    :try_start_29
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method private final DW(Lcom/google/android/gms/common/api/internal/l;)Z
    .registers 7

    instance-of v0, p1, Lcom/google/android/gms/common/api/internal/v;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->FH(Lcom/google/android/gms/common/api/internal/l;)V

    return v1

    :cond_9
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/internal/v;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/v;->DW(Lcom/google/android/gms/common/api/internal/b$a;)[Lcom/google/android/gms/common/Feature;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/internal/b$a;->j6([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;

    move-result-object v2

    if-nez v2, :cond_1a

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->FH(Lcom/google/android/gms/common/api/internal/l;)V

    return v1

    :cond_1a
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/v;->FH(Lcom/google/android/gms/common/api/internal/b$a;)Z

    move-result p1

    if-eqz p1, :cond_aa

    new-instance p1, Lcom/google/android/gms/common/api/internal/b$b;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->Hw:Lcom/google/android/gms/common/api/internal/E;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/gms/common/api/internal/b$b;-><init>(Lcom/google/android/gms/common/api/internal/E;Lcom/google/android/gms/common/Feature;Lcom/google/android/gms/common/api/internal/m;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->EQ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/16 v2, 0xf

    if-ltz v0, :cond_5d

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->EQ:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/b$b;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/b;->FH(Lcom/google/android/gms/common/api/internal/b;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b2

    :cond_5d
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->EQ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/b;->FH(Lcom/google/android/gms/common/api/internal/b;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/b;->Hw(Lcom/google/android/gms/common/api/internal/b;)J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->DW(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->gn:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/b;->DW(Lcom/google/android/gms/common/ConnectionResult;I)Z

    goto :goto_b2

    :cond_aa
    new-instance p1, Lcom/google/android/gms/common/api/l;

    invoke-direct {p1, v2}, Lcom/google/android/gms/common/api/l;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/l;->j6(Ljava/lang/RuntimeException;)V

    :cond_b2
    :goto_b2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic FH(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/a$f;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    return-object p0
.end method

.method private final FH(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->Zo:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/F;

    sget-object v2, Lcom/google/android/gms/common/ConnectionResult;->j6:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->getEndpointPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/b$a;->Hw:Lcom/google/android/gms/common/api/internal/E;

    invoke-virtual {v1, v3, p1, v2}, Lcom/google/android/gms/common/api/internal/F;->j6(Lcom/google/android/gms/common/api/internal/E;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_6

    :cond_28
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->Zo:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final FH(Lcom/google/android/gms/common/api/internal/l;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->v5:Lcom/google/android/gms/common/api/internal/i;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/b$a;->Hw()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/l;->j6(Lcom/google/android/gms/common/api/internal/i;Z)V

    :try_start_9
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/l;->j6(Lcom/google/android/gms/common/api/internal/b$a;)V
    :try_end_c
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->onConnectionSuspended(I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    return-void
.end method

.method private final J0()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/b$a;->tp()V

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->j6:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/b$a;->FH(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/b$a;->QX()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->VH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/u;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/u;->j6:Lcom/google/android/gms/common/api/internal/g;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/g;->DW()[Lcom/google/android/gms/common/Feature;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/internal/b$a;->j6([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;

    move-result-object v2

    if-eqz v2, :cond_31

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    :cond_31
    :try_start_31
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/u;->j6:Lcom/google/android/gms/common/api/internal/g;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->FH:Lcom/google/android/gms/common/api/a$b;

    new-instance v3, Labcd/Zx;

    invoke-direct {v3}, Labcd/Zx;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/api/internal/g;->j6(Lcom/google/android/gms/common/api/a$b;Labcd/Zx;)V
    :try_end_3d
    .catch Landroid/os/DeadObjectException; {:try_start_31 .. :try_end_3d} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3d} :catch_3e

    goto :goto_15

    :catch_3e
    move-exception v1

    goto :goto_2d

    :catch_40
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/b$a;->onConnectionSuspended(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    :cond_4a
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/b$a;->Ws()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/b$a;->XL()V

    return-void
.end method

.method private final J8()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/b$a;->tp()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->tp:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->v5:Lcom/google/android/gms/common/api/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/i;->FH()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/b$a;->Hw:Lcom/google/android/gms/common/api/internal/E;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/b;->FH(Lcom/google/android/gms/common/api/internal/b;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/b$a;->Hw:Lcom/google/android/gms/common/api/internal/E;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/b;->Hw(Lcom/google/android/gms/common/api/internal/b;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->v5(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/internal/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/j;->j6()V

    return-void
.end method

.method private final QX()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->tp:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->Hw:Lcom/google/android/gms/common/api/internal/E;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->Hw:Lcom/google/android/gms/common/api/internal/E;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->tp:Z

    :cond_21
    return-void
.end method

.method private final Ws()V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->j6:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_c
    :goto_c
    if-ge v2, v1, :cond_2a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/internal/l;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v4}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-direct {p0, v3}, Lcom/google/android/gms/common/api/internal/b$a;->DW(Lcom/google/android/gms/common/api/internal/l;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/b$a;->j6:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_2a
    return-void
.end method

.method private final XL()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->Hw:Lcom/google/android/gms/common/api/internal/E;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/b$a;->Hw:Lcom/google/android/gms/common/api/internal/E;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/b;->u7(Lcom/google/android/gms/common/api/internal/b;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private final j6([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;
    .registers 11

    if-eqz p1, :cond_59

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_59

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->getAvailableFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    new-array v0, v1, [Lcom/google/android/gms/common/Feature;

    :cond_11
    new-instance v2, Labcd/k;

    array-length v3, v0

    invoke-direct {v2, v3}, Labcd/k;-><init>(I)V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_2f

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/google/android/gms/common/Feature;->DW()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/common/Feature;->FH()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_2f
    array-length v0, p1

    :goto_30
    if-ge v1, v0, :cond_59

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/google/android/gms/common/Feature;->DW()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-virtual {v3}, Lcom/google/android/gms/common/Feature;->DW()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/google/android/gms/common/Feature;->FH()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_55

    goto :goto_58

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_58
    :goto_58
    return-object v3

    :cond_59
    :goto_59
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic j6(Lcom/google/android/gms/common/api/internal/b$a;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/b$a;->J0()V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/common/api/internal/b$a;Lcom/google/android/gms/common/api/internal/b$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/api/internal/b$b;)V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/common/api/internal/b$b;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->EQ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->tp:Z

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result p1

    if-nez p1, :cond_19

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/b$a;->j6()V

    return-void

    :cond_19
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/b$a;->Ws()V

    :cond_1c
    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/common/api/internal/b$a;Z)Z
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Z)Z

    move-result p0

    return p0
.end method

.method private final j6(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->VH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->v5:Lcom/google/android/gms/common/api/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/i;->j6()Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz p1, :cond_27

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/b$a;->XL()V

    :cond_27
    return v1

    :cond_28
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    const/4 p1, 0x1

    return p1

    :cond_2f
    return v1
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->gn:I

    return v0
.end method

.method public final EQ()Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->we:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method final FH()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final Hw()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->requiresSignIn()Z

    move-result v0

    return v0
.end method

.method public final VH()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->tp:Z

    if-eqz v0, :cond_3d

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/b$a;->QX()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->gn(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/b;->DW(Lcom/google/android/gms/common/api/internal/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/b;->DW(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    const/16 v2, 0x8

    if-ne v0, v1, :cond_2e

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_35

    :cond_2e
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    :cond_3d
    return-void
.end method

.method public final Zo()Lcom/google/android/gms/common/api/a$f;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    return-object v0
.end method

.method public final gn()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Landroid/os/Handler;)V

    sget-object v0, Lcom/google/android/gms/common/api/internal/b;->j6:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->v5:Lcom/google/android/gms/common/api/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/i;->DW()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->VH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->VH:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/common/api/internal/f;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/internal/f;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v1, :cond_3d

    new-instance v3, Lcom/google/android/gms/common/api/internal/D;

    aget-object v4, v0, v2

    new-instance v5, Labcd/Zx;

    invoke-direct {v5}, Labcd/Zx;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/D;-><init>(Lcom/google/android/gms/common/api/internal/f;Labcd/Zx;)V

    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/api/internal/l;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_3d
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/b$a;->FH(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    new-instance v1, Lcom/google/android/gms/common/api/internal/p;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/p;-><init>(Lcom/google/android/gms/common/api/internal/b$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$f;->onUserSignOut(Lcom/google/android/gms/common/internal/c$e;)V

    :cond_58
    return-void
.end method

.method public final j6()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_55

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->v5(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/internal/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/b;->DW(Lcom/google/android/gms/common/api/internal/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/j;->j6(Landroid/content/Context;Lcom/google/android/gms/common/api/a$f;)I

    move-result v0

    if-eqz v0, :cond_38

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/b$a;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_38
    new-instance v0, Lcom/google/android/gms/common/api/internal/b$c;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/b$a;->Hw:Lcom/google/android/gms/common/api/internal/E;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/internal/b$c;-><init>(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/common/api/internal/E;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->u7:Lcom/google/android/gms/common/api/internal/w;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/w;->j6(Lcom/google/android/gms/common/api/internal/z;)V

    :cond_50
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/a$f;->connect(Lcom/google/android/gms/common/internal/c$c;)V

    :cond_55
    :goto_55
    return-void
.end method

.method public final j6(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->j6:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/l;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/l;->j6(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_f

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->j6:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/common/api/internal/F;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->Zo:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j6(Lcom/google/android/gms/common/api/internal/l;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->DW:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->DW(Lcom/google/android/gms/common/api/internal/l;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/b$a;->XL()V

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->j6:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->j6:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->we:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->v5()Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->we:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_36
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/b$a;->j6()V

    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_14

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/b$a;->J0()V

    return-void

    :cond_14
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/n;-><init>(Lcom/google/android/gms/common/api/internal/b$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->u7:Lcom/google/android/gms/common/api/internal/w;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/w;->v5()V

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/b$a;->tp()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->v5(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/internal/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/j;->j6()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->FH(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->DW()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    invoke-static {}, Lcom/google/android/gms/common/api/internal/b;->DW()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->j6:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->we:Lcom/google/android/gms/common/ConnectionResult;

    return-void

    :cond_39
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->DW(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_40

    return-void

    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->gn:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/b;->DW(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_a7

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->DW()I

    move-result p1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_55

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->tp:Z

    :cond_55
    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->tp:Z

    if-eqz p1, :cond_77

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b$a;->Hw:Lcom/google/android/gms/common/api/internal/E;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/b;->FH(Lcom/google/android/gms/common/api/internal/b;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_77
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->Hw:Lcom/google/android/gms/common/api/internal/E;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/E;->j6()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "API: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not available on this device."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/api/Status;)V

    :cond_a7
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_14

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/b$a;->J8()V

    return-void

    :cond_14
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/o;-><init>(Lcom/google/android/gms/common/api/internal/b$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final tp()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->we:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public final u7()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/f<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->VH:Ljava/util/Map;

    return-object v0
.end method

.method public final v5()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->J0:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/b$a;->tp:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/b$a;->j6()V

    :cond_10
    return-void
.end method

.method public final we()Z
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Z)Z

    move-result v0

    return v0
.end method
