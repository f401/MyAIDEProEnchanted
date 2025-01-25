.class public Labcd/JL;
.super Ljava/lang/Object;


# instance fields
.field private final DW:I

.field private final FH:[[B

.field private final j6:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-static {p1}, Labcd/OM;->j6(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Labcd/JL;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    iput p2, p0, Labcd/JL;->DW:I

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Labcd/JL;->FH:[[B

    return-void
.end method

.method private j6(Z)V
    .registers 4

    iget-object v0, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    instance-of v1, v0, Labcd/JM;

    if-eqz v1, :cond_b

    check-cast v0, Labcd/JM;

    invoke-virtual {v0, p1}, Labcd/JM;->DW(Z)V

    :cond_b
    return-void
.end method


# virtual methods
.method DW()Labcd/rL;
    .registers 4

    new-instance v0, Labcd/rL;

    invoke-direct {v0}, Labcd/rL;-><init>()V

    :goto_5
    invoke-virtual {p0}, Labcd/JL;->j6()Labcd/qL;

    move-result-object v1

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    instance-of v2, v1, Labcd/IM;

    if-eqz v2, :cond_17

    check-cast v1, Labcd/IM;

    invoke-interface {v1}, Labcd/IM;->j6()Labcd/EL;

    move-result-object v1

    goto :goto_1b

    :cond_17
    invoke-interface {v1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v1

    :goto_1b
    invoke-virtual {v0, v1}, Labcd/rL;->j6(Labcd/qL;)V

    goto :goto_5
.end method

.method j6(ZI)Labcd/EL;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_16

    new-instance p1, Labcd/yM;

    new-instance v1, Labcd/pM;

    iget-object v2, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    check-cast v2, Labcd/HM;

    invoke-virtual {v2}, Labcd/HM;->DW()[B

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/pM;-><init>([B)V

    invoke-direct {p1, v0, p2, v1}, Labcd/yM;-><init>(ZILabcd/qL;)V

    return-object p1

    :cond_16
    invoke-virtual {p0}, Labcd/JL;->DW()Labcd/rL;

    move-result-object p1

    iget-object v1, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    instance-of v1, v1, Labcd/JM;

    const/4 v2, 0x1

    if-eqz v1, :cond_3b

    invoke-virtual {p1}, Labcd/rL;->j6()I

    move-result v1

    if-ne v1, v2, :cond_31

    new-instance v1, Labcd/YL;

    invoke-virtual {p1, v0}, Labcd/rL;->j6(I)Labcd/qL;

    move-result-object p1

    invoke-direct {v1, v2, p2, p1}, Labcd/YL;-><init>(ZILabcd/qL;)V

    goto :goto_3a

    :cond_31
    new-instance v1, Labcd/YL;

    invoke-static {p1}, Labcd/QL;->j6(Labcd/rL;)Labcd/UL;

    move-result-object p1

    invoke-direct {v1, v0, p2, p1}, Labcd/YL;-><init>(ZILabcd/qL;)V

    :goto_3a
    return-object v1

    :cond_3b
    invoke-virtual {p1}, Labcd/rL;->j6()I

    move-result v1

    if-ne v1, v2, :cond_4b

    new-instance v1, Labcd/yM;

    invoke-virtual {p1, v0}, Labcd/rL;->j6(I)Labcd/qL;

    move-result-object p1

    invoke-direct {v1, v2, p2, p1}, Labcd/yM;-><init>(ZILabcd/qL;)V

    goto :goto_54

    :cond_4b
    new-instance v1, Labcd/yM;

    invoke-static {p1}, Labcd/hM;->j6(Labcd/rL;)Labcd/FL;

    move-result-object p1

    invoke-direct {v1, v0, p2, p1}, Labcd/yM;-><init>(ZILabcd/qL;)V

    :goto_54
    return-object v1
.end method

.method public j6()Labcd/qL;
    .registers 8

    iget-object v0, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Labcd/JL;->j6(Z)V

    iget-object v2, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    invoke-static {v2, v0}, Labcd/vL;->DW(Ljava/io/InputStream;I)I

    move-result v2

    and-int/lit8 v3, v0, 0x20

    const/4 v4, 0x1

    if-eqz v3, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    iget-object v3, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    iget v5, p0, Labcd/JL;->DW:I

    invoke-static {v3, v5}, Labcd/vL;->j6(Ljava/io/InputStream;I)I

    move-result v3

    if-gez v3, :cond_58

    if-eqz v1, :cond_50

    new-instance v1, Labcd/JL;

    new-instance v3, Labcd/JM;

    iget-object v5, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    iget v6, p0, Labcd/JL;->DW:I

    invoke-direct {v3, v5, v6}, Labcd/JM;-><init>(Ljava/io/InputStream;I)V

    iget v5, p0, Labcd/JL;->DW:I

    invoke-direct {v1, v3, v5}, Labcd/JL;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_41

    new-instance v0, Labcd/PL;

    invoke-direct {v0, v2, v1}, Labcd/PL;-><init>(ILabcd/JL;)V

    return-object v0

    :cond_41
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4b

    new-instance v0, Labcd/ZL;

    invoke-direct {v0, v4, v2, v1}, Labcd/ZL;-><init>(ZILabcd/JL;)V

    return-object v0

    :cond_4b
    invoke-virtual {v1, v2}, Labcd/JL;->j6(I)Labcd/qL;

    move-result-object v0

    return-object v0

    :cond_50
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    new-instance v4, Labcd/HM;

    iget-object v5, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    invoke-direct {v4, v5, v3}, Labcd/HM;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_6d

    new-instance v0, Labcd/aM;

    invoke-virtual {v4}, Labcd/HM;->DW()[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Labcd/aM;-><init>(ZI[B)V

    return-object v0

    :cond_6d
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7c

    new-instance v0, Labcd/ZL;

    new-instance v3, Labcd/JL;

    invoke-direct {v3, v4}, Labcd/JL;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1, v2, v3}, Labcd/ZL;-><init>(ZILabcd/JL;)V

    return-object v0

    :cond_7c
    const/4 v0, 0x4

    if-eqz v1, :cond_d2

    if-eq v2, v0, :cond_c7

    const/16 v0, 0x8

    if-eq v2, v0, :cond_bc

    const/16 v0, 0x10

    if-eq v2, v0, :cond_b1

    const/16 v0, 0x11

    if-ne v2, v0, :cond_98

    new-instance v0, Labcd/wM;

    new-instance v1, Labcd/JL;

    invoke-direct {v1, v4}, Labcd/JL;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Labcd/wM;-><init>(Labcd/JL;)V

    return-object v0

    :cond_98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown tag "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " encountered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b1
    new-instance v0, Labcd/uM;

    new-instance v1, Labcd/JL;

    invoke-direct {v1, v4}, Labcd/JL;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Labcd/uM;-><init>(Labcd/JL;)V

    return-object v0

    :cond_bc
    new-instance v0, Labcd/gM;

    new-instance v1, Labcd/JL;

    invoke-direct {v1, v4}, Labcd/JL;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Labcd/gM;-><init>(Labcd/JL;)V

    return-object v0

    :cond_c7
    new-instance v0, Labcd/TL;

    new-instance v1, Labcd/JL;

    invoke-direct {v1, v4}, Labcd/JL;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Labcd/TL;-><init>(Labcd/JL;)V

    return-object v0

    :cond_d2
    if-eq v2, v0, :cond_e4

    :try_start_d4
    iget-object v0, p0, Labcd/JL;->FH:[[B

    invoke-static {v2, v4, v0}, Labcd/vL;->j6(ILabcd/HM;[[B)Labcd/EL;

    move-result-object v0
    :try_end_da
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d4 .. :try_end_da} :catch_db

    return-object v0

    :catch_db
    move-exception v0

    new-instance v1, Labcd/tL;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Labcd/tL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_e4
    new-instance v0, Labcd/qM;

    invoke-direct {v0, v4}, Labcd/qM;-><init>(Labcd/HM;)V

    return-object v0
.end method

.method j6(I)Labcd/qL;
    .registers 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_39

    const/16 v0, 0x8

    if-eq p1, v0, :cond_33

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x11

    if-ne p1, v0, :cond_15

    new-instance p1, Labcd/XL;

    invoke-direct {p1, p0}, Labcd/XL;-><init>(Labcd/JL;)V

    return-object p1

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown BER object encountered: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Labcd/tL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/tL;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    new-instance p1, Labcd/VL;

    invoke-direct {p1, p0}, Labcd/VL;-><init>(Labcd/JL;)V

    return-object p1

    :cond_33
    new-instance p1, Labcd/gM;

    invoke-direct {p1, p0}, Labcd/gM;-><init>(Labcd/JL;)V

    return-object p1

    :cond_39
    new-instance p1, Labcd/TL;

    invoke-direct {p1, p0}, Labcd/TL;-><init>(Labcd/JL;)V

    return-object p1
.end method
