.class public Labcd/WK;
.super Ljava/io/Writer;


# instance fields
.field private final DW:Ljava/io/OutputStreamWriter;

.field private final j6:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Labcd/WK;->j6:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Labcd/WK;->j6()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Labcd/WK;->DW:Ljava/io/OutputStreamWriter;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public j6()Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Labcd/WK;->j6:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/WK;->j6:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Labcd/IK;->j6([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write([CII)V
    .registers 6

    iget-object v0, p0, Labcd/WK;->j6:Ljava/io/ByteArrayOutputStream;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Labcd/WK;->DW:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStreamWriter;->write([CII)V

    iget-object p1, p0, Labcd/WK;->DW:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    monitor-exit v0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method
