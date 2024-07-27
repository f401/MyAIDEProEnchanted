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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    iput p2, p0, Labcd/JL;->DW:I

    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Labcd/JL;->FH:[[B

    return-void
.end method

.method private j6(Z)V
    .registers 4

    iget-object v0, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    instance-of v1, v0, Labcd/JM;

    if-eqz v1, :cond_0

    check-cast v0, Labcd/JM;

    invoke-virtual {v0, p1}, Labcd/JM;->DW(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method DW()Labcd/rL;
    .registers 4

    new-instance v1, Labcd/rL;

    invoke-direct {v1}, Labcd/rL;-><init>()V

    :goto_0
    invoke-virtual {p0}, Labcd/JL;->j6()Labcd/qL;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v2, v0, Labcd/IM;

    if-eqz v2, :cond_1

    check-cast v0, Labcd/IM;

    invoke-interface {v0}, Labcd/IM;->j6()Labcd/EL;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/rL;->j6(Labcd/qL;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/rL;->j6(Labcd/qL;)V

    goto :goto_0
.end method

.method j6(ZI)Labcd/EL;
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v1, Labcd/yM;

    new-instance v2, Labcd/pM;

    iget-object v0, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    check-cast v0, Labcd/HM;

    invoke-virtual {v0}, Labcd/HM;->DW()[B

    move-result-object v0

    invoke-direct {v2, v0}, Labcd/pM;-><init>([B)V

    invoke-direct {v1, v3, p2, v2}, Labcd/yM;-><init>(ZILabcd/qL;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Labcd/JL;->DW()Labcd/rL;

    move-result-object v1

    iget-object v0, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    instance-of v0, v0, Labcd/JM;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Labcd/rL;->j6()I

    move-result v0

    if-ne v0, v2, :cond_1

    new-instance v0, Labcd/YL;

    invoke-virtual {v1, v3}, Labcd/rL;->j6(I)Labcd/qL;

    move-result-object v1

    invoke-direct {v0, v2, p2, v1}, Labcd/YL;-><init>(ZILabcd/qL;)V

    goto :goto_0

    :cond_1
    new-instance v0, Labcd/YL;

    invoke-static {v1}, Labcd/QL;->j6(Labcd/rL;)Labcd/UL;

    move-result-object v1

    invoke-direct {v0, v3, p2, v1}, Labcd/YL;-><init>(ZILabcd/qL;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Labcd/rL;->j6()I

    move-result v0

    if-ne v0, v2, :cond_3

    new-instance v0, Labcd/yM;

    invoke-virtual {v1, v3}, Labcd/rL;->j6(I)Labcd/qL;

    move-result-object v1

    invoke-direct {v0, v2, p2, v1}, Labcd/yM;-><init>(ZILabcd/qL;)V

    goto :goto_0

    :cond_3
    new-instance v0, Labcd/yM;

    invoke-static {v1}, Labcd/hM;->j6(Labcd/rL;)Labcd/FL;

    move-result-object v1

    invoke-direct {v0, v3, p2, v1}, Labcd/yM;-><init>(ZILabcd/qL;)V

    goto :goto_0
.end method

.method public j6()Labcd/qL;
    .registers 8

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Labcd/JL;->j6(Z)V

    iget-object v3, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    invoke-static {v3, v2}, Labcd/vL;->DW(Ljava/io/InputStream;I)I

    move-result v3

    and-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_1

    move v0, v1

    :cond_1
    iget-object v4, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    iget v5, p0, Labcd/JL;->DW:I

    invoke-static {v4, v5}, Labcd/vL;->j6(Ljava/io/InputStream;I)I

    move-result v4

    if-gez v4, :cond_5

    if-eqz v0, :cond_4

    new-instance v4, Labcd/JL;

    new-instance v0, Labcd/JM;

    iget-object v5, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    iget v6, p0, Labcd/JL;->DW:I

    invoke-direct {v0, v5, v6}, Labcd/JM;-><init>(Ljava/io/InputStream;I)V

    iget v5, p0, Labcd/JL;->DW:I

    invoke-direct {v4, v0, v5}, Labcd/JL;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_2

    new-instance v0, Labcd/PL;

    invoke-direct {v0, v3, v4}, Labcd/PL;-><init>(ILabcd/JL;)V

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_3

    new-instance v0, Labcd/ZL;

    invoke-direct {v0, v1, v3, v4}, Labcd/ZL;-><init>(ZILabcd/JL;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v3}, Labcd/JL;->j6(I)Labcd/qL;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v5, Labcd/HM;

    iget-object v1, p0, Labcd/JL;->j6:Ljava/io/InputStream;

    invoke-direct {v5, v1, v4}, Labcd/HM;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v1, v2, 0x40

    if-eqz v1, :cond_6

    new-instance v1, Labcd/aM;

    invoke-virtual {v5}, Labcd/HM;->DW()[B

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Labcd/aM;-><init>(ZI[B)V

    move-object v0, v1

    goto :goto_0

    :cond_6
    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_7

    new-instance v1, Labcd/ZL;

    new-instance v2, Labcd/JL;

    invoke-direct {v2, v5}, Labcd/JL;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0, v3, v2}, Labcd/ZL;-><init>(ZILabcd/JL;)V

    move-object v0, v1

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_c

    if-eq v3, v6, :cond_b

    const/16 v0, 0x8

    if-eq v3, v0, :cond_a

    const/16 v0, 0x10

    if-eq v3, v0, :cond_9

    const/16 v0, 0x11

    if-ne v3, v0, :cond_8

    new-instance v0, Labcd/wM;

    new-instance v1, Labcd/JL;

    invoke-direct {v1, v5}, Labcd/JL;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Labcd/wM;-><init>(Labcd/JL;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown tag "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " encountered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v0, Labcd/uM;

    new-instance v1, Labcd/JL;

    invoke-direct {v1, v5}, Labcd/JL;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Labcd/uM;-><init>(Labcd/JL;)V

    goto/16 :goto_0

    :cond_a
    new-instance v0, Labcd/gM;

    new-instance v1, Labcd/JL;

    invoke-direct {v1, v5}, Labcd/JL;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Labcd/gM;-><init>(Labcd/JL;)V

    goto/16 :goto_0

    :cond_b
    new-instance v0, Labcd/TL;

    new-instance v1, Labcd/JL;

    invoke-direct {v1, v5}, Labcd/JL;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Labcd/TL;-><init>(Labcd/JL;)V

    goto/16 :goto_0

    :cond_c
    if-eq v3, v6, :cond_d

    :try_start_0
    iget-object v0, p0, Labcd/JL;->FH:[[B

    invoke-static {v3, v5, v0}, Labcd/vL;->j6(ILabcd/HM;[[B)Labcd/EL;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/tL;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Labcd/tL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    new-instance v0, Labcd/qM;

    invoke-direct {v0, v5}, Labcd/qM;-><init>(Labcd/HM;)V

    goto/16 :goto_0
.end method

.method j6(I)Labcd/qL;
    .registers 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    new-instance v0, Labcd/XL;

    invoke-direct {v0, p0}, Labcd/XL;-><init>(Labcd/JL;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown BER object encountered: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/tL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/tL;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Labcd/VL;

    invoke-direct {v0, p0}, Labcd/VL;-><init>(Labcd/JL;)V

    goto :goto_0

    :cond_2
    new-instance v0, Labcd/gM;

    invoke-direct {v0, p0}, Labcd/gM;-><init>(Labcd/JL;)V

    goto :goto_0

    :cond_3
    new-instance v0, Labcd/TL;

    invoke-direct {v0, p0}, Labcd/TL;-><init>(Labcd/JL;)V

    goto :goto_0
.end method
