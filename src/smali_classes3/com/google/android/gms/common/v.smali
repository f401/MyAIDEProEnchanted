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

    new-instance v0, Lcom/google/android/gms/common/v;

    const/4 v1, 0x1

    const/4 v2, 0x0

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
            "Ljava/util/concurrent/Callable<",
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
    .registers 6

    if-eqz p3, :cond_5

    const-string p3, "debug cert rejected"

    goto :goto_7

    :cond_5
    const-string p3, "not whitelisted"

    :goto_7
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p0, v0, p3

    const-string p0, "SHA-1"

    invoke-static {p0}, Lcom/google/android/gms/common/util/a;->j6(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/common/o;->v5()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/j;->j6([B)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const/4 p0, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x4

    const-string p1, "12451009.false"

    aput-object p1, v0, p0

    const-string p0, "%s: pkg=%s, sha1=%s, atk=%s, ver=%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final FH()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/common/v;->DW:Z

    if-nez v0, :cond_22

    const/4 v0, 0x3

    const-string v1, "GoogleCertificatesRslt"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/common/v;->Hw:Ljava/lang/Throwable;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/common/v;->j6()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/v;->Hw:Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/gms/common/v;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/v;->FH:Ljava/lang/String;

    return-object v0
.end method
