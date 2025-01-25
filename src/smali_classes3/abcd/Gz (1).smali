.class Labcd/Gz;
.super Labcd/Hz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Hz;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)Labcd/Hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LHz$a<",
        "Labcd/Hz;",
        ">;"
    }
.end annotation


# instance fields
.field final FH:Ljava/io/InputStream;

.field final Hw:Ljava/io/OutputStream;

.field final v5:Labcd/Hz;


# direct methods
.method constructor <init>(Labcd/Hz;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6

    iput-object p1, p0, Labcd/Gz;->v5:Labcd/Hz;

    iput-object p4, p0, Labcd/Gz;->FH:Ljava/io/InputStream;

    iput-object p5, p0, Labcd/Gz;->Hw:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Labcd/Hz$a;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public DW()Labcd/Hz;
    .registers 5

    iget-object v0, p0, Labcd/Gz;->v5:Labcd/Hz;

    invoke-static {v0}, Labcd/Hz;->j6(Labcd/Hz;)I

    move-result v0

    new-array v0, v0, [B

    :goto_8
    iget-object v1, p0, Labcd/Gz;->FH:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    iget-object v2, p0, Labcd/Gz;->Hw:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_8

    :cond_18
    iget-object v0, p0, Labcd/Gz;->v5:Labcd/Hz;

    return-object v0
.end method

.method public bridge synthetic DW()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/Gz;->DW()Labcd/Hz;

    move-result-object v0

    return-object v0
.end method
