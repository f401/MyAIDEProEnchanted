.class Labcd/IP;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/vP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/JP;->j6(Ljava/security/PrivateKey;)Labcd/vP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/JP;

.field private j6:Labcd/JP$a;


# direct methods
.method constructor <init>(Labcd/JP;Ljava/security/Signature;)V
    .registers 4

    iput-object p1, p0, Labcd/IP;->DW:Labcd/JP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/JP$a;

    invoke-direct {v0, p1, p2}, Labcd/JP$a;-><init>(Labcd/JP;Ljava/security/Signature;)V

    iput-object v0, p0, Labcd/IP;->j6:Labcd/JP$a;

    return-void
.end method


# virtual methods
.method public DW()Labcd/wN;
    .registers 2

    iget-object v0, p0, Labcd/IP;->DW:Labcd/JP;

    invoke-static {v0}, Labcd/JP;->j6(Labcd/JP;)Labcd/wN;

    move-result-object v0

    return-object v0
.end method

.method public FH()[B
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/IP;->j6:Labcd/JP$a;

    invoke-virtual {v0}, Labcd/JP$a;->j6()[B
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception obtaining signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/EP;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Labcd/EP;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public j6()Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Labcd/IP;->j6:Labcd/JP$a;

    return-object v0
.end method
