.class public abstract Lsun1/security/util/AbstractAlgorithmConstraints;
.super Ljava/lang/Object;


# instance fields
.field protected final decomposer:Lsun1/security/util/AlgorithmDecomposer;


# direct methods
.method protected constructor <init>(Lsun1/security/util/AlgorithmDecomposer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun1/security/util/AbstractAlgorithmConstraints;->decomposer:Lsun1/security/util/AlgorithmDecomposer;

    return-void
.end method

.method static checkAlgorithm([Ljava/lang/String;Ljava/lang/String;Lsun1/security/util/AlgorithmDecomposer;)Z
    .registers 10

    const/4 v2, 0x0

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x0

    array-length v4, p0

    move v3, v2

    :goto_c
    if-lt v3, v4, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    aget-object v5, p0, v3

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1a
    :goto_1a
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_c

    :cond_1e
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    if-nez v0, :cond_4b

    invoke-virtual {p2, p1}, Lsun1/security/util/AlgorithmDecomposer;->decompose(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    :goto_2b
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v2

    goto :goto_f

    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No algorithm name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    move-object v1, v0

    goto :goto_2b

    :cond_4d
    move v0, v2

    goto :goto_f

    :cond_4f
    move-object v0, v1

    goto :goto_1a
.end method

.method static getAlgorithms(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/16 v4, 0x22

    const/4 v1, 0x0

    new-instance v0, Lsun1/security/util/AbstractAlgorithmConstraints$1;

    invoke-direct {v0, p0}, Lsun1/security/util/AbstractAlgorithmConstraints$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_55

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_3a

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3a
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_41
    array-length v3, v2

    if-lt v0, v3, :cond_4a

    move-object v0, v2

    :goto_45
    if-nez v0, :cond_49

    new-array v0, v1, [Ljava/lang/String;

    :cond_49
    return-object v0

    :cond_4a
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_55
    const/4 v0, 0x0

    goto :goto_45
.end method
