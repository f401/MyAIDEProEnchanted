.class public final Labcd/jp;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/Fp;

.field private final EQ:Labcd/cp;

.field private final FH:Labcd/Fp;

.field private final Hw:Labcd/Fp;

.field private final J0:Labcd/Fp;

.field private final J8:Labcd/sp;

.field private QX:I

.field private final VH:Labcd/Qp;

.field private final Ws:[Labcd/Kp;

.field private XL:I

.field private final Zo:Labcd/Op;

.field private final gn:Labcd/Jp;

.field private j6:Labcd/Fn;

.field private final tp:Labcd/Cp;

.field private final u7:Labcd/qp;

.field private final v5:Labcd/Fp;

.field private final we:Labcd/Fp;


# direct methods
.method public constructor <init>(Labcd/Fn;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/jp;->j6:Labcd/Fn;

    new-instance v0, Labcd/sp;

    invoke-direct {v0, p0}, Labcd/sp;-><init>(Labcd/jp;)V

    iput-object v0, p0, Labcd/jp;->J8:Labcd/sp;

    new-instance v0, Labcd/Fp;

    sget-object v1, Labcd/Fp$a;->j6:Labcd/Fp$a;

    invoke-direct {v0, v5, p0, v4, v1}, Labcd/Fp;-><init>(Ljava/lang/String;Labcd/jp;ILabcd/Fp$a;)V

    iput-object v0, p0, Labcd/jp;->FH:Labcd/Fp;

    new-instance v0, Labcd/Fp;

    const-string v1, "word_data"

    sget-object v2, Labcd/Fp$a;->DW:Labcd/Fp$a;

    invoke-direct {v0, v1, p0, v4, v2}, Labcd/Fp;-><init>(Ljava/lang/String;Labcd/jp;ILabcd/Fp$a;)V

    iput-object v0, p0, Labcd/jp;->DW:Labcd/Fp;

    new-instance v0, Labcd/Fp;

    const-string v1, "string_data"

    sget-object v2, Labcd/Fp$a;->FH:Labcd/Fp$a;

    invoke-direct {v0, v1, p0, v3, v2}, Labcd/Fp;-><init>(Ljava/lang/String;Labcd/jp;ILabcd/Fp$a;)V

    iput-object v0, p0, Labcd/jp;->v5:Labcd/Fp;

    new-instance v0, Labcd/Fp;

    sget-object v1, Labcd/Fp$a;->j6:Labcd/Fp$a;

    invoke-direct {v0, v5, p0, v3, v1}, Labcd/Fp;-><init>(Ljava/lang/String;Labcd/jp;ILabcd/Fp$a;)V

    iput-object v0, p0, Labcd/jp;->we:Labcd/Fp;

    new-instance v0, Labcd/Fp;

    const-string v1, "byte_data"

    sget-object v2, Labcd/Fp$a;->DW:Labcd/Fp$a;

    invoke-direct {v0, v1, p0, v3, v2}, Labcd/Fp;-><init>(Ljava/lang/String;Labcd/jp;ILabcd/Fp$a;)V

    iput-object v0, p0, Labcd/jp;->J0:Labcd/Fp;

    new-instance v0, Labcd/Op;

    invoke-direct {v0, p0}, Labcd/Op;-><init>(Labcd/jp;)V

    iput-object v0, p0, Labcd/jp;->Zo:Labcd/Op;

    new-instance v0, Labcd/Qp;

    invoke-direct {v0, p0}, Labcd/Qp;-><init>(Labcd/jp;)V

    iput-object v0, p0, Labcd/jp;->VH:Labcd/Qp;

    new-instance v0, Labcd/Jp;

    invoke-direct {v0, p0}, Labcd/Jp;-><init>(Labcd/jp;)V

    iput-object v0, p0, Labcd/jp;->gn:Labcd/Jp;

    new-instance v0, Labcd/qp;

    invoke-direct {v0, p0}, Labcd/qp;-><init>(Labcd/jp;)V

    iput-object v0, p0, Labcd/jp;->u7:Labcd/qp;

    new-instance v0, Labcd/Cp;

    invoke-direct {v0, p0}, Labcd/Cp;-><init>(Labcd/jp;)V

    iput-object v0, p0, Labcd/jp;->tp:Labcd/Cp;

    new-instance v0, Labcd/cp;

    invoke-direct {v0, p0}, Labcd/cp;-><init>(Labcd/jp;)V

    iput-object v0, p0, Labcd/jp;->EQ:Labcd/cp;

    new-instance v0, Labcd/Fp;

    const-string v1, "map"

    sget-object v2, Labcd/Fp$a;->j6:Labcd/Fp$a;

    invoke-direct {v0, v1, p0, v4, v2}, Labcd/Fp;-><init>(Ljava/lang/String;Labcd/jp;ILabcd/Fp$a;)V

    iput-object v0, p0, Labcd/jp;->Hw:Labcd/Fp;

    const/16 v0, 0xd

    new-array v0, v0, [Labcd/Kp;

    const/4 v1, 0x0

    iget-object v2, p0, Labcd/jp;->J8:Labcd/sp;

    aput-object v2, v0, v1

    iget-object v1, p0, Labcd/jp;->Zo:Labcd/Op;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Labcd/jp;->VH:Labcd/Qp;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Labcd/jp;->gn:Labcd/Jp;

    aput-object v2, v0, v1

    iget-object v1, p0, Labcd/jp;->u7:Labcd/qp;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    iget-object v2, p0, Labcd/jp;->tp:Labcd/Cp;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Labcd/jp;->EQ:Labcd/cp;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Labcd/jp;->DW:Labcd/Fp;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Labcd/jp;->FH:Labcd/Fp;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Labcd/jp;->v5:Labcd/Fp;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Labcd/jp;->J0:Labcd/Fp;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Labcd/jp;->we:Labcd/Fp;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Labcd/jp;->Hw:Labcd/Fp;

    aput-object v2, v0, v1

    iput-object v0, p0, Labcd/jp;->Ws:[Labcd/Kp;

    const/4 v0, -0x1

    iput v0, p0, Labcd/jp;->QX:I

    const/16 v0, 0x4f

    iput v0, p0, Labcd/jp;->XL:I

    return-void
.end method

.method private static DW([B)V
    .registers 5

    const/16 v3, 0x14

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    const/16 v1, 0x20

    array-length v2, p0

    add-int/lit8 v2, v2, -0x20

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    const/16 v1, 0xc

    const/16 v2, 0x14

    :try_start_1
    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v0

    if-ne v0, v3, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected digest write: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private j6(ZZ)Labcd/Qt;
    .registers 11

    const/4 v3, 0x0

    iget-object v1, p0, Labcd/jp;->EQ:Labcd/cp;

    invoke-virtual {v1}, Labcd/Kp;->v5()V

    iget-object v1, p0, Labcd/jp;->we:Labcd/Fp;

    invoke-virtual {v1}, Labcd/Kp;->v5()V

    iget-object v1, p0, Labcd/jp;->DW:Labcd/Fp;

    invoke-virtual {v1}, Labcd/Kp;->v5()V

    iget-object v1, p0, Labcd/jp;->J0:Labcd/Fp;

    invoke-virtual {v1}, Labcd/Kp;->v5()V

    iget-object v1, p0, Labcd/jp;->tp:Labcd/Cp;

    invoke-virtual {v1}, Labcd/Kp;->v5()V

    iget-object v1, p0, Labcd/jp;->u7:Labcd/qp;

    invoke-virtual {v1}, Labcd/Kp;->v5()V

    iget-object v1, p0, Labcd/jp;->gn:Labcd/Jp;

    invoke-virtual {v1}, Labcd/Kp;->v5()V

    iget-object v1, p0, Labcd/jp;->FH:Labcd/Fp;

    invoke-virtual {v1}, Labcd/Kp;->v5()V

    iget-object v1, p0, Labcd/jp;->VH:Labcd/Qp;

    invoke-virtual {v1}, Labcd/Kp;->v5()V

    iget-object v1, p0, Labcd/jp;->Zo:Labcd/Op;

    invoke-virtual {v1}, Labcd/Kp;->v5()V

    iget-object v1, p0, Labcd/jp;->v5:Labcd/Fp;

    invoke-virtual {v1}, Labcd/Kp;->v5()V

    iget-object v1, p0, Labcd/jp;->J8:Labcd/sp;

    invoke-virtual {v1}, Labcd/Kp;->v5()V

    iget-object v1, p0, Labcd/jp;->Ws:[Labcd/Kp;

    array-length v5, v1

    move v1, v3

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_3

    iget-object v2, p0, Labcd/jp;->Ws:[Labcd/Kp;

    aget-object v2, v2, v4

    invoke-virtual {v2, v1}, Labcd/Kp;->DW(I)I

    move-result v6

    if-lt v6, v1, :cond_2

    :try_start_0
    iget-object v1, p0, Labcd/jp;->Hw:Labcd/Fp;

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Labcd/jp;->Ws:[Labcd/Kp;

    iget-object v7, p0, Labcd/jp;->Hw:Labcd/Fp;

    invoke-static {v1, v7}, Labcd/xp;->j6([Labcd/Kp;Labcd/Fp;)V

    iget-object v1, p0, Labcd/jp;->Hw:Labcd/Fp;

    invoke-virtual {v1}, Labcd/Kp;->v5()V

    :cond_0
    instance-of v1, v2, Labcd/Fp;

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Labcd/Fp;

    move-object v1, v0

    invoke-virtual {v1}, Labcd/Fp;->tp()V

    :cond_1
    invoke-virtual {v2}, Labcd/Kp;->u7()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v1, v6

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while writing section "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Labcd/Vt;->j6(Ljava/lang/Throwable;Ljava/lang/String;)Labcd/Vt;

    move-result-object v1

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bogus placement for section "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iput v1, p0, Labcd/jp;->QX:I

    iget v1, p0, Labcd/jp;->QX:I

    new-array v2, v1, [B

    new-instance v4, Labcd/Qt;

    invoke-direct {v4, v2}, Labcd/Qt;-><init>([B)V

    if-eqz p1, :cond_4

    iget v1, p0, Labcd/jp;->XL:I

    invoke-virtual {v4, v1, p2}, Labcd/Qt;->j6(IZ)V

    :cond_4
    :goto_1
    if-ge v3, v5, :cond_7

    :try_start_1
    iget-object v1, p0, Labcd/jp;->Ws:[Labcd/Kp;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Labcd/Kp;->FH()I

    move-result v6

    invoke-virtual {v4}, Labcd/Qt;->v5()I

    move-result v7

    sub-int/2addr v6, v7

    if-ltz v6, :cond_5

    invoke-virtual {v1}, Labcd/Kp;->FH()I

    move-result v6

    invoke-virtual {v4}, Labcd/Qt;->v5()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Labcd/Qt;->j6(I)V

    invoke-virtual {v1, v4}, Labcd/Kp;->DW(Labcd/Lt;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_5
    new-instance v1, Labcd/Vt;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "excess write of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/Vt;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v1

    instance-of v2, v1, Labcd/Vt;

    if-eqz v2, :cond_6

    check-cast v1, Labcd/Vt;

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "...while writing section "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v2, Labcd/Vt;

    invoke-direct {v2, v1}, Labcd/Vt;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Labcd/Qt;->v5()I

    move-result v1

    iget v3, p0, Labcd/jp;->QX:I

    if-ne v1, v3, :cond_9

    invoke-static {v2}, Labcd/jp;->DW([B)V

    invoke-static {v2}, Labcd/jp;->j6([B)V

    if-eqz p1, :cond_8

    iget-object v1, p0, Labcd/jp;->DW:Labcd/Fp;

    sget-object v2, Labcd/wp;->J0:Labcd/wp;

    const-string v3, "\nmethod code index:\n\n"

    invoke-virtual {v1, v4, v2, v3}, Labcd/Fp;->j6(Labcd/Lt;Labcd/wp;Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/jp;->we()Labcd/Lp;

    move-result-object v1

    invoke-virtual {v1, v4}, Labcd/Lp;->j6(Labcd/Lt;)V

    invoke-virtual {v4}, Labcd/Qt;->Zo()V

    :cond_8
    return-object v4

    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "foreshortened write"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static j6([B)V
    .registers 4

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    const/16 v1, 0xc

    array-length v2, p0

    add-int/lit8 v2, v2, -0xc

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/zip/Adler32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x8

    int-to-byte v2, v0

    aput-byte v2, p0, v1

    const/16 v1, 0x9

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    const/16 v1, 0xa

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    const/16 v1, 0xb

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    return-void
.end method


# virtual methods
.method DW()Labcd/Fp;
    .registers 2

    iget-object v0, p0, Labcd/jp;->we:Labcd/Fp;

    return-object v0
.end method

.method DW(Labcd/ms;)V
    .registers 4

    instance-of v0, p1, Labcd/Js;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/jp;->Zo:Labcd/Op;

    check-cast p1, Labcd/Js;

    invoke-virtual {v0, p1}, Labcd/Op;->DW(Labcd/Js;)Labcd/Np;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Labcd/Ks;

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/jp;->VH:Labcd/Qp;

    check-cast p1, Labcd/Ks;

    invoke-virtual {v0, p1}, Labcd/Qp;->DW(Labcd/Ks;)Labcd/Pp;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Labcd/qs;

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/jp;->tp:Labcd/Cp;

    check-cast p1, Labcd/qs;

    invoke-virtual {v0, p1}, Labcd/Cp;->DW(Labcd/qs;)Labcd/Bp;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Labcd/ws;

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/jp;->u7:Labcd/qp;

    check-cast p1, Labcd/ws;

    invoke-virtual {v0, p1}, Labcd/qp;->DW(Labcd/ws;)Labcd/pp;

    goto :goto_0

    :cond_4
    instance-of v0, p1, Labcd/vs;

    if-eqz v0, :cond_5

    iget-object v0, p0, Labcd/jp;->u7:Labcd/qp;

    check-cast p1, Labcd/vs;

    invoke-virtual {p1}, Labcd/vs;->J8()Labcd/ws;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/qp;->DW(Labcd/ws;)Labcd/pp;

    goto :goto_0

    :cond_5
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method EQ()Labcd/Jp;
    .registers 2

    iget-object v0, p0, Labcd/jp;->gn:Labcd/Jp;

    return-object v0
.end method

.method FH()Labcd/cp;
    .registers 2

    iget-object v0, p0, Labcd/jp;->EQ:Labcd/cp;

    return-object v0
.end method

.method public Hw()Labcd/Fn;
    .registers 2

    iget-object v0, p0, Labcd/jp;->j6:Labcd/Fn;

    return-object v0
.end method

.method J0()Labcd/Fp;
    .registers 2

    iget-object v0, p0, Labcd/jp;->v5:Labcd/Fp;

    return-object v0
.end method

.method J8()Labcd/Op;
    .registers 2

    iget-object v0, p0, Labcd/jp;->Zo:Labcd/Op;

    return-object v0
.end method

.method QX()Labcd/Fp;
    .registers 2

    iget-object v0, p0, Labcd/jp;->FH:Labcd/Fp;

    return-object v0
.end method

.method VH()Labcd/Kp;
    .registers 2

    iget-object v0, p0, Labcd/jp;->DW:Labcd/Fp;

    return-object v0
.end method

.method Ws()Labcd/Qp;
    .registers 2

    iget-object v0, p0, Labcd/jp;->VH:Labcd/Qp;

    return-object v0
.end method

.method XL()Labcd/Fp;
    .registers 2

    iget-object v0, p0, Labcd/jp;->DW:Labcd/Fp;

    return-object v0
.end method

.method Zo()I
    .registers 3

    iget v0, p0, Labcd/jp;->QX:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "file size not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method gn()Labcd/Kp;
    .registers 2

    iget-object v0, p0, Labcd/jp;->Hw:Labcd/Fp;

    return-object v0
.end method

.method j6()Labcd/Fp;
    .registers 2

    iget-object v0, p0, Labcd/jp;->J0:Labcd/Fp;

    return-object v0
.end method

.method j6(Labcd/ms;)Labcd/up;
    .registers 3

    instance-of v0, p1, Labcd/Js;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/jp;->Zo:Labcd/Op;

    invoke-virtual {v0, p1}, Labcd/Op;->j6(Labcd/ms;)Labcd/up;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Labcd/Ks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/jp;->VH:Labcd/Qp;

    invoke-virtual {v0, p1}, Labcd/Qp;->j6(Labcd/ms;)Labcd/up;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Labcd/qs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/jp;->tp:Labcd/Cp;

    invoke-virtual {v0, p1}, Labcd/Cp;->j6(Labcd/ms;)Labcd/up;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Labcd/ws;

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/jp;->u7:Labcd/qp;

    invoke-virtual {v0, p1}, Labcd/qp;->j6(Labcd/ms;)Labcd/up;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(Labcd/bp;)V
    .registers 3

    iget-object v0, p0, Labcd/jp;->EQ:Labcd/cp;

    invoke-virtual {v0, p1}, Labcd/cp;->j6(Labcd/bp;)V

    return-void
.end method

.method public j6(Ljava/io/Writer;Z)[B
    .registers 5

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p2}, Labcd/jp;->j6(ZZ)Labcd/Qt;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Labcd/Qt;->j6(Ljava/io/Writer;)V

    :cond_0
    invoke-virtual {v1}, Labcd/Qt;->VH()[B

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method tp()Labcd/Cp;
    .registers 2

    iget-object v0, p0, Labcd/jp;->tp:Labcd/Cp;

    return-object v0
.end method

.method u7()Labcd/Fp;
    .registers 2

    iget-object v0, p0, Labcd/jp;->Hw:Labcd/Fp;

    return-object v0
.end method

.method v5()Labcd/qp;
    .registers 2

    iget-object v0, p0, Labcd/jp;->u7:Labcd/qp;

    return-object v0
.end method

.method public we()Labcd/Lp;
    .registers 6

    new-instance v1, Labcd/Lp;

    invoke-direct {v1}, Labcd/Lp;-><init>()V

    iget-object v2, p0, Labcd/jp;->Ws:[Labcd/Kp;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Labcd/Lp;->j6(Labcd/Kp;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
