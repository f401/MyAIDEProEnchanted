.class Lcom/google/android/gms/common/v;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Lcom/google/android/gms/common/v;


# instance fields
.field final DW:Z

.field private final FH:Ljava/lang/String;

.field private final Hw:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/common/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/common/v;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/common/v;->j6:Lcom/google/android/gms/common/v;

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/v;->DW:Z

    iput-object p2, p0, Lcom/google/android/gms/common/v;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/v;->Hw:Ljava/lang/Throwable;

    return-void
.end method

.method static DW()Lcom/google/android/gms/common/v;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/v;->j6:Lcom/google/android/gms/common/v;

    return-object v0
.end method

.method static j6(Ljava/lang/String;)Lcom/google/android/gms/common/v;
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/v;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/common/v;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static j6(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/v;
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/common/v;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/common/v;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/common/v;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/x;-><init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/common/w;)V

    return-object v0
.end method

.method static j6(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)Ljava/lang/String;
    .registers 9

    if-eqz p3, :cond_0

    const-string v0, "debug cert rejected"

    :goto_0
    const-string v1, "%s: pkg=%s, sha1=%s, atk=%s, ver=%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const/4 v0, 0x2

    const-string v3, "SHA-1"

    invoke-static {v3}, Lcom/google/android/gms/common/util/a;->j6(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/common/o;->v5()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/util/j;->j6([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "12451009.false"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "not whitelisted"

    goto :goto_0
.end method


# virtual methods
.method final FH()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/common/v;->DW:Z

    if-nez v0, :cond_0

    const-string v0, "GoogleCertificatesRslt"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/v;->Hw:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    const-string v0, "GoogleCertificatesRslt"

    invoke-virtual {p0}, Lcom/google/android/gms/common/v;->j6()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/v;->Hw:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "GoogleCertificatesRslt"

    invoke-virtual {p0}, Lcom/google/android/gms/common/v;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/v;->FH:Ljava/lang/String;

    return-object v0
.end method
