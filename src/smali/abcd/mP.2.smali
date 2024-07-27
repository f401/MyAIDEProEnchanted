.class public Labcd/mP;
.super Labcd/LN;

# interfaces
.implements Ljava/security/Principal;


# direct methods
.method public constructor <init>(Labcd/sN;)V
    .registers 3

    invoke-virtual {p1}, Labcd/sN;->DW()Labcd/EL;

    move-result-object v0

    check-cast v0, Labcd/FL;

    invoke-direct {p0, v0}, Labcd/LN;-><init>(Labcd/FL;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    new-instance v0, Labcd/vL;

    invoke-direct {v0, p1}, Labcd/vL;-><init>([B)V

    invoke-static {v0}, Labcd/mP;->j6(Labcd/vL;)Labcd/FL;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/LN;-><init>(Labcd/FL;)V

    return-void
.end method

.method private static j6(Labcd/vL;)Labcd/FL;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v0

    invoke-static {v0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not an ASN.1 Sequence: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public Hw()[B
    .registers 3

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Labcd/yL;->j6(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
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
