.class public final Lcom/google/android/gms/internal/ads/Ps;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_WRAPPER::",
        "Lcom/google/android/gms/internal/ads/Qs",
        "<TT_ENGINE;>;T_ENGINE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field public static final FH:Lcom/google/android/gms/internal/ads/Ps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Ps",
            "<",
            "Lcom/google/android/gms/internal/ads/Rs;",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field public static final Hw:Lcom/google/android/gms/internal/ads/Ps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Ps",
            "<",
            "Lcom/google/android/gms/internal/ads/Vs;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field

.field public static final VH:Lcom/google/android/gms/internal/ads/Ps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Ps",
            "<",
            "Lcom/google/android/gms/internal/ads/Ss;",
            "Ljavax/crypto/KeyAgreement;",
            ">;"
        }
    .end annotation
.end field

.field private static final Zo:Lcom/google/android/gms/internal/ads/Ps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Ps",
            "<",
            "Lcom/google/android/gms/internal/ads/Ws;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field public static final gn:Lcom/google/android/gms/internal/ads/Ps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Ps",
            "<",
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
            "Lcom/google/android/gms/internal/ads/Ps",
            "<",
            "Lcom/google/android/gms/internal/ads/Ts;",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final v5:Lcom/google/android/gms/internal/ads/Ps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Ps",
            "<",
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
            "Ljava/util/List",
            "<",
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
    .registers 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    const-class v0, Lcom/google/android/gms/internal/ads/Ps;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Ps;->j6:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/ads/gt;->j6()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    if-ge v0, v11, :cond_1

    new-array v3, v11, [Ljava/lang/String;

    const-string v4, "GmsCore_OpenSSL"

    aput-object v4, v3, v1

    const-string v4, "AndroidOpenSSL"

    aput-object v4, v3, v10

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/google/android/gms/internal/ads/Ps;->j6:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v6, "com.google.crypto.tink.subtle.EngineFactory"

    const-string v7, "toProviderList"

    const-string v8, "Provider %s not available"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v3, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v6, v7, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sput-object v2, Lcom/google/android/gms/internal/ads/Ps;->DW:Ljava/util/List;

    :goto_2
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

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ps;->DW:Ljava/util/List;

    goto :goto_2
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/Qs;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ps;->tp:Lcom/google/android/gms/internal/ads/Qs;

    sget-object v0, Lcom/google/android/gms/internal/ads/Ps;->DW:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ps;->EQ:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ps;->we:Z

    return-void
.end method

.method private final j6(Ljava/lang/String;Ljava/security/Provider;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ps;->tp:Lcom/google/android/gms/internal/ads/Qs;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Qs;->j6(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/it;->j6(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
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

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ps;->j6(Ljava/lang/String;Ljava/security/Provider;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ps;->tp:Lcom/google/android/gms/internal/ads/Qs;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/Qs;->j6(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ps;->we:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ps;->tp:Lcom/google/android/gms/internal/ads/Qs;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Qs;->j6(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "No good Provider found."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
