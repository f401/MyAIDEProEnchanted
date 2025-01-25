.class public abstract Labcd/HL;
.super Labcd/EL;


# instance fields
.field private DW:Z

.field private j6:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/EL;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/HL;->DW:Z

    return-void
.end method

.method protected constructor <init>(Labcd/qL;)V
    .registers 4

    invoke-direct {p0}, Labcd/EL;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    const/4 v1, 0x0

    iput-boolean v1, p0, Labcd/HL;->DW:Z

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Labcd/rL;Z)V
    .registers 6

    invoke-direct {p0}, Labcd/EL;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/HL;->DW:Z

    :goto_d
    invoke-virtual {p1}, Labcd/rL;->j6()I

    move-result v1

    if-ne v0, v1, :cond_19

    if-eqz p2, :cond_18

    invoke-virtual {p0}, Labcd/HL;->EQ()V

    :cond_18
    return-void

    :cond_19
    iget-object v1, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Labcd/rL;->j6(I)Labcd/qL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method protected constructor <init>([Labcd/qL;Z)V
    .registers 6

    invoke-direct {p0}, Labcd/EL;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/HL;->DW:Z

    :goto_d
    array-length v1, p1

    if-ne v0, v1, :cond_16

    if-eqz p2, :cond_15

    invoke-virtual {p0}, Labcd/HL;->EQ()V

    :cond_15
    return-void

    :cond_16
    iget-object v1, p0, Labcd/HL;->j6:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public static j6(Labcd/LL;Z)Labcd/HL;
    .registers 3

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Labcd/LL;->we()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object p0

    check-cast p0, Labcd/HL;

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "object implicit - explicit expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    invoke-virtual {p0}, Labcd/LL;->we()Z

    move-result p1

    if-eqz p1, :cond_35

    instance-of p1, p0, Labcd/YL;

    if-eqz p1, :cond_2b

    new-instance p1, Labcd/WL;

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object p0

    invoke-direct {p1, p0}, Labcd/WL;-><init>(Labcd/qL;)V

    return-object p1

    :cond_2b
    new-instance p1, Labcd/FM;

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object p0

    invoke-direct {p1, p0}, Labcd/FM;-><init>(Labcd/qL;)V

    return-object p1

    :cond_35
    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object p1

    instance-of p1, p1, Labcd/HL;

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object p0

    check-cast p0, Labcd/HL;

    return-object p0

    :cond_44
    new-instance p1, Labcd/rL;

    invoke-direct {p1}, Labcd/rL;-><init>()V

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object p1

    instance-of p1, p1, Labcd/FL;

    if-eqz p1, :cond_6f

    invoke-virtual {p0}, Labcd/LL;->u7()Labcd/EL;

    move-result-object p1

    check-cast p1, Labcd/FL;

    instance-of p0, p0, Labcd/YL;

    if-eqz p0, :cond_65

    new-instance p0, Labcd/WL;

    invoke-virtual {p1}, Labcd/FL;->EQ()[Labcd/qL;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/WL;-><init>([Labcd/qL;)V

    return-object p0

    :cond_65
    new-instance p0, Labcd/FM;

    invoke-virtual {p1}, Labcd/FL;->EQ()[Labcd/qL;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/FM;-><init>([Labcd/qL;)V

    return-object p0

    :cond_6f
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

.method public static j6(Ljava/lang/Object;)Labcd/HL;
    .registers 3

    if-eqz p0, :cond_6c

    instance-of v0, p0, Labcd/HL;

    if-eqz v0, :cond_7

    goto :goto_6c

    :cond_7
    instance-of v0, p0, Labcd/IL;

    if-eqz v0, :cond_16

    check-cast p0, Labcd/IL;

    invoke-interface {p0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p0

    invoke-static {p0}, Labcd/HL;->j6(Ljava/lang/Object;)Labcd/HL;

    move-result-object p0

    return-object p0

    :cond_16
    instance-of v0, p0, [B

    if-eqz v0, :cond_3e

    :try_start_1a
    check-cast p0, [B

    invoke-static {p0}, Labcd/EL;->j6([B)Labcd/EL;

    move-result-object p0

    invoke-static {p0}, Labcd/HL;->j6(Ljava/lang/Object;)Labcd/HL;

    move-result-object p0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to construct set from byte[]: "

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

    instance-of v1, v0, Labcd/HL;

    if-eqz v1, :cond_50

    check-cast v0, Labcd/HL;

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
    check-cast p0, Labcd/HL;

    return-object p0
.end method

.method private j6(Ljava/util/Enumeration;)Labcd/qL;
    .registers 2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/qL;

    if-nez p1, :cond_a

    sget-object p1, Labcd/mM;->j6:Labcd/mM;

    :cond_a
    return-object p1
.end method

.method private j6([B[B)Z
    .registers 9

    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    const/4 v3, 0x1

    if-ne v2, v0, :cond_10

    array-length p1, p1

    if-ne v0, p1, :cond_f

    return v3

    :cond_f
    return v1

    :cond_10
    aget-byte v4, p1, v2

    aget-byte v5, p2, v2

    if-eq v4, v5, :cond_1e

    and-int/lit16 p1, v4, 0xff

    and-int/lit16 p2, v5, 0xff

    if-ge p1, p2, :cond_1d

    return v3

    :cond_1d
    return v1

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method private j6(Labcd/qL;)[B
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Labcd/CL;

    invoke-direct {v1, v0}, Labcd/CL;-><init>(Ljava/io/OutputStream;)V

    :try_start_a
    invoke-virtual {v1, p1}, Labcd/CL;->j6(Labcd/qL;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_12

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot encode object added to SET"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected EQ()V
    .registers 10

    iget-boolean v0, p0, Labcd/HL;->DW:Z

    if-nez v0, :cond_5c

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/HL;->DW:Z

    iget-object v1, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v0, :cond_5c

    iget-object v1, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    :goto_17
    if-nez v2, :cond_1a

    goto :goto_5c

    :cond_1a
    iget-object v2, p0, Labcd/HL;->j6:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/qL;

    invoke-direct {p0, v2}, Labcd/HL;->j6(Labcd/qL;)[B

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_29
    if-ne v5, v1, :cond_2e

    move v1, v3

    move v2, v4

    goto :goto_17

    :cond_2e
    iget-object v6, p0, Labcd/HL;->j6:Ljava/util/Vector;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/qL;

    invoke-direct {p0, v6}, Labcd/HL;->j6(Labcd/qL;)[B

    move-result-object v6

    invoke-direct {p0, v2, v6}, Labcd/HL;->j6([B[B)Z

    move-result v8

    if-eqz v8, :cond_44

    move-object v2, v6

    goto :goto_5a

    :cond_44
    iget-object v3, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v3, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v4, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v4, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v4, v3, v7}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v3, v5

    const/4 v4, 0x1

    :goto_5a
    move v5, v7

    goto :goto_29

    :cond_5c
    :goto_5c
    return-void
.end method

.method VH()Labcd/EL;
    .registers 4

    iget-boolean v0, p0, Labcd/HL;->DW:Z

    if-eqz v0, :cond_e

    new-instance v0, Labcd/vM;

    invoke-direct {v0}, Labcd/vM;-><init>()V

    iget-object v1, p0, Labcd/HL;->j6:Ljava/util/Vector;

    iput-object v1, v0, Labcd/HL;->j6:Ljava/util/Vector;

    return-object v0

    :cond_e
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_14
    iget-object v2, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ne v1, v2, :cond_27

    new-instance v1, Labcd/vM;

    invoke-direct {v1}, Labcd/vM;-><init>()V

    iput-object v0, v1, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v1}, Labcd/HL;->EQ()V

    return-object v1

    :cond_27
    iget-object v2, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method Zo()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method gn()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/FM;

    invoke-direct {v0}, Labcd/FM;-><init>()V

    iget-object v1, p0, Labcd/HL;->j6:Ljava/util/Vector;

    iput-object v1, v0, Labcd/HL;->j6:Ljava/util/Vector;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p0}, Labcd/HL;->tp()I

    move-result v1

    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    :cond_f
    mul-int/lit8 v1, v1, 0x11

    invoke-direct {p0, v0}, Labcd/HL;->j6(Ljava/util/Enumeration;)Labcd/qL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_8
.end method

.method public j6(I)Labcd/qL;
    .registers 3

    iget-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/qL;

    return-object p1
.end method

.method j6(Labcd/EL;)Z
    .registers 6

    instance-of v0, p1, Labcd/HL;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Labcd/HL;

    invoke-virtual {p0}, Labcd/HL;->tp()I

    move-result v0

    invoke-virtual {p1}, Labcd/HL;->tp()I

    move-result v2

    if-eq v0, v2, :cond_13

    return v1

    :cond_13
    invoke-virtual {p0}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Labcd/HL;->u7()Ljava/util/Enumeration;

    move-result-object p1

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_23

    const/4 p1, 0x1

    return p1

    :cond_23
    invoke-direct {p0, v0}, Labcd/HL;->j6(Ljava/util/Enumeration;)Labcd/qL;

    move-result-object v2

    invoke-direct {p0, p1}, Labcd/HL;->j6(Ljava/util/Enumeration;)Labcd/qL;

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

    iget-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()I
    .registers 2

    iget-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public u7()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Labcd/HL;->j6:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
