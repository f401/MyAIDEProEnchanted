.class Lcom/jcraft/jsch/IdentityFile;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Identity;


# instance fields
.field private DW:Lcom/jcraft/jsch/KeyPair;

.field private FH:Ljava/lang/String;

.field private j6:Lcom/jcraft/jsch/JSch;


# direct methods
.method private constructor <init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/IdentityFile;->j6:Lcom/jcraft/jsch/JSch;

    iput-object p2, p0, Lcom/jcraft/jsch/IdentityFile;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/jcraft/jsch/IdentityFile;->DW:Lcom/jcraft/jsch/KeyPair;

    return-void
.end method

.method static j6(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;
    .registers 4

    new-instance v0, Lcom/jcraft/jsch/IdentityFile;

    invoke-static {p2, p0, p1}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;

    move-result-object p1

    invoke-direct {v0, p2, p0, p1}, Lcom/jcraft/jsch/IdentityFile;-><init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V

    return-object v0
.end method

.method static j6(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;
    .registers 5

    new-instance v0, Lcom/jcraft/jsch/IdentityFile;

    invoke-static {p3, p1, p2}, Lcom/jcraft/jsch/KeyPair;->j6(Lcom/jcraft/jsch/JSch;[B[B)Lcom/jcraft/jsch/KeyPair;

    move-result-object p1

    invoke-direct {v0, p3, p0, p1}, Lcom/jcraft/jsch/IdentityFile;-><init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Lcom/jcraft/jsch/KeyPair;)V

    return-object v0
.end method


# virtual methods
.method public DW()Z
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->DW:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->v5()Z

    move-result v0

    return v0
.end method

.method public DW([B)[B
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->DW:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->DW([B)[B

    move-result-object p1

    return-object p1
.end method

.method public FH()[B
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->DW:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->Hw()[B

    move-result-object v0

    return-object v0
.end method

.method public Hw()Lcom/jcraft/jsch/KeyPair;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->DW:Lcom/jcraft/jsch/KeyPair;

    return-object v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->DW:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->j6()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->DW:Lcom/jcraft/jsch/KeyPair;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->FH:Ljava/lang/String;

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->DW:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v1}, Lcom/jcraft/jsch/KeyPair;->FH()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public j6([B)Z
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->DW:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->j6([B)Z

    move-result p1

    return p1
.end method
