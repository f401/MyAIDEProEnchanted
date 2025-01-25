.class public final Lcom/google/android/gms/internal/ads/Ps;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_WRAPPER::",
        "Lcom/google/android/gms/internal/ads/Qs<",
        "TT_ENGINE;>;T_ENGINE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field public static final FH:Lcom/google/android/gms/internal/ads/Ps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Ps<",
            "Lcom/google/android/gms/internal/ads/Rs;",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field public static final Hw:Lcom/google/android/gms/internal/ads/Ps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Ps<",
            "Lcom/google/android/gms/internal/ads/Vs;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field

.field public static final VH:Lcom/google/android/gms/internal/ads/Ps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Ps<",
            "Lcom/google/android/gms/internal/ads/Ss;",
            "Ljavax/crypto/KeyAgreement;",
            ">;"
        }
    .end annotation
.end field

.field private static final Zo:Lcom/google/android/gms/internal/ads/Ps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Ps<",
            "Lcom/google/android/gms/internal/ads/Ws;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field public static final gn:Lcom/google/android/gms/internal/ads/Ps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Ps<",
            "Lcom/google/android/gms/internal/ads/Us;",
            "Ljava/security/KeyPairGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private static final j6:Ljava/util/logging/Logger;

.field public static final u7:Lcom/google/android/gms/internal/ads/Ps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Ps<",
            "Lcom/google/android/gms/internal/ads/Ts;",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final v5:Lcom/google/android/gms/internal/ads/Ps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Ps<",
            "Lcom/google/android/gms/internal/ads/Xs;",
            "Ljava/security/Signature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private EQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private tp:Lcom/google/android/gms/internal/ads/Qs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_WRAPPER;"
        }
    .end annotation
.end field

.field private we:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-class v0, Lcom/google/android/gms/internal/ads/Ps;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Ps;->j6:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/ads/gt;->j6()Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_19
    const/4 v3, 0x2

    if-ge v2, v3, :cond_50

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "GmsCore_OpenSSL"

    aput-object v4, v3, v1

    const-string v4, "AndroidOpenSSL"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_33
    sget-object v4, Lcom/google/android/gms/internal/ads/Ps;->j6:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    const-string v3, "Provider %s not available"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.google.crypto.tink.subtle.EngineFactory"

    const-string v7, "toProviderList"

    invoke-virtual {v4, v6, v5, v7, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_4b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_50
    sput-object v0, Lcom/google/android/gms/internal/ads/Ps;->DW:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/ads/Ps;

    new-instance v1, Lcom/google/android/gms/internal/ads/Rs;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/Rs;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Ps;-><init>(Lcom/google/android/gms/internal/ads/Qs;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ps;->FH:Lcom/google/android/gms/internal/ads/Ps;

    new-instance v0, Lcom/google/android/gms/internal/ads/Ps;

    new-instance v1, Lcom/google/android/gms/internal/ads/Vs;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/Vs;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Ps;-><init>(Lcom/google/android/gms/internal/ads/Qs;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ps;->Hw:Lcom/google/android/gms/internal/ads/Ps;

    new-instance v0, Lcom/google/android/gms/internal/ads/Ps;

    new-instance v1, Lcom/google/android/gms/internal/ads/Xs;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/Xs;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Ps;-><init>(Lcom/google/android/gms/internal/ads/Qs;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ps;->v5:Lcom/google/android/gms/internal/ads/Ps;

    new-instance v0, Lcom/google/android/gms/internal/ads/Ps;

    new-instance v1, Lcom/google/android/gms/internal/ads/Ws;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/Ws;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Ps;-><init>(Lcom/google/android/gms/internal/ads/Qs;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ps;->Zo:Lcom/google/android/gms/internal/ads/Ps;

    new-instance v0, Lcom/google/android/gms/internal/ads/Ps;

    new-instance v1, Lcom/google/android/gms/internal/ads/Ss;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/Ss;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Ps;-><init>(Lcom/google/android/gms/internal/ads/Qs;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ps;->VH:Lcom/google/android/gms/internal/ads/Ps;

    new-instance v0, Lcom/google/android/gms/internal/ads/Ps;

    new-instance v1, Lcom/google/android/gms/internal/ads/Us;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/Us;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Ps;-><init>(Lcom/google/android/gms/internal/ads/Qs;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ps;->gn:Lcom/google/android/gms/internal/ads/Ps;

    new-instance v0, Lcom/google/android/gms/internal/ads/Ps;

    new-instance v1, Lcom/google/android/gms/internal/ads/Ts;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/Ts;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Ps;-><init>(Lcom/google/android/gms/internal/ads/Qs;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ps;->u7:Lcom/google/android/gms/internal/ads/Ps;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/Qs;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ps;->tp:Lcom/google/android/gms/internal/ads/Qs;

    sget-object p1, Lcom/google/android/gms/internal/ads/Ps;->DW:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ps;->EQ:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ps;->we:Z

    return-void
.end method

.method private final j6(Ljava/lang/String;Ljava/security/Provider;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ps;->tp:Lcom/google/android/gms/internal/ads/Qs;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Qs;->j6(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p1, 0x1

    return p1

    :catch_7
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/it;->j6(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final j6(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT_ENGINE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ps;->EQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/Ps;->j6(Ljava/lang/String;Ljava/security/Provider;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ps;->tp:Lcom/google/android/gms/internal/ads/Qs;

    :goto_1a
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Qs;->j6(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ps;->we:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ps;->tp:Lcom/google/android/gms/internal/ads/Qs;

    const/4 v1, 0x0

    goto :goto_1a

    :cond_27
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "No good Provider found."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_30

    :goto_2f
    throw p1

    :goto_30
    goto :goto_2f
.end method
