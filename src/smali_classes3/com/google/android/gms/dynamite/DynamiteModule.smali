.class public final Lcom/google/android/gms/dynamite/DynamiteModule;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;,
        Lcom/google/android/gms/dynamite/DynamiteModule$a;,
        Lcom/google/android/gms/dynamite/DynamiteModule$b;,
        Lcom/google/android/gms/dynamite/DynamiteModule$b$a;,
        Lcom/google/android/gms/dynamite/DynamiteModule$b$b;,
        Lcom/google/android/gms/dynamite/DynamiteModule$c;,
        Lcom/google/android/gms/dynamite/DynamiteModule$d;
    }
.end annotation


# static fields
.field private static DW:Lcom/google/android/gms/dynamite/i; = null

.field public static final EQ:Lcom/google/android/gms/dynamite/DynamiteModule$b;

.field private static FH:Lcom/google/android/gms/dynamite/k; = null

.field private static Hw:Ljava/lang/String; = null

.field private static final J0:Lcom/google/android/gms/dynamite/DynamiteModule$b;

.field private static final VH:Lcom/google/android/gms/dynamite/DynamiteModule$b$a;

.field private static final Zo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/google/android/gms/dynamite/DynamiteModule$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final gn:Lcom/google/android/gms/dynamite/DynamiteModule$b;

.field private static j6:Ljava/lang/Boolean; = null

.field public static final tp:Lcom/google/android/gms/dynamite/DynamiteModule$b;

.field private static final u7:Lcom/google/android/gms/dynamite/DynamiteModule$b;

.field private static v5:I = -0x1

.field public static final we:Lcom/google/android/gms/dynamite/DynamiteModule$b;


# instance fields
.field private final J8:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->Zo:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/dynamite/a;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->VH:Lcom/google/android/gms/dynamite/DynamiteModule$b$a;

    new-instance v0, Lcom/google/android/gms/dynamite/b;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->gn:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    new-instance v0, Lcom/google/android/gms/dynamite/c;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->u7:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    new-instance v0, Lcom/google/android/gms/dynamite/d;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->tp:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    new-instance v0, Lcom/google/android/gms/dynamite/e;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->EQ:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    new-instance v0, Lcom/google/android/gms/dynamite/f;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->we:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    new-instance v0, Lcom/google/android/gms/dynamite/g;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->J0:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->J8:Landroid/content/Context;

    return-void
.end method

.method public static DW(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private static DW(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 8

    const-string v0, "DynamiteModule"

    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Landroid/content/Context;)Lcom/google/android/gms/dynamite/i;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    :try_start_a
    invoke-interface {v1}, Lcom/google/android/gms/dynamite/i;->Lz()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1a

    invoke-static {p0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p0

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/dynamite/i;->j6(Labcd/ox;Ljava/lang/String;Z)I

    move-result p0

    return p0

    :cond_1a
    const-string v3, "IDynamite loader version < 2, falling back to getModuleVersion2"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p0

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/dynamite/i;->DW(Labcd/ox;Ljava/lang/String;Z)I

    move-result p0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_27} :catch_28

    return p0

    :catch_28
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-string p2, "Failed to retrieve remote module version: "

    if-eqz p1, :cond_3e

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_43

    :cond_3e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_43
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static DW(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 9

    const-string v0, "Failed to load remote module."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Selected remote version of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", version >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamiteModule"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Landroid/content/Context;)Lcom/google/android/gms/dynamite/i;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_6d

    :try_start_31
    invoke-interface {v1}, Lcom/google/android/gms/dynamite/i;->Lz()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_41

    invoke-static {p0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p0

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/dynamite/i;->DW(Labcd/ox;Ljava/lang/String;I)Labcd/ox;

    move-result-object p0

    goto :goto_4e

    :cond_41
    const-string v4, "Dynamite loader version < 2, falling back to createModuleContext"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p0

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/dynamite/i;->j6(Labcd/ox;Ljava/lang/String;I)Labcd/ox;

    move-result-object p0
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_4e} :catch_66

    :goto_4e
    invoke-static {p0}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_60

    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-static {p0}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_60
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$a;

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$a;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/a;)V

    throw p0

    :catch_66
    move-exception p0

    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$a;

    invoke-direct {p1, v0, p0, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/a;)V

    throw p1

    :cond_6d
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$a;

    const-string p1, "Failed to create IDynamiteLoader."

    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$a;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/a;)V

    throw p0
.end method

.method private static DW()Ljava/lang/Boolean;
    .registers 2

    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0

    :try_start_3
    sget v0, Lcom/google/android/gms/dynamite/DynamiteModule;->v5:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catchall_13
    move-exception v0

    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_13

    throw v0
.end method

.method private static FH(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_9b
    .catchall {:try_start_1 .. :try_end_5} :catchall_98

    if-eqz p2, :cond_a

    const-string p0, "api_force_staging"

    goto :goto_c

    :cond_a
    const-string p0, "api"

    :goto_c
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x2a

    add-int/2addr p2, v2

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "content://com.google.android.gms.chimera/"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_40} :catch_9b
    .catchall {:try_start_c .. :try_end_40} :catchall_98

    if-eqz p0, :cond_87

    :try_start_42
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_87

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-lez p1, :cond_80

    const-class p2, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter p2
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_52} :catch_96
    .catchall {:try_start_42 .. :try_end_52} :catchall_ab

    const/4 p2, 0x2

    :try_start_53
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->Hw:Ljava/lang/String;

    const-string p2, "loaderVersion"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_67

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    sput p2, Lcom/google/android/gms/dynamite/DynamiteModule;->v5:I

    :cond_67
    const-class p2, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit p2
    :try_end_6a
    .catchall {:try_start_53 .. :try_end_6a} :catchall_7b

    :try_start_6a
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->Zo:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/dynamite/DynamiteModule$c;

    if-eqz p2, :cond_80

    iget-object v1, p2, Lcom/google/android/gms/dynamite/DynamiteModule$c;->j6:Landroid/database/Cursor;

    if-nez v1, :cond_80

    iput-object p0, p2, Lcom/google/android/gms/dynamite/DynamiteModule$c;->j6:Landroid/database/Cursor;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_7a} :catch_96
    .catchall {:try_start_6a .. :try_end_7a} :catchall_ab

    goto :goto_81

    :catchall_7b
    move-exception p1

    :try_start_7c
    const-class p2, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit p2
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_7b

    :try_start_7f
    throw p1
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_80} :catch_96
    .catchall {:try_start_7f .. :try_end_80} :catchall_ab

    :cond_80
    move-object v0, p0

    :goto_81
    if-eqz v0, :cond_86

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_86
    return p1

    :cond_87
    :try_start_87
    const-string p1, "DynamiteModule"

    const-string p2, "Failed to retrieve remote module version."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$a;

    const-string p2, "Failed to connect to dynamite module ContentResolver."

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$a;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/a;)V

    throw p1
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_96} :catch_96
    .catchall {:try_start_87 .. :try_end_96} :catchall_ab

    :catch_96
    move-exception p1

    goto :goto_9e

    :catchall_98
    move-exception p0

    move-object p1, p0

    goto :goto_ad

    :catch_9b
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    :goto_9e
    :try_start_9e
    instance-of p2, p1, Lcom/google/android/gms/dynamite/DynamiteModule$a;

    if-eqz p2, :cond_a3

    throw p1

    :cond_a3
    new-instance p2, Lcom/google/android/gms/dynamite/DynamiteModule$a;

    const-string v1, "V2 version check failed"

    invoke-direct {p2, v1, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/a;)V

    throw p2
    :try_end_ab
    .catchall {:try_start_9e .. :try_end_ab} :catchall_ab

    :catchall_ab
    move-exception p1

    move-object v0, p0

    :goto_ad
    if-eqz v0, :cond_b2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_b2
    throw p1
.end method

.method private static FH(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Selected local version of "

    if-eqz v0, :cond_11

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_16

    :cond_11
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    const-string v0, "DynamiteModule"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private static FH(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Selected remote version of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "DynamiteModule"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0

    :try_start_2b
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->FH:Lcom/google/android/gms/dynamite/k;

    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_6b

    const/4 v1, 0x0

    if-eqz v0, :cond_63

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->Zo:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/dynamite/DynamiteModule$c;

    if-eqz v2, :cond_5b

    iget-object v3, v2, Lcom/google/android/gms/dynamite/DynamiteModule$c;->j6:Landroid/database/Cursor;

    if-eqz v3, :cond_5b

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iget-object v2, v2, Lcom/google/android/gms/dynamite/DynamiteModule$c;->j6:Landroid/database/Cursor;

    invoke-static {p0, p1, p2, v2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Landroid/content/Context;Ljava/lang/String;ILandroid/database/Cursor;Lcom/google/android/gms/dynamite/k;)Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_53

    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_53
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$a;

    const-string p1, "Failed to get module context"

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$a;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/a;)V

    throw p0

    :cond_5b
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$a;

    const-string p1, "No result cursor"

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$a;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/a;)V

    throw p0

    :cond_63
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$a;

    const-string p1, "DynamiteLoaderV2 was not cached."

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$a;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/a;)V

    throw p0

    :catchall_6b
    move-exception p0

    :try_start_6c
    const-class p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_6b

    throw p0
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;)I
    .registers 7

    const-string v0, "DynamiteModule"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3d

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "com.google.android.gms.dynamite.descriptors."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ModuleDescriptor"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "MODULE_ID"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "MODULE_VERSION"

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_83

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x33

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Module descriptor id \'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' didn\'t match expected id \'"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_83
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_87
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_87} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_87} :catch_88

    return p0

    :catch_88
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-string v2, "Failed to load module descriptor class: "

    if-eqz p1, :cond_9e

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a3

    :cond_9e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_a3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb

    :catch_a7
    move-exception p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Local module descriptor class for "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cb
    return v1
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 10

    :try_start_0
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_f8

    :try_start_3
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->j6:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_f3

    if-nez v0, :cond_bc

    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sClassLoader"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    monitor-enter v0
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_20} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_20} :catch_91
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_20} :catch_8f
    .catchall {:try_start_7 .. :try_end_20} :catchall_f3

    const/4 v2, 0x0

    :try_start_21
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassLoader;

    if-eqz v3, :cond_3a

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v3, v1, :cond_32

    :goto_2f
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_8c

    goto :goto_89

    :cond_32
    :try_start_32
    invoke-static {v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Ljava/lang/ClassLoader;)V
    :try_end_35
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_32 .. :try_end_35} :catch_36
    .catchall {:try_start_32 .. :try_end_35} :catchall_8c

    goto :goto_37

    :catch_36
    move-exception v1

    :goto_37
    :try_start_37
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_89

    :cond_3a
    const-string v3, "com.google.android.gms"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_37 .. :try_end_51} :catchall_8c

    goto :goto_2f

    :cond_52
    :try_start_52
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->FH(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    sget-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->Hw:Ljava/lang/String;

    if-eqz v4, :cond_7b

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_61

    goto :goto_7b

    :cond_61
    new-instance v4, Lcom/google/android/gms/dynamite/h;

    sget-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->Hw:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/dynamite/h;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->j6:Ljava/lang/Boolean;
    :try_end_76
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_52 .. :try_end_76} :catch_80
    .catchall {:try_start_52 .. :try_end_76} :catchall_8c

    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_8c

    :try_start_77
    const-class p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit p1
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_f3

    return v3

    :cond_7b
    :goto_7b
    :try_start_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_8c

    :try_start_7c
    const-class p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit p1
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_f3

    return v3

    :catch_80
    move-exception v3

    :try_start_81
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2f

    :goto_89
    monitor-exit v0

    move-object v0, v1

    goto :goto_ba

    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_81 .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw v1
    :try_end_8f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8e .. :try_end_8f} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_8e .. :try_end_8f} :catch_91
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8e .. :try_end_8f} :catch_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_f3

    :catch_8f
    move-exception v0

    goto :goto_94

    :catch_91
    move-exception v0

    goto :goto_94

    :catch_93
    move-exception v0

    :goto_94
    :try_start_94
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1e

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to load module via V2: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DynamiteModule"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_ba
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->j6:Ljava/lang/Boolean;

    :cond_bc
    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_94 .. :try_end_bf} :catchall_f3

    :try_start_bf
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_c3
    .catchall {:try_start_bf .. :try_end_c3} :catchall_f8

    if-eqz v0, :cond_ee

    :try_start_c5
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->FH(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0
    :try_end_c9
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_c5 .. :try_end_c9} :catch_ca
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_f8

    return p0

    :catch_ca
    move-exception p1

    :try_start_cb
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_e0

    const-string p2, "Failed to retrieve remote module version: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_e7

    :cond_e0
    new-instance p1, Ljava/lang/String;

    const-string p2, "Failed to retrieve remote module version: "

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_e7
    const-string p2, "DynamiteModule"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_ee
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->DW(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0
    :try_end_f2
    .catchall {:try_start_cb .. :try_end_f2} :catchall_f8

    return p0

    :catchall_f3
    move-exception p1

    :try_start_f4
    const-class p2, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit p2
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_f3

    :try_start_f7
    throw p1
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f8

    :catchall_f8
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/g;->j6(Landroid/content/Context;Ljava/lang/Throwable;)Z

    goto :goto_fe

    :goto_fd
    throw p1

    :goto_fe
    goto :goto_fd
.end method

.method private static j6(Landroid/content/Context;Ljava/lang/String;ILandroid/database/Cursor;Lcom/google/android/gms/dynamite/k;)Landroid/content/Context;
    .registers 8

    const-string v0, "DynamiteModule"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    invoke-static {}, Lcom/google/android/gms/dynamite/DynamiteModule;->DW()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p0

    invoke-static {p3}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p3

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/google/android/gms/dynamite/k;->DW(Labcd/ox;Ljava/lang/String;ILabcd/ox;)Labcd/ox;

    move-result-object p0

    goto :goto_33

    :cond_22
    const-string v2, "Dynamite loader version < 2, falling back to loadModule2"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p0

    invoke-static {p3}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p3

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/google/android/gms/dynamite/k;->j6(Labcd/ox;Ljava/lang/String;ILabcd/ox;)Labcd/ox;

    move-result-object p0

    :goto_33
    invoke-static {p0}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_39} :catch_3a

    return-object p0

    :catch_3a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-string p2, "Failed to load DynamiteLoader: "

    if-eqz p1, :cond_50

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_55

    :cond_50
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_55
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static j6(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 15

    const-string v0, "DynamiteModule"

    const-string v1, ":"

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->Zo:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/dynamite/DynamiteModule$c;

    new-instance v4, Lcom/google/android/gms/dynamite/DynamiteModule$c;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$c;-><init>(Lcom/google/android/gms/dynamite/a;)V

    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :try_start_15
    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->VH:Lcom/google/android/gms/dynamite/DynamiteModule$b$a;

    invoke-interface {p1, p0, p2, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$b;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$b$a;)Lcom/google/android/gms/dynamite/DynamiteModule$b$b;

    move-result-object v6

    iget v7, v6, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    iget v8, v6, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->DW:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x44

    add-int/2addr v9, v10

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Considering local module "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and remote module "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v6, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->FH:I

    if-eqz v1, :cond_fe

    iget v1, v6, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->FH:I

    const/4 v7, -0x1

    if-ne v1, v7, :cond_67

    iget v1, v6, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    if-eqz v1, :cond_fe

    :cond_67
    iget v1, v6, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->FH:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_70

    iget v1, v6, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->DW:I

    if-eqz v1, :cond_fe

    :cond_70
    iget v1, v6, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->FH:I

    if-ne v1, v7, :cond_83

    invoke-static {p0, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->FH(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0
    :try_end_78
    .catchall {:try_start_15 .. :try_end_78} :catchall_128

    iget-object p1, v4, Lcom/google/android/gms/dynamite/DynamiteModule$c;->j6:Landroid/database/Cursor;

    if-eqz p1, :cond_7f

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7f
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p0

    :cond_83
    :try_start_83
    iget v1, v6, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->FH:I
    :try_end_85
    .catchall {:try_start_83 .. :try_end_85} :catchall_128

    if-ne v1, v8, :cond_e3

    :try_start_87
    iget v1, v6, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->DW:I

    invoke-static {p0, p2, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->j6(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0
    :try_end_8d
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_87 .. :try_end_8d} :catch_98
    .catchall {:try_start_87 .. :try_end_8d} :catchall_128

    iget-object p1, v4, Lcom/google/android/gms/dynamite/DynamiteModule$c;->j6:Landroid/database/Cursor;

    if-eqz p1, :cond_94

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_94
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p0

    :catch_98
    move-exception v1

    :try_start_99
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_a5
    .catchall {:try_start_99 .. :try_end_a5} :catchall_128

    const-string v9, "Failed to load remote module: "

    if-eqz v8, :cond_ae

    :try_start_a9
    invoke-virtual {v9, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_b3

    :cond_ae
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_b3
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v6, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    if-eqz v0, :cond_db

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$d;

    iget v2, v6, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    const/4 v6, 0x0

    invoke-direct {v0, v2, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$d;-><init>(II)V

    invoke-interface {p1, p0, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$b;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$b$a;)Lcom/google/android/gms/dynamite/DynamiteModule$b$b;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->FH:I

    if-ne p1, v7, :cond_db

    invoke-static {p0, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->FH(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0
    :try_end_ce
    .catchall {:try_start_a9 .. :try_end_ce} :catchall_128

    iget-object p1, v4, Lcom/google/android/gms/dynamite/DynamiteModule$c;->j6:Landroid/database/Cursor;

    if-eqz p1, :cond_d5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_d5
    sget-object p1, Lcom/google/android/gms/dynamite/DynamiteModule;->Zo:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p0

    :cond_db
    :try_start_db
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$a;

    const-string p1, "Remote load failed. No local fallback found."

    invoke-direct {p0, p1, v1, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/a;)V

    throw p0

    :cond_e3
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$a;

    iget p1, v6, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->FH:I

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "VersionPolicy returned invalid code:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$a;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/a;)V

    throw p0

    :cond_fe
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$a;

    iget p1, v6, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->j6:I

    iget p2, v6, Lcom/google/android/gms/dynamite/DynamiteModule$b$b;->DW:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No acceptable module found. Local version is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and remote version is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$a;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/a;)V

    throw p0
    :try_end_128
    .catchall {:try_start_db .. :try_end_128} :catchall_128

    :catchall_128
    move-exception p0

    iget-object p1, v4, Lcom/google/android/gms/dynamite/DynamiteModule$c;->j6:Landroid/database/Cursor;

    if-eqz p1, :cond_130

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_130
    sget-object p1, Lcom/google/android/gms/dynamite/DynamiteModule;->Zo:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw p0
.end method

.method private static j6(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 5

    :try_start_0
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_28

    :try_start_3
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->j6:Ljava/lang/Boolean;

    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_23

    if-eqz v0, :cond_1a

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->FH(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    return-object p0

    :cond_15
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->DW(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    return-object p0

    :cond_1a
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$a;

    const-string p2, "Failed to determine which loading route to use."

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$a;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/a;)V

    throw p1
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_28

    :catchall_23
    move-exception p1

    :try_start_24
    const-class p2, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit p2
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_23

    :try_start_27
    throw p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/g;->j6(Landroid/content/Context;Ljava/lang/Throwable;)Z

    throw p1
.end method

.method private static j6(Landroid/content/Context;)Lcom/google/android/gms/dynamite/i;
    .registers 4

    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0

    :try_start_3
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->DW:Lcom/google/android/gms/dynamite/i;

    if-eqz v0, :cond_b

    const-class p0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit p0

    return-object v0

    :cond_b
    invoke-static {}, Lcom/google/android/gms/common/c;->j6()Lcom/google/android/gms/common/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/c;->DW(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const-class p0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_75

    return-object v1

    :cond_1a
    :try_start_1a
    const-string v0, "com.google.android.gms"

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_35

    move-object v0, v1

    goto :goto_47

    :cond_35
    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoader"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/dynamite/i;

    if-eqz v2, :cond_42

    check-cast v0, Lcom/google/android/gms/dynamite/i;

    goto :goto_47

    :cond_42
    new-instance v0, Lcom/google/android/gms/dynamite/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamite/j;-><init>(Landroid/os/IBinder;)V

    :goto_47
    if-eqz v0, :cond_71

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->DW:Lcom/google/android/gms/dynamite/i;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4b} :catch_4f
    .catchall {:try_start_1a .. :try_end_4b} :catchall_75

    :try_start_4b
    const-class p0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit p0

    return-object v0

    :catch_4f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "Failed to load IDynamiteLoader from GmsCore: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6c

    :cond_65
    new-instance p0, Ljava/lang/String;

    const-string v0, "Failed to load IDynamiteLoader from GmsCore: "

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6c
    const-string v0, "DynamiteModule"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    const-class p0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit p0

    return-object v1

    :catchall_75
    move-exception p0

    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_4b .. :try_end_79} :catchall_75

    throw p0
.end method

.method private static j6(Ljava/lang/ClassLoader;)V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_1a

    move-object v1, v0

    goto :goto_2c

    :cond_1a
    const-string v1, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/dynamite/k;

    if-eqz v2, :cond_27

    check-cast v1, Lcom/google/android/gms/dynamite/k;

    goto :goto_2c

    :cond_27
    new-instance v1, Lcom/google/android/gms/dynamite/l;

    invoke-direct {v1, p0}, Lcom/google/android/gms/dynamite/l;-><init>(Landroid/os/IBinder;)V

    :goto_2c
    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->FH:Lcom/google/android/gms/dynamite/k;
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2e} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2e} :catch_35
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_2e} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2e} :catch_31
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception p0

    goto :goto_38

    :catch_31
    move-exception p0

    goto :goto_38

    :catch_33
    move-exception p0

    goto :goto_38

    :catch_35
    move-exception p0

    goto :goto_38

    :catch_37
    move-exception p0

    :goto_38
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$a;

    const-string v2, "Failed to instantiate dynamite loader"

    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/a;)V

    throw v1
.end method


# virtual methods
.method public final j6()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->J8:Landroid/content/Context;

    return-object v0
.end method

.method public final j6(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->J8:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_15
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_10} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    goto :goto_16

    :catch_13
    move-exception v0

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Failed to instantiate module class: "

    if-eqz v1, :cond_27

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2c

    :cond_27
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2c
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/a;)V

    throw v1
.end method
