.class public Labcd/dM;
.super Labcd/EL;


# static fields
.field private static final DW:[B

.field public static final FH:Labcd/oL;

.field public static final Hw:Labcd/oL;

.field private static final j6:[B


# instance fields
.field private v5:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    sput-object v1, Labcd/dM;->j6:[B

    new-array v1, v0, [B

    sput-object v1, Labcd/dM;->DW:[B

    new-instance v1, Labcd/oL;

    invoke-direct {v1, v3}, Labcd/oL;-><init>(Z)V

    sput-object v1, Labcd/dM;->FH:Labcd/oL;

    new-instance v1, Labcd/oL;

    invoke-direct {v1, v0}, Labcd/oL;-><init>(Z)V

    sput-object v1, Labcd/dM;->Hw:Labcd/oL;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Labcd/EL;-><init>()V

    if-eqz p1, :cond_8

    sget-object p1, Labcd/dM;->j6:[B

    goto :goto_a

    :cond_8
    sget-object p1, Labcd/dM;->DW:[B

    :goto_a
    iput-object p1, p0, Labcd/dM;->v5:[B

    return-void
.end method

.method constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Labcd/EL;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    if-nez v0, :cond_11

    sget-object p1, Labcd/dM;->DW:[B

    iput-object p1, p0, Labcd/dM;->v5:[B

    goto :goto_20

    :cond_11
    const/16 v1, 0xff

    if-ne v0, v1, :cond_1a

    sget-object p1, Labcd/dM;->j6:[B

    iput-object p1, p0, Labcd/dM;->v5:[B

    goto :goto_20

    :cond_1a
    invoke-static {p1}, Labcd/OP;->j6([B)[B

    move-result-object p1

    iput-object p1, p0, Labcd/dM;->v5:[B

    :goto_20
    return-void

    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byte value should have 1 byte in it"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static DW([B)Labcd/oL;
    .registers 3

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-nez v0, :cond_c

    sget-object p0, Labcd/dM;->FH:Labcd/oL;

    return-object p0

    :cond_c
    const/16 v1, 0xff

    if-ne v0, v1, :cond_13

    sget-object p0, Labcd/dM;->Hw:Labcd/oL;

    return-object p0

    :cond_13
    new-instance v0, Labcd/oL;

    invoke-direct {v0, p0}, Labcd/oL;-><init>([B)V

    return-object v0

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "byte value should have 1 byte in it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j6(Ljava/lang/Object;)Labcd/oL;
    .registers 3

    if-eqz p0, :cond_35

    instance-of v0, p0, Labcd/oL;

    if-eqz v0, :cond_7

    goto :goto_35

    :cond_7
    instance-of v0, p0, Labcd/dM;

    if-eqz v0, :cond_19

    check-cast p0, Labcd/dM;

    invoke-virtual {p0}, Labcd/dM;->u7()Z

    move-result p0

    if-eqz p0, :cond_16

    sget-object p0, Labcd/dM;->Hw:Labcd/oL;

    goto :goto_18

    :cond_16
    sget-object p0, Labcd/dM;->FH:Labcd/oL;

    :goto_18
    return-object p0

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal object in getInstance: "

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

    :cond_35
    :goto_35
    check-cast p0, Labcd/oL;

    return-object p0
.end method

.method public static j6(Z)Labcd/oL;
    .registers 1

    if-eqz p0, :cond_5

    sget-object p0, Labcd/dM;->Hw:Labcd/oL;

    goto :goto_7

    :cond_5
    sget-object p0, Labcd/dM;->FH:Labcd/oL;

    :goto_7
    return-object p0
.end method


# virtual methods
.method Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Labcd/dM;->v5:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method j6(Labcd/CL;)V
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Labcd/dM;->v5:[B

    invoke-virtual {p1, v0, v1}, Labcd/CL;->j6(I[B)V

    return-void
.end method

.method protected j6(Labcd/EL;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    instance-of v1, p1, Labcd/dM;

    if-nez v1, :cond_8

    goto :goto_16

    :cond_8
    iget-object v1, p0, Labcd/dM;->v5:[B

    aget-byte v1, v1, v0

    check-cast p1, Labcd/dM;

    iget-object p1, p1, Labcd/dM;->v5:[B

    aget-byte p1, p1, v0

    if-ne v1, p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    :goto_16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Labcd/dM;->v5:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_a

    const-string v0, "TRUE"

    goto :goto_c

    :cond_a
    const-string v0, "FALSE"

    :goto_c
    return-object v0
.end method

.method public u7()Z
    .registers 3

    iget-object v0, p0, Labcd/dM;->v5:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    return v1
.end method

.method v5()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method
