.class Labcd/MP$a;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/MP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final DW:Labcd/MP;

.field private j6:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Labcd/MP;Ljava/security/MessageDigest;)V
    .registers 3

    iput-object p1, p0, Labcd/MP$a;->DW:Labcd/MP;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Labcd/MP$a;->j6:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method j6()[B
    .registers 2

    iget-object v0, p0, Labcd/MP$a;->j6:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Labcd/MP$a;->j6:Ljava/security/MessageDigest;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public write([B)V
    .registers 3

    iget-object v0, p0, Labcd/MP$a;->j6:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Labcd/MP$a;->j6:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
