.class public abstract Labcd/FL;
.super Labcd/EL;


# instance fields
.field protected j6:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/EL;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/FL;->j6:Ljava/util/Vector;

    return-void
.end method

.method protected constructor <init>(Labcd/qL;)V
    .registers 3

    invoke-direct {p0}, Labcd/EL;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/FL;->j6:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Labcd/rL;)V
    .registers 5

    invoke-direct {p0}, Labcd/EL;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/FL;->j6:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p1}, Labcd/rL;->j6()I

    move-result v1

    if-ne v0, v1, :cond_12

    return-void

    :cond_12
    iget-object v1, p0, Labcd/FL;->j6:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Labcd/rL;->j6(I)Labcd/qL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method protected constructor <init>([Labcd/qL;)V
    .registers 5

    invoke-direct {p0}, Labcd/EL;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/FL;->j6:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_b
    array-length v1, p1

    if-ne v0, v1, :cond_f

    return-void

    :cond_f
    iget-object v1, p0, Labcd/FL;->j6:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public static j6(Labcd/LL;Z)Labcd/FL;
    .registers 3

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Labcd/LL;->we()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object p0

    invoke-virtual {p0}, Labcd/EL;->DW()Labcd/EL;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p0

    return-object p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "object implicit - explicit expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    invoke-virtual {p0}, Labcd/LL;->we()Z

    move-result p1

    if-eqz p1, :cond_3a

    instance-of p1, p0, Labcd/YL;

    if-eqz p1, :cond_30

    new-instance p1, Labcd/UL;

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object p0

    invoke-direct {p1, p0}, Labcd/UL;-><init>(Labcd/qL;)V

    return-object p1

    :cond_30
    new-instance p1, Labcd/EM;

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object p0

    invoke-direct {p1, p0}, Labcd/EM;-><init>(Labcd/qL;)V

    return-object p1

    :cond_3a
    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object p1

    instance-of p1, p1, Labcd/FL;

    if-eqz p1, :cond_49

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object p0

    check-cast p0, Labcd/FL;

    return-object p0

    :cond_49
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unknown object in getInstance: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j6(Ljava/lang/Object;)Labcd/FL;
    .registers 3

    if-eqz p0, :cond_6c

    instance-of v0, p0, Labcd/FL;

    if-eqz v0, :cond_7

    goto :goto_6c

    :cond_7
    instance-of v0, p0, Labcd/GL;

    if-eqz v0, :cond_16

    check-cast p0, Labcd/GL;

    invoke-interface {p0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p0

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p0

    return-object p0

    :cond_16
    instance-of v0, p0, [B

    if-eqz v0, :cond_3e

    :try_start_1a
    check-cast p0, [B

    invoke-static {p0}, Labcd/EL;->j6([B)Labcd/EL;

    move-result-object p0

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to construct sequence from byte[]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    instance-of v0, p0, Labcd/qL;

    if-eqz v0, :cond_50

    move-object v0, p0

    check-cast v0, Labcd/qL;

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    instance-of v1, v0, Labcd/FL;

    if-eqz v1, :cond_50

    check-cast v0, Labcd/FL;

    return-object v0

    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown object in getInstance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6c
    :goto_6c
    check-cast p0, Labcd/FL;

    return-object p0
.end method

.method private j6(Ljava/util/Enumeration;)Labcd/qL;
    .registers 2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/qL;

    return-object p1
.end method


# virtual methods
.method public EQ()[Labcd/qL;
    .registers 4

    invoke-virtual {p0}, Labcd/FL;->tp()I

    move-result v0

    new-array v0, v0, [Labcd/qL;

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p0}, Labcd/FL;->tp()I

    move-result v2

    if-ne v1, v2, :cond_e

    return-object v0

    :cond_e
    invoke-virtual {p0, v1}, Labcd/FL;->j6(I)Labcd/qL;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method VH()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/tM;

    invoke-direct {v0}, Labcd/tM;-><init>()V

    iget-object v1, p0, Labcd/FL;->j6:Ljava/util/Vector;

    iput-object v1, v0, Labcd/FL;->j6:Ljava/util/Vector;

    return-object v0
.end method

.method Zo()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method gn()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/EM;

    invoke-direct {v0}, Labcd/EM;-><init>()V

    iget-object v1, p0, Labcd/FL;->j6:Ljava/util/Vector;

    iput-object v1, v0, Labcd/FL;->j6:Ljava/util/Vector;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p0}, Labcd/FL;->tp()I

    move-result v1

    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    :cond_f
    mul-int/lit8 v1, v1, 0x11

    invoke-direct {p0, v0}, Labcd/FL;->j6(Ljava/util/Enumeration;)Labcd/qL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_8
.end method

.method public j6(I)Labcd/qL;
    .registers 3

    iget-object v0, p0, Labcd/FL;->j6:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/qL;

    return-object p1
.end method

.method j6(Labcd/EL;)Z
    .registers 6

    instance-of v0, p1, Labcd/FL;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Labcd/FL;

    invoke-virtual {p0}, Labcd/FL;->tp()I

    move-result v0

    invoke-virtual {p1}, Labcd/FL;->tp()I

    move-result v2

    if-eq v0, v2, :cond_13

    return v1

    :cond_13
    invoke-virtual {p0}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object p1

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_23

    const/4 p1, 0x1

    return p1

    :cond_23
    invoke-direct {p0, v0}, Labcd/FL;->j6(Ljava/util/Enumeration;)Labcd/qL;

    move-result-object v2

    invoke-direct {p0, p1}, Labcd/FL;->j6(Ljava/util/Enumeration;)Labcd/qL;

    move-result-object v3

    invoke-interface {v2}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v2

    invoke-interface {v3}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v3

    if-eq v2, v3, :cond_1b

    invoke-virtual {v2, v3}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_1b

    :cond_3c
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/FL;->j6:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()I
    .registers 2

    iget-object v0, p0, Labcd/FL;->j6:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public u7()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Labcd/FL;->j6:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
