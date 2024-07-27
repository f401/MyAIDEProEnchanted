.class final Lcom/google/firebase/iid/Y;
.super Ljava/lang/Object;


# instance fields
.field private final DW:J

.field private final j6:Ljava/security/KeyPair;


# direct methods
.method constructor <init>(Ljava/security/KeyPair;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/Y;->j6:Ljava/security/KeyPair;

    iput-wide p2, p0, Lcom/google/firebase/iid/Y;->DW:J

    return-void
.end method

.method private final DW()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/Y;->j6:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic DW(Lcom/google/firebase/iid/Y;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/firebase/iid/Y;->FH()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic FH(Lcom/google/firebase/iid/Y;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/firebase/iid/Y;->DW:J

    return-wide v0
.end method

.method private final FH()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/Y;->j6:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Lcom/google/firebase/iid/Y;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/firebase/iid/Y;->DW()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/firebase/iid/Y;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/firebase/iid/Y;

    iget-wide v2, p0, Lcom/google/firebase/iid/Y;->DW:J

    iget-wide v4, p1, Lcom/google/firebase/iid/Y;->DW:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/iid/Y;->j6:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    iget-object v2, p1, Lcom/google/firebase/iid/Y;->j6:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/iid/Y;->j6:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    iget-object v2, p1, Lcom/google/firebase/iid/Y;->j6:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/firebase/iid/Y;->j6:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/firebase/iid/Y;->j6:Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/firebase/iid/Y;->DW:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->j6([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final j6()Ljava/security/KeyPair;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/Y;->j6:Ljava/security/KeyPair;

    return-object v0
.end method
