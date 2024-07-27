.class public final Lcom/google/android/gms/internal/ads/bt;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ct;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ct;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bt;->j6:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private static DW()Ljava/security/SecureRandom;
    .registers 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    return-object v0
.end method

.method static synthetic j6()Ljava/security/SecureRandom;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/bt;->DW()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method public static j6(I)[B
    .registers 3

    new-array v1, p0, [B

    sget-object v0, Lcom/google/android/gms/internal/ads/bt;->j6:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method
