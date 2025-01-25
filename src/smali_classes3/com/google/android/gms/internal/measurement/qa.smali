.class public Lcom/google/android/gms/internal/measurement/qa;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Landroid/net/Uri;

.field private static EQ:Ljava/lang/Object;

.field public static final FH:Ljava/util/regex/Pattern;

.field public static final Hw:Ljava/util/regex/Pattern;

.field private static J0:[Ljava/lang/String;

.field private static final VH:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static Zo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final gn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final j6:Landroid/net/Uri;

.field private static final tp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final u7:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final v5:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static we:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "content://com.google.android.gsf.gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/qa;->j6:Landroid/net/Uri;

    const-string v0, "content://com.google.android.gsf.gservices/prefix"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/qa;->DW:Landroid/net/Uri;

    const-string v0, "^(1|true|t|on|yes|y)$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/qa;->FH:Ljava/util/regex/Pattern;

    const-string v0, "^(0|false|f|off|no|n)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/qa;->Hw:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/qa;->v5:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/qa;->VH:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/qa;->gn:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/qa;->u7:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/qa;->tp:Ljava/util/HashMap;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/measurement/qa;->J0:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const-class p2, Lcom/google/android/gms/internal/measurement/qa;

    monitor-enter p2

    :try_start_3
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/qa;->j6(Landroid/content/ContentResolver;)V

    sget-object p2, Lcom/google/android/gms/internal/measurement/qa;->EQ:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/measurement/qa;->Zo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    sget-object p0, Lcom/google/android/gms/internal/measurement/qa;->Zo:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1c

    move-object v1, p0

    :cond_1c
    const-class p0, Lcom/google/android/gms/internal/measurement/qa;

    monitor-exit p0

    return-object v1

    :cond_20
    sget-object v0, Lcom/google/android/gms/internal/measurement/qa;->J0:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_25
    const/4 v5, 0x1

    if-ge v4, v2, :cond_67

    aget-object v6, v0, v4

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_64

    sget-boolean p2, Lcom/google/android/gms/internal/measurement/qa;->we:Z

    if-eqz p2, :cond_3c

    sget-object p2, Lcom/google/android/gms/internal/measurement/qa;->Zo:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_60

    :cond_3c
    sget-object p2, Lcom/google/android/gms/internal/measurement/qa;->J0:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/measurement/qa;->Zo:Ljava/util/HashMap;

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/measurement/qa;->j6(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sput-boolean v5, Lcom/google/android/gms/internal/measurement/qa;->we:Z

    sget-object p0, Lcom/google/android/gms/internal/measurement/qa;->Zo:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    sget-object p0, Lcom/google/android/gms/internal/measurement/qa;->Zo:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_5c

    move-object v1, p0

    :cond_5c
    const-class p0, Lcom/google/android/gms/internal/measurement/qa;

    monitor-exit p0

    return-object v1

    :cond_60
    const-class p0, Lcom/google/android/gms/internal/measurement/qa;

    monitor-exit p0

    return-object v1

    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_67
    const-class v0, Lcom/google/android/gms/internal/measurement/qa;

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_af

    sget-object v7, Lcom/google/android/gms/internal/measurement/qa;->j6:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v10, v5, [Ljava/lang/String;

    aput-object p1, v10, v3

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_80

    if-eqz p0, :cond_7f

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7f
    return-object v1

    :cond_80
    :try_start_80
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_8f

    invoke-static {p2, p1, v1}, Lcom/google/android/gms/internal/measurement/qa;->j6(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_a8

    if-eqz p0, :cond_8e

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_8e
    return-object v1

    :cond_8f
    :try_start_8f
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    move-object v0, v1

    :cond_9c
    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/measurement/qa;->j6(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_8f .. :try_end_9f} :catchall_a8

    if-eqz v0, :cond_a2

    move-object v1, v0

    :cond_a2
    if-eqz p0, :cond_a7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_a7
    return-object v1

    :catchall_a8
    move-exception p1

    if-eqz p0, :cond_ae

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_ae
    throw p1

    :catchall_af
    move-exception p0

    :try_start_b0
    const-class p1, Lcom/google/android/gms/internal/measurement/qa;

    monitor-exit p1
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_af

    goto :goto_b5

    :goto_b4
    throw p0

    :goto_b5
    goto :goto_b4
.end method

.method private static varargs j6(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/google/android/gms/internal/measurement/qa;->DW:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    if-nez p0, :cond_13

    return-object p1

    :cond_13
    :goto_13
    :try_start_13
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_2b

    goto :goto_13

    :cond_27
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_2b
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_31

    :goto_30
    throw p1

    :goto_31
    goto :goto_30
.end method

.method static synthetic j6()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/qa;->v5:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static j6(Landroid/content/ContentResolver;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/measurement/qa;->Zo:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_27

    sget-object v0, Lcom/google/android/gms/internal/measurement/qa;->v5:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/qa;->Zo:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/qa;->EQ:Ljava/lang/Object;

    sput-boolean v1, Lcom/google/android/gms/internal/measurement/qa;->we:Z

    sget-object v0, Lcom/google/android/gms/internal/measurement/qa;->j6:Landroid/net/Uri;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ra;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/ra;-><init>(Landroid/os/Handler;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_27
    sget-object p0, Lcom/google/android/gms/internal/measurement/qa;->v5:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-eqz p0, :cond_51

    sget-object p0, Lcom/google/android/gms/internal/measurement/qa;->Zo:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    sget-object p0, Lcom/google/android/gms/internal/measurement/qa;->VH:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    sget-object p0, Lcom/google/android/gms/internal/measurement/qa;->gn:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    sget-object p0, Lcom/google/android/gms/internal/measurement/qa;->u7:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    sget-object p0, Lcom/google/android/gms/internal/measurement/qa;->tp:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/google/android/gms/internal/measurement/qa;->EQ:Ljava/lang/Object;

    sput-boolean v1, Lcom/google/android/gms/internal/measurement/qa;->we:Z

    :cond_51
    return-void
.end method

.method private static j6(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/google/android/gms/internal/measurement/qa;

    monitor-enter v0

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/qa;->EQ:Ljava/lang/Object;

    if-ne p0, v0, :cond_c

    sget-object p0, Lcom/google/android/gms/internal/measurement/qa;->Zo:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-class p0, Lcom/google/android/gms/internal/measurement/qa;

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p0

    const-class p1, Lcom/google/android/gms/internal/measurement/qa;

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_10

    throw p0
.end method
