.class public Labcd/mP;
.super Labcd/LN;

# interfaces
.implements Ljava/security/Principal;


# direct methods
.method public constructor <init>(Labcd/sN;)V
    .registers 2

    invoke-virtual {p1}, Labcd/sN;->DW()Labcd/EL;

    move-result-object p1

    check-cast p1, Labcd/FL;

    invoke-direct {p0, p1}, Labcd/LN;-><init>(Labcd/FL;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    new-instance v0, Labcd/vL;

    invoke-direct {v0, p1}, Labcd/vL;-><init>([B)V

    invoke-static {v0}, Labcd/mP;->j6(Labcd/vL;)Labcd/FL;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/LN;-><init>(Labcd/FL;)V

    return-void
.end method

.method private static j6(Labcd/vL;)Labcd/FL;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object p0

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not an ASN.1 Sequence: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public Hw()[B
    .registers 3

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Labcd/yL;->j6(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/LN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
