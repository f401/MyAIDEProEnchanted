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

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v3

    sput-object v0, Labcd/dM;->j6:[B

    new-array v0, v2, [B

    sput-object v0, Labcd/dM;->DW:[B

    new-instance v0, Labcd/oL;

    invoke-direct {v0, v3}, Labcd/oL;-><init>(Z)V

    sput-object v0, Labcd/dM;->FH:Labcd/oL;

    new-instance v0, Labcd/oL;

    invoke-direct {v0, v2}, Labcd/oL;-><init>(Z)V

    sput-object v0, Labcd/dM;->Hw:Labcd/oL;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Labcd/EL;-><init>()V

    if-eqz p1, :cond_0

    sget-object v0, Labcd/dM;->j6:[B

    :goto_0
    iput-object v0, p0, Labcd/dM;->v5:[B

    return-void

    :cond_0
    sget-object v0, Labcd/dM;->DW:[B

    goto :goto_0
.end method

.method constructor <init>([B)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Labcd/EL;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    aget-byte v0, p1, v2

    if-nez v0, :cond_0

    sget-object v0, Labcd/dM;->DW:[B

    iput-object v0, p0, Labcd/dM;->v5:[B

    :goto_0
    return-void

    :cond_0
    aget-byte v0, p1, v2

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    sget-object v0, Labcd/dM;->j6:[B

    iput-object v0, p0, Labcd/dM;->v5:[B

    goto :goto_0

    :cond_1
    invoke-static {p1}, Labcd/OP;->j6([B)[B

    move-result-object v0

    iput-object v0, p0, Labcd/dM;->v5:[B

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static DW([B)Labcd/oL;
    .registers 4

    const/4 v2, 0x0

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    aget-byte v0, p0, v2

    if-nez v0, :cond_0

    sget-object v0, Labcd/dM;->FH:Labcd/oL;

    :goto_0
    return-object v0

    :cond_0
    aget-byte v0, p0, v2

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    sget-object v0, Labcd/dM;->Hw:Labcd/oL;

    goto :goto_0

    :cond_1
    new-instance v0, Labcd/oL;

    invoke-direct {v0, p0}, Labcd/oL;-><init>([B)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j6(Ljava/lang/Object;)Labcd/oL;
    .registers 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Labcd/oL;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Labcd/oL;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p0, Labcd/dM;

    if-eqz v0, :cond_3

    check-cast p0, Labcd/dM;

    invoke-virtual {p0}, Labcd/dM;->u7()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Labcd/dM;->Hw:Labcd/oL;

    goto :goto_0

    :cond_2
    sget-object v0, Labcd/dM;->FH:Labcd/oL;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal object in getInstance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static j6(Z)Labcd/oL;
    .registers 2

    if-eqz p0, :cond_0

    sget-object v0, Labcd/dM;->Hw:Labcd/oL;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Labcd/dM;->FH:Labcd/oL;

    goto :goto_0
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
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Labcd/dM;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Labcd/dM;->v5:[B

    aget-byte v1, v1, v0

    check-cast p1, Labcd/dM;

    iget-object v2, p1, Labcd/dM;->v5:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Labcd/dM;->v5:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FALSE"

    goto :goto_0
.end method

.method public u7()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/dM;->v5:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method v5()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method
