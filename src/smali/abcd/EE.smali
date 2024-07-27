.class public abstract Labcd/EE;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/EE$a;
    }
.end annotation


# instance fields
.field private DW:[B

.field private final j6:Ljava/security/MessageDigest;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Labcd/EE;->j6:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public DW(I[B)Labcd/yE;
    .registers 5

    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Labcd/EE;->DW(I[BII)Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method public DW(I[BII)Labcd/yE;
    .registers 8

    int-to-long v0, p4

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2, p3, p4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {p0, p1, v0, v1, v2}, Labcd/EE;->j6(IJLjava/io/InputStream;)Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method protected DW()Ljava/security/MessageDigest;
    .registers 2

    iget-object v0, p0, Labcd/EE;->j6:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    iget-object v0, p0, Labcd/EE;->j6:Ljava/security/MessageDigest;

    return-object v0
.end method

.method public abstract FH()V
.end method

.method public abstract Hw()V
.end method

.method public abstract j6(Ljava/io/InputStream;)Labcd/AI;
.end method

.method public abstract j6(IJLjava/io/InputStream;)Labcd/yE;
.end method

.method public j6(I[B)Labcd/yE;
    .registers 5

    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Labcd/EE;->j6(I[BII)Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method public j6(I[BII)Labcd/yE;
    .registers 9

    invoke-virtual {p0}, Labcd/EE;->DW()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {p1}, Labcd/hE;->j6(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    int-to-long v2, p4

    invoke-static {v2, v3}, Labcd/hE;->j6(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    invoke-virtual {v0, p2, p3, p4}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Labcd/fE;)Labcd/yE;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Labcd/fE;->j6()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Labcd/EE;->DW(I[B)Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Labcd/mF;)Labcd/yE;
    .registers 3

    invoke-virtual {p1, p0}, Labcd/mF;->j6(Labcd/EE;)Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method protected j6()[B
    .registers 2

    iget-object v0, p0, Labcd/EE;->DW:[B

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/EE;->DW:[B

    :cond_0
    iget-object v0, p0, Labcd/EE;->DW:[B

    return-object v0
.end method
