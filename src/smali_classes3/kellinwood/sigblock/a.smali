.class Lkellinwood/sigblock/a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/vP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkellinwood/sigblock/SignatureBlockWriter;->writeSignatureBlock([BLjava/security/cert/X509Certificate;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final j6:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    iput-object p1, p0, Lkellinwood/sigblock/a;->j6:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Labcd/wN;
    .registers 3

    new-instance v0, Labcd/xP;

    invoke-direct {v0}, Labcd/xP;-><init>()V

    const-string v1, "SHA1withRSA"

    invoke-virtual {v0, v1}, Labcd/xP;->j6(Ljava/lang/String;)Labcd/wN;

    move-result-object v0

    return-object v0
.end method

.method public FH()[B
    .registers 2

    iget-object v0, p0, Lkellinwood/sigblock/a;->j6:[B

    return-object v0
.end method

.method public j6()Ljava/io/OutputStream;
    .registers 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-object v0
.end method
