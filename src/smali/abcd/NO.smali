.class public Labcd/NO;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Ljava/math/BigInteger;


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Labcd/NO;->j6:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()Labcd/TO;
    .registers 7

    iget v0, p0, Labcd/NO;->DW:I

    iget v1, p0, Labcd/NO;->FH:I

    iget-object v2, p0, Labcd/NO;->Hw:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2}, Labcd/OO;->j6(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v3, v0, v2

    new-instance v0, Labcd/TO;

    iget-object v2, p0, Labcd/NO;->Hw:Ljava/security/SecureRandom;

    invoke-static {v1, v3, v2}, Labcd/OO;->j6(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v4, Labcd/NO;->j6:Ljava/math/BigInteger;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Labcd/TO;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Labcd/WO;)V

    return-object v0
.end method

.method public j6(IILjava/security/SecureRandom;)V
    .registers 4

    iput p1, p0, Labcd/NO;->DW:I

    iput p2, p0, Labcd/NO;->FH:I

    iput-object p3, p0, Labcd/NO;->Hw:Ljava/security/SecureRandom;

    return-void
.end method
