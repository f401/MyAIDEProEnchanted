.class public Labcd/SL;
.super Labcd/AL;


# instance fields
.field private DW:[Labcd/AL;


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/AL;-><init>([B)V

    return-void
.end method

.method public constructor <init>([Labcd/AL;)V
    .registers 3

    invoke-static {p1}, Labcd/SL;->j6([Labcd/AL;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/AL;-><init>([B)V

    iput-object p1, p0, Labcd/SL;->DW:[Labcd/AL;

    return-void
.end method

.method private EQ()Ljava/util/Vector;
    .registers 8

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Labcd/AL;->j6:[B

    array-length v4, v3

    if-lt v2, v4, :cond_d

    return-object v0

    :cond_d
    add-int/lit16 v4, v2, 0x3e8

    array-length v5, v3

    if-le v4, v5, :cond_14

    array-length v3, v3

    goto :goto_15

    :cond_14
    move v3, v4

    :goto_15
    sub-int/2addr v3, v2

    new-array v5, v3, [B

    iget-object v6, p0, Labcd/AL;->j6:[B

    invoke-static {v6, v2, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Labcd/pM;

    invoke-direct {v2, v5}, Labcd/pM;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v2, v4

    goto :goto_7
.end method

.method private static j6([Labcd/AL;)[B
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ne v1, v2, :cond_e

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_e
    :try_start_e
    aget-object v2, p0, v1

    check-cast v2, Labcd/pM;

    invoke-virtual {v2}, Labcd/AL;->u7()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_19} :catch_35
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_1c

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :catch_1c
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception converting octets "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_35
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " found in input should only contain DEROctetString"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_59

    :goto_58
    throw p0

    :goto_59
    goto :goto_58
.end method

.method static synthetic j6(Labcd/SL;)[Labcd/AL;
    .registers 1

    iget-object p0, p0, Labcd/SL;->DW:[Labcd/AL;

    return-object p0
.end method


# virtual methods
.method Zo()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public j6(Labcd/CL;)V
    .registers 4

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Labcd/CL;->j6(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Labcd/CL;->j6(I)V

    invoke-virtual {p0}, Labcd/SL;->tp()Ljava/util/Enumeration;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Labcd/CL;->j6(I)V

    invoke-virtual {p1, v0}, Labcd/CL;->j6(I)V

    return-void

    :cond_1c
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/qL;

    invoke-virtual {p1, v1}, Labcd/CL;->j6(Labcd/qL;)V

    goto :goto_e
.end method

.method public tp()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Labcd/SL;->DW:[Labcd/AL;

    if-nez v0, :cond_d

    invoke-direct {p0}, Labcd/SL;->EQ()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Labcd/RL;

    invoke-direct {v0, p0}, Labcd/RL;-><init>(Labcd/SL;)V

    return-object v0
.end method

.method public u7()[B
    .registers 2

    iget-object v0, p0, Labcd/AL;->j6:[B

    return-object v0
.end method

.method v5()I
    .registers 4

    invoke-virtual {p0}, Labcd/SL;->tp()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_10

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    return v1

    :cond_10
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/qL;

    invoke-interface {v2}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v2

    invoke-virtual {v2}, Labcd/EL;->v5()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5
.end method
