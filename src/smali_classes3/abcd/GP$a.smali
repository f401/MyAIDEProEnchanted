.class Labcd/GP$a;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/GP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final DW:Labcd/GP;

.field private j6:Labcd/sO;


# direct methods
.method constructor <init>(Labcd/GP;Labcd/sO;)V
    .registers 3

    iput-object p1, p0, Labcd/GP$a;->DW:Labcd/GP;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Labcd/GP$a;->j6:Labcd/sO;

    return-void
.end method


# virtual methods
.method j6()[B
    .registers 4

    iget-object v0, p0, Labcd/GP$a;->j6:Labcd/sO;

    invoke-interface {v0}, Labcd/sO;->DW()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Labcd/GP$a;->j6:Labcd/sO;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Labcd/sO;->j6([BI)I

    return-object v0
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Labcd/GP$a;->j6:Labcd/sO;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Labcd/sO;->j6(B)V

    return-void
.end method

.method public write([B)V
    .registers 5

    iget-object v0, p0, Labcd/GP$a;->j6:Labcd/sO;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Labcd/sO;->update([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Labcd/GP$a;->j6:Labcd/sO;

    invoke-interface {v0, p1, p2, p3}, Labcd/sO;->update([BII)V

    return-void
.end method
