.class public Lsun1/security/util/DisabledAlgorithmConstraints;
.super Lsun1/security/util/AbstractAlgorithmConstraints;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun1/security/util/DisabledAlgorithmConstraints$Constraint;,
        Lsun1/security/util/DisabledAlgorithmConstraints$Constraints;,
        Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;,
        Lsun1/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;,
        Lsun1/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;
    }
.end annotation


# static fields
.field private static final debug:Lsun1/security/util/Debug;


# instance fields
.field private final algorithmConstraints:Lsun1/security/util/DisabledAlgorithmConstraints$Constraints;

.field private final disabledAlgorithms:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "certpath"

    invoke-static {v0}, Lsun1/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun1/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun1/security/util/DisabledAlgorithmConstraints;->debug:Lsun1/security/util/Debug;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lsun1/security/util/AlgorithmDecomposer;

    invoke-direct {v0}, Lsun1/security/util/AlgorithmDecomposer;-><init>()V

    invoke-direct {p0, p1, v0}, Lsun1/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;Lsun1/security/util/AlgorithmDecomposer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lsun1/security/util/AlgorithmDecomposer;)V
    .registers 5

    invoke-direct {p0, p2}, Lsun1/security/util/AbstractAlgorithmConstraints;-><init>(Lsun1/security/util/AlgorithmDecomposer;)V

    invoke-static {p1}, Lsun1/security/util/DisabledAlgorithmConstraints;->getAlgorithms(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints;->disabledAlgorithms:[Ljava/lang/String;

    new-instance v1, Lsun1/security/util/DisabledAlgorithmConstraints$Constraints;

    invoke-direct {v1, v0}, Lsun1/security/util/DisabledAlgorithmConstraints$Constraints;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lsun1/security/util/DisabledAlgorithmConstraints;->algorithmConstraints:Lsun1/security/util/DisabledAlgorithmConstraints$Constraints;

    return-void
.end method

.method static synthetic access$0()Lsun1/security/util/Debug;
    .registers 1

    sget-object v0, Lsun1/security/util/DisabledAlgorithmConstraints;->debug:Lsun1/security/util/Debug;

    return-object v0
.end method

.method private checkConstraints(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lsun1/security/util/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    if-eqz p3, :cond_24

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1, p2, p4}, Lsun1/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    invoke-interface {p3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lsun1/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints;->algorithmConstraints:Lsun1/security/util/DisabledAlgorithmConstraints$Constraints;

    invoke-virtual {v0, p3}, Lsun1/security/util/DisabledAlgorithmConstraints$Constraints;->permits(Ljava/security/Key;)Z

    move-result v0

    goto :goto_11

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lsun1/security/util/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lsun1/security/util/DisabledAlgorithmConstraints;->disabledAlgorithms:[Ljava/lang/String;

    iget-object v1, p0, Lsun1/security/util/DisabledAlgorithmConstraints;->decomposer:Lsun1/security/util/AlgorithmDecomposer;

    invoke-static {v0, p2, v1}, Lsun1/security/util/DisabledAlgorithmConstraints;->checkAlgorithm([Ljava/lang/String;Ljava/lang/String;Lsun1/security/util/AlgorithmDecomposer;)Z

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cryptographic primitive specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final permits(Ljava/util/Set;Ljava/security/Key;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lsun1/security/util/CryptoPrimitive;",
            ">;",
            "Ljava/security/Key;",
            ")Z"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lsun1/security/util/DisabledAlgorithmConstraints;->checkConstraints(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    return v0
.end method
