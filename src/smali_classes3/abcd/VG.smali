.class Labcd/VG;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/WG;->FH()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DW:Ljava/io/OutputStream;

.field final j6:Labcd/WG;


# direct methods
.method constructor <init>(Labcd/WG;Ljava/io/OutputStream;)V
    .registers 3

    iput-object p1, p0, Labcd/VG;->j6:Labcd/WG;

    iput-object p2, p0, Labcd/VG;->DW:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/VG;->j6:Labcd/WG;

    invoke-static {v0}, Labcd/WG;->j6(Labcd/WG;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Labcd/VG;->j6:Labcd/WG;

    invoke-static {v0}, Labcd/WG;->DW(Labcd/WG;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    :cond_16
    iget-object v0, p0, Labcd/VG;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Labcd/VG;->j6:Labcd/WG;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/WG;->j6(Labcd/WG;Ljava/io/FileOutputStream;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_21} :catch_29
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception v0

    iget-object v1, p0, Labcd/VG;->j6:Labcd/WG;

    invoke-virtual {v1}, Labcd/WG;->v5()V

    throw v0

    :catch_29
    move-exception v0

    iget-object v1, p0, Labcd/VG;->j6:Labcd/WG;

    invoke-virtual {v1}, Labcd/WG;->v5()V

    throw v0

    :catch_30
    move-exception v0

    iget-object v1, p0, Labcd/VG;->j6:Labcd/WG;

    invoke-virtual {v1}, Labcd/WG;->v5()V

    throw v0
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Labcd/VG;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 3

    iget-object v0, p0, Labcd/VG;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Labcd/VG;->DW:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
