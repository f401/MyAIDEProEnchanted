.class public Lcom/google/android/gms/auth/api/signin/internal/b;
.super Ljava/lang/Object;


# static fields
.field private static DW:Lcom/google/android/gms/auth/api/signin/internal/b;

.field private static final j6:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private final FH:Ljava/util/concurrent/locks/Lock;

.field private final Hw:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/b;->j6:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/b;->FH:Ljava/util/concurrent/locks/Lock;

    const-string v0, "com.google.android.gms.signin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/b;->Hw:Landroid/content/SharedPreferences;

    return-void
.end method

.method private final DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/b;->FH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/b;->Hw:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/b;->FH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_12
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/b;->FH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private final j6(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "googleSignInAccount"

    invoke-static {v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/b;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/b;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    :try_start_14
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->j6(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_18} :catch_19

    return-object p1

    :catch_19
    move-exception p1

    :cond_1a
    return-object v1
.end method

.method public static j6(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/b;
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/b;->j6:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_8
    sget-object v1, Lcom/google/android/gms/auth/api/signin/internal/b;->DW:Lcom/google/android/gms/auth/api/signin/internal/b;

    if-nez v1, :cond_17

    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/auth/api/signin/internal/b;->DW:Lcom/google/android/gms/auth/api/signin/internal/b;

    :cond_17
    sget-object p0, Lcom/google/android/gms/auth/api/signin/internal/b;->DW:Lcom/google/android/gms/auth/api/signin/internal/b;
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_1d
    move-exception p0

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/b;->j6:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public j6()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .registers 2

    const-string v0, "defaultGoogleSignInAccount"

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/b;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/b;->j6(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    return-object v0
.end method
