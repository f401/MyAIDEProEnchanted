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
    .registers 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Labcd/jp;->j6:Labcd/Fn;

    new-instance v1, Labcd/sp;

    invoke-direct {v1, v0}, Labcd/sp;-><init>(Labcd/jp;)V

    iput-object v1, v0, Labcd/jp;->J8:Labcd/sp;

    new-instance v2, Labcd/Fp;

    sget-object v3, Labcd/Fp$a;->j6:Labcd/Fp$a;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct {v2, v4, v0, v5, v3}, Labcd/Fp;-><init>(Ljava/lang/String;Labcd/jp;ILabcd/Fp$a;)V

    iput-object v2, v0, Labcd/jp;->FH:Labcd/Fp;

    new-instance v3, Labcd/Fp;

    const-string v6, "word_data"

    sget-object v7, Labcd/Fp$a;->DW:Labcd/Fp$a;

    invoke-direct {v3, v6, v0, v5, v7}, Labcd/Fp;-><init>(Ljava/lang/String;Labcd/jp;ILabcd/Fp$a;)V

    iput-object v3, v0, Labcd/jp;->DW:Labcd/Fp;

    new-instance v6, Labcd/Fp;

    sget-object v7, Labcd/Fp$a;->FH:Labcd/Fp$a;

    const-string v8, "string_data"

    const/4 v9, 0x1

    invoke-direct {v6, v8, v0, v9, v7}, Labcd/Fp;-><init>(Ljava/lang/String;Labcd/jp;ILabcd/Fp$a;)V

    iput-object v6, v0, Labcd/jp;->v5:Labcd/Fp;

    new-instance v7, Labcd/Fp;

    sget-object v8, Labcd/Fp$a;->j6:Labcd/Fp$a;

    invoke-direct {v7, v4, v0, v9, v8}, Labcd/Fp;-><init>(Ljava/lang/String;Labcd/jp;ILabcd/Fp$a;)V

    iput-object v7, v0, Labcd/jp;->we:Labcd/Fp;

    new-instance v4, Labcd/Fp;

    const-string v8, "byte_data"

    sget-object v10, Labcd/Fp$a;->DW:Labcd/Fp$a;

    invoke-direct {v4, v8, v0, v9, v10}, Labcd/Fp;-><init>(Ljava/lang/String;Labcd/jp;ILabcd/Fp$a;)V

    iput-object v4, v0, Labcd/jp;->J0:Labcd/Fp;

    new-instance v8, Labcd/Op;

    invoke-direct {v8, v0}, Labcd/Op;-><init>(Labcd/jp;)V

    iput-object v8, v0, Labcd/jp;->Zo:Labcd/Op;

    new-instance v10, Labcd/Qp;

    invoke-direct {v10, v0}, Labcd/Qp;-><init>(Labcd/jp;)V

    iput-object v10, v0, Labcd/jp;->VH:Labcd/Qp;

    new-instance v11, Labcd/Jp;

    invoke-direct {v11, v0}, Labcd/Jp;-><init>(Labcd/jp;)V

    iput-object v11, v0, Labcd/jp;->gn:Labcd/Jp;

    new-instance v12, Labcd/qp;

    invoke-direct {v12, v0}, Labcd/qp;-><init>(Labcd/jp;)V

    iput-object v12, v0, Labcd/jp;->u7:Labcd/qp;

    new-instance v13, Labcd/Cp;

    invoke-direct {v13, v0}, Labcd/Cp;-><init>(Labcd/jp;)V

    iput-object v13, v0, Labcd/jp;->tp:Labcd/Cp;

    new-instance v14, Labcd/cp;

    invoke-direct {v14, v0}, Labcd/cp;-><init>(Labcd/jp;)V

    iput-object v14, v0, Labcd/jp;->EQ:Labcd/cp;

    new-instance v15, Labcd/Fp;

    const-string v9, "map"

    move-object/from16 v16, v7

    sget-object v7, Labcd/Fp$a;->j6:Labcd/Fp$a;

    invoke-direct {v15, v9, v0, v5, v7}, Labcd/Fp;-><init>(Ljava/lang/String;Labcd/jp;ILabcd/Fp$a;)V

    iput-object v15, v0, Labcd/jp;->Hw:Labcd/Fp;

    const/16 v7, 0xd

    new-array v7, v7, [Labcd/Kp;

    const/4 v9, 0x0

    aput-object v1, v7, v9

    const/4 v1, 0x1

    aput-object v8, v7, v1

    const/4 v1, 0x2

    aput-object v10, v7, v1

    const/4 v1, 0x3

    aput-object v11, v7, v1

    aput-object v12, v7, v5

    const/4 v1, 0x5

    aput-object v13, v7, v1

    const/4 v1, 0x6

    aput-object v14, v7, v1

    const/4 v1, 0x7

    aput-object v3, v7, v1

    const/16 v1, 0x8

    aput-object v2, v7, v1

    const/16 v1, 0x9

    aput-object v6, v7, v1

    const/16 v1, 0xa

    aput-object v4, v7, v1

    const/16 v1, 0xb

    aput-object v16, v7, v1

    const/16 v1, 0xc

    aput-object v15, v7, v1

    iput-object v7, v0, Labcd/jp;->Ws:[Labcd/Kp;

    const/4 v1, -0x1

    iput v1, v0, Labcd/jp;->QX:I

    const/16 v1, 0x4f

    iput v1, v0, Labcd/jp;->XL:I

    return-void
.end method

.method private static DW([B)V
    .registers 4

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_3b

    array-length v1, p0

    const/16 v2, 0x20

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    const/16 v1, 0xc

    const/16 v2, 0x14

    :try_start_11
    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->digest([BII)I

    move-result p0

    if-ne p0, v2, :cond_18

    return-void

    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected digest write: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_34
    .catch Ljava/security/DigestException; {:try_start_11 .. :try_end_34} :catch_34

    :catch_34
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3b
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private j6(ZZ)Labcd/Qt;
    .registers 11

    iget-object v0, p0, Labcd/jp;->EQ:Labcd/cp;

    invoke-virtual {v0}, Labcd/Kp;->v5()V

    iget-object v0, p0, Labcd/jp;->we:Labcd/Fp;

    invoke-virtual {v0}, Labcd/Kp;->v5()V

    iget-object v0, p0, Labcd/jp;->DW:Labcd/Fp;

    invoke-virtual {v0}, Labcd/Kp;->v5()V

    iget-object v0, p0, Labcd/jp;->J0:Labcd/Fp;

    invoke-virtual {v0}, Labcd/Kp;->v5()V

    iget-object v0, p0, Labcd/jp;->tp:Labcd/Cp;

    invoke-virtual {v0}, Labcd/Kp;->v5()V

    iget-object v0, p0, Labcd/jp;->u7:Labcd/qp;

    invoke-virtual {v0}, Labcd/Kp;->v5()V

    iget-object v0, p0, Labcd/jp;->gn:Labcd/Jp;

    invoke-virtual {v0}, Labcd/Kp;->v5()V

    iget-object v0, p0, Labcd/jp;->FH:Labcd/Fp;

    invoke-virtual {v0}, Labcd/Kp;->v5()V

    iget-object v0, p0, Labcd/jp;->VH:Labcd/Qp;

    invoke-virtual {v0}, Labcd/Kp;->v5()V

    iget-object v0, p0, Labcd/jp;->Zo:Labcd/Op;

    invoke-virtual {v0}, Labcd/Kp;->v5()V

    iget-object v0, p0, Labcd/jp;->v5:Labcd/Fp;

    invoke-virtual {v0}, Labcd/Kp;->v5()V

    iget-object v0, p0, Labcd/jp;->J8:Labcd/sp;

    invoke-virtual {v0}, Labcd/Kp;->v5()V

    iget-object v0, p0, Labcd/jp;->Ws:[Labcd/Kp;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_42
    const-string v4, "...while writing section "

    if-ge v2, v0, :cond_9c

    iget-object v5, p0, Labcd/jp;->Ws:[Labcd/Kp;

    aget-object v5, v5, v2

    invoke-virtual {v5, v3}, Labcd/Kp;->DW(I)I

    move-result v6

    if-lt v6, v3, :cond_85

    :try_start_50
    iget-object v3, p0, Labcd/jp;->Hw:Labcd/Fp;

    if-ne v5, v3, :cond_5e

    iget-object v7, p0, Labcd/jp;->Ws:[Labcd/Kp;

    invoke-static {v7, v3}, Labcd/xp;->j6([Labcd/Kp;Labcd/Fp;)V

    iget-object v3, p0, Labcd/jp;->Hw:Labcd/Fp;

    invoke-virtual {v3}, Labcd/Kp;->v5()V

    :cond_5e
    instance-of v3, v5, Labcd/Fp;

    if-eqz v3, :cond_68

    move-object v3, v5

    check-cast v3, Labcd/Fp;

    invoke-virtual {v3}, Labcd/Fp;->tp()V

    :cond_68
    invoke-virtual {v5}, Labcd/Kp;->u7()I

    move-result v3
    :try_end_6c
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_6c} :catch_70

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :catch_70
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Labcd/Vt;->j6(Ljava/lang/Throwable;Ljava/lang/String;)Labcd/Vt;

    move-result-object p1

    throw p1

    :cond_85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bogus placement for section "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9c
    iput v3, p0, Labcd/jp;->QX:I

    new-array v2, v3, [B

    new-instance v3, Labcd/Qt;

    invoke-direct {v3, v2}, Labcd/Qt;-><init>([B)V

    if-eqz p1, :cond_ac

    iget v5, p0, Labcd/jp;->XL:I

    invoke-virtual {v3, v5, p2}, Labcd/Qt;->j6(IZ)V

    :cond_ac
    :goto_ac
    if-ge v1, v0, :cond_108

    :try_start_ae
    iget-object p2, p0, Labcd/jp;->Ws:[Labcd/Kp;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Labcd/Kp;->FH()I

    move-result v5

    invoke-virtual {v3}, Labcd/Qt;->v5()I

    move-result v6

    sub-int/2addr v5, v6

    if-ltz v5, :cond_cf

    invoke-virtual {p2}, Labcd/Kp;->FH()I

    move-result v5

    invoke-virtual {v3}, Labcd/Qt;->v5()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Labcd/Qt;->j6(I)V

    invoke-virtual {p2, v3}, Labcd/Kp;->DW(Labcd/Lt;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    :cond_cf
    new-instance p1, Labcd/Vt;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "excess write of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v0, v5

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Labcd/Vt;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_e7
    .catch Ljava/lang/RuntimeException; {:try_start_ae .. :try_end_e7} :catch_e7

    :catch_e7
    move-exception p1

    instance-of p2, p1, Labcd/Vt;

    if-eqz p2, :cond_ef

    check-cast p1, Labcd/Vt;

    goto :goto_f5

    :cond_ef
    new-instance p2, Labcd/Vt;

    invoke-direct {p2, p1}, Labcd/Vt;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_f5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw p1

    :cond_108
    invoke-virtual {v3}, Labcd/Qt;->v5()I

    move-result p2

    iget v0, p0, Labcd/jp;->QX:I

    if-ne p2, v0, :cond_12c

    invoke-static {v2}, Labcd/jp;->DW([B)V

    invoke-static {v2}, Labcd/jp;->j6([B)V

    if-eqz p1, :cond_12b

    iget-object p1, p0, Labcd/jp;->DW:Labcd/Fp;

    sget-object p2, Labcd/wp;->J0:Labcd/wp;

    const-string v0, "\nmethod code index:\n\n"

    invoke-virtual {p1, v3, p2, v0}, Labcd/Fp;->j6(Labcd/Lt;Labcd/wp;Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/jp;->we()Labcd/Lp;

    move-result-object p1

    invoke-virtual {p1, v3}, Labcd/Lp;->j6(Labcd/Lt;)V

    invoke-virtual {v3}, Labcd/Qt;->Zo()V

    :cond_12b
    return-object v3

    :cond_12c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "foreshortened write"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_135

    :goto_134
    throw p1

    :goto_135
    goto :goto_134
.end method

.method private static j6([B)V
    .registers 4

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    array-length v1, p0

    const/16 v2, 0xc

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/zip/Adler32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x8

    int-to-byte v2, v1

    aput-byte v2, p0, v0

    shr-int/lit8 v0, v1, 0x8

    int-to-byte v0, v0

    const/16 v2, 0x9

    aput-byte v0, p0, v2

    shr-int/lit8 v0, v1, 0x10

    int-to-byte v0, v0

    const/16 v2, 0xa

    aput-byte v0, p0, v2

    shr-int/lit8 v0, v1, 0x18

    int-to-byte v0, v0

    const/16 v1, 0xb

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
    .registers 3

    instance-of v0, p1, Labcd/Js;

    if-eqz v0, :cond_c

    iget-object v0, p0, Labcd/jp;->Zo:Labcd/Op;

    check-cast p1, Labcd/Js;

    invoke-virtual {v0, p1}, Labcd/Op;->DW(Labcd/Js;)Labcd/Np;

    goto :goto_3f

    :cond_c
    instance-of v0, p1, Labcd/Ks;

    if-eqz v0, :cond_18

    iget-object v0, p0, Labcd/jp;->VH:Labcd/Qp;

    check-cast p1, Labcd/Ks;

    invoke-virtual {v0, p1}, Labcd/Qp;->DW(Labcd/Ks;)Labcd/Pp;

    goto :goto_3f

    :cond_18
    instance-of v0, p1, Labcd/qs;

    if-eqz v0, :cond_24

    iget-object v0, p0, Labcd/jp;->tp:Labcd/Cp;

    check-cast p1, Labcd/qs;

    invoke-virtual {v0, p1}, Labcd/Cp;->DW(Labcd/qs;)Labcd/Bp;

    goto :goto_3f

    :cond_24
    instance-of v0, p1, Labcd/ws;

    if-eqz v0, :cond_30

    iget-object v0, p0, Labcd/jp;->u7:Labcd/qp;

    check-cast p1, Labcd/ws;

    :goto_2c
    invoke-virtual {v0, p1}, Labcd/qp;->DW(Labcd/ws;)Labcd/pp;

    goto :goto_3f

    :cond_30
    instance-of v0, p1, Labcd/vs;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Labcd/jp;->u7:Labcd/qp;

    check-cast p1, Labcd/vs;

    invoke-virtual {p1}, Labcd/vs;->J8()Labcd/ws;

    move-result-object p1

    goto :goto_2c

    :cond_3d
    if-eqz p1, :cond_40

    :goto_3f
    return-void

    :cond_40
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_49

    :goto_48
    throw p1

    :goto_49
    goto :goto_48
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

    if-ltz v0, :cond_5

    return v0

    :cond_5
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

    if-eqz v0, :cond_b

    iget-object v0, p0, Labcd/jp;->Zo:Labcd/Op;

    invoke-virtual {v0, p1}, Labcd/Op;->j6(Labcd/ms;)Labcd/up;

    move-result-object p1

    return-object p1

    :cond_b
    instance-of v0, p1, Labcd/Ks;

    if-eqz v0, :cond_16

    iget-object v0, p0, Labcd/jp;->VH:Labcd/Qp;

    invoke-virtual {v0, p1}, Labcd/Qp;->j6(Labcd/ms;)Labcd/up;

    move-result-object p1

    return-object p1

    :cond_16
    instance-of v0, p1, Labcd/qs;

    if-eqz v0, :cond_21

    iget-object v0, p0, Labcd/jp;->tp:Labcd/Cp;

    invoke-virtual {v0, p1}, Labcd/Cp;->j6(Labcd/ms;)Labcd/up;

    move-result-object p1

    return-object p1

    :cond_21
    instance-of v0, p1, Labcd/ws;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Labcd/jp;->u7:Labcd/qp;

    invoke-virtual {v0, p1}, Labcd/qp;->j6(Labcd/ms;)Labcd/up;

    move-result-object p1

    return-object p1

    :cond_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method public j6(Labcd/bp;)V
    .registers 3

    iget-object v0, p0, Labcd/jp;->EQ:Labcd/cp;

    invoke-virtual {v0, p1}, Labcd/cp;->j6(Labcd/bp;)V

    return-void
.end method

.method public j6(Ljava/io/Writer;Z)[B
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v0, p2}, Labcd/jp;->j6(ZZ)Labcd/Qt;

    move-result-object p2

    if-eqz v0, :cond_e

    invoke-virtual {p2, p1}, Labcd/Qt;->j6(Ljava/io/Writer;)V

    :cond_e
    invoke-virtual {p2}, Labcd/Qt;->VH()[B

    move-result-object p1

    return-object p1
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

    new-instance v0, Labcd/Lp;

    invoke-direct {v0}, Labcd/Lp;-><init>()V

    iget-object v1, p0, Labcd/jp;->Ws:[Labcd/Kp;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_13

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Labcd/Lp;->j6(Labcd/Kp;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_13
    return-object v0
.end method
