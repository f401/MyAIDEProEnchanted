.class public Lsun/misc/Cleaner;
.super Ljava/lang/ref/PhantomReference;
.source "Cleaner.java"


# static fields
.field private static final dummyQueue:Ljava/lang/ref/ReferenceQueue;

.field private static first:Lsun/misc/Cleaner;


# instance fields
.field private next:Lsun/misc/Cleaner;

.field private prev:Lsun/misc/Cleaner;

.field private final thunk:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lsun/misc/Cleaner;->dummyQueue:Ljava/lang/ref/ReferenceQueue;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 5

    const/4 v1, 0x0

    .line 115
    sget-object v0, Lsun/misc/Cleaner;->dummyQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 74
    iput-object v1, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    iput-object v1, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    .line 116
    iput-object p2, p0, Lsun/misc/Cleaner;->thunk:Ljava/lang/Runnable;

    .line 117
    return-void
.end method

.method private static add(Lsun/misc/Cleaner;)Lsun/misc/Cleaner;
    .registers 3

    const-class v0, Lsun/misc/Cleaner;

    monitor-enter v0

    .line 79
    :try_start_3
    sget-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    if-eqz v0, :cond_f

    .line 80
    sget-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    iput-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    .line 81
    sget-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    iput-object p0, v0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    .line 83
    :cond_f
    sput-object p0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    .line 84
    const-class v0, Lsun/misc/Cleaner;

    monitor-exit v0

    return-object p0

    .line 78
    :catchall_15
    move-exception v0

    const-class v1, Lsun/misc/Cleaner;

    monitor-exit v1

    throw v0
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;
    .registers 3

    .line 130
    if-nez p1, :cond_4

    .line 131
    const/4 v0, 0x0

    .line 132
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lsun/misc/Cleaner;

    invoke-direct {v0, p0, p1}, Lsun/misc/Cleaner;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lsun/misc/Cleaner;->add(Lsun/misc/Cleaner;)Lsun/misc/Cleaner;

    move-result-object v0

    goto :goto_3
.end method

.method private static remove(Lsun/misc/Cleaner;)Z
    .registers 3

    const-class v0, Lsun/misc/Cleaner;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3a

    if-ne v0, p0, :cond_c

    .line 91
    const-class v0, Lsun/misc/Cleaner;

    monitor-exit v0

    const/4 v0, 0x0

    .line 108
    :goto_b
    return v0

    .line 94
    :cond_c
    :try_start_c
    sget-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    if-ne v0, p0, :cond_18

    .line 95
    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    if-eqz v0, :cond_35

    .line 96
    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    sput-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    .line 100
    :cond_18
    :goto_18
    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    if-eqz v0, :cond_22

    .line 101
    iget-object v0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    iget-object v1, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    iput-object v1, v0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    .line 102
    :cond_22
    iget-object v0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    if-eqz v0, :cond_2c

    .line 103
    iget-object v0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    iget-object v1, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    iput-object v1, v0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    .line 106
    :cond_2c
    iput-object p0, p0, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    .line 107
    iput-object p0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_3a

    .line 108
    const-class v0, Lsun/misc/Cleaner;

    monitor-exit v0

    const/4 v0, 0x1

    goto :goto_b

    .line 98
    :cond_35
    :try_start_35
    iget-object v0, p0, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    sput-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_3a

    goto :goto_18

    .line 89
    :catchall_3a
    move-exception v0

    const-class v1, Lsun/misc/Cleaner;

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clean()V
    .registers 3

    .line 139
    invoke-static {p0}, Lsun/misc/Cleaner;->remove(Lsun/misc/Cleaner;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 153
    :goto_6
    return-void

    .line 142
    :cond_7
    :try_start_7
    iget-object v0, p0, Lsun/misc/Cleaner;->thunk:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_6

    .line 143
    :catchall_d
    move-exception v0

    .line 144
    new-instance v1, Lsun/misc/Cleaner$1;

    invoke-direct {v1, p0, v0}, Lsun/misc/Cleaner$1;-><init>(Lsun/misc/Cleaner;Ljava/lang/Throwable;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    goto :goto_6
.end method
