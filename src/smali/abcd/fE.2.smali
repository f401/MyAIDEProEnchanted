.class public Labcd/fE;
.super Ljava/lang/Object;


# static fields
.field private static final DW:[B

.field private static final FH:[B

.field private static final Hw:[B

.field private static final Zo:[B

.field private static final j6:[Labcd/yE;

.field private static final v5:[B


# instance fields
.field private EQ:Ljava/lang/String;

.field private VH:Labcd/yE;

.field private gn:[Labcd/yE;

.field private tp:Labcd/KE;

.field private u7:Labcd/KE;

.field private we:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Labcd/yE;

    sput-object v0, Labcd/fE;->j6:[Labcd/yE;

    const-string v0, "tree"

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/fE;->DW:[B

    const-string v0, "parent"

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/fE;->FH:[B

    const-string v0, "author"

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/fE;->Hw:[B

    const-string v0, "committer"

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/fE;->v5:[B

    const-string v0, "encoding"

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/fE;->Zo:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Labcd/fE;->j6:[Labcd/yE;

    iput-object v0, p0, Labcd/fE;->gn:[Labcd/yE;

    sget-object v0, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    iput-object v0, p0, Labcd/fE;->we:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public DW()Labcd/KE;
    .registers 2

    iget-object v0, p0, Labcd/fE;->u7:Labcd/KE;

    return-object v0
.end method

.method public DW(Labcd/KE;)V
    .registers 2

    iput-object p1, p0, Labcd/fE;->tp:Labcd/KE;

    return-void
.end method

.method public FH()Labcd/KE;
    .registers 2

    iget-object v0, p0, Labcd/fE;->tp:Labcd/KE;

    return-object v0
.end method

.method public Hw()Ljava/nio/charset/Charset;
    .registers 2

    iget-object v0, p0, Labcd/fE;->we:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public VH()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/fE;->VH:Labcd/yE;

    return-object v0
.end method

.method public Zo()[Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/fE;->gn:[Labcd/yE;

    return-object v0
.end method

.method public j6(Labcd/KE;)V
    .registers 2

    iput-object p1, p0, Labcd/fE;->u7:Labcd/KE;

    return-void
.end method

.method public j6(Labcd/YD;)V
    .registers 3

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v0

    iput-object v0, p0, Labcd/fE;->VH:Labcd/yE;

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Labcd/fE;->EQ:Ljava/lang/String;

    return-void
.end method

.method public j6(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Labcd/YD;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Labcd/yE;

    iput-object v0, p0, Labcd/fE;->gn:[Labcd/yE;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Labcd/fE;->gn:[Labcd/yE;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YD;

    invoke-virtual {v0}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public j6()[B
    .registers 8

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Labcd/fE;->Hw()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    sget-object v0, Labcd/fE;->DW:[B

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Labcd/fE;->VH()Labcd/yE;

    move-result-object v0

    invoke-virtual {v0, v1}, Labcd/YD;->DW(Ljava/io/OutputStream;)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Labcd/fE;->Zo()[Labcd/yE;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_2

    sget-object v0, Labcd/fE;->Hw:[B

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Labcd/fE;->DW()Labcd/KE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/KE;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v0, Labcd/fE;->v5:[B

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Labcd/fE;->FH()Labcd/KE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/KE;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Labcd/fE;->Hw()Ljava/nio/charset/Charset;

    move-result-object v0

    sget-object v3, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    if-eq v0, v3, :cond_0

    sget-object v0, Labcd/fE;->Zo:[B

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Labcd/fE;->Hw()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Labcd/fE;->v5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Labcd/fE;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_2
    aget-object v5, v3, v0

    :try_start_1
    sget-object v6, Labcd/fE;->FH:[B

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v5, v1}, Labcd/YD;->DW(Ljava/io/OutputStream;)V

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Commit"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "={\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "tree "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/fE;->VH:Labcd/yE;

    const-string v1, "NOT_SET"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/fE;->gn:[Labcd/yE;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v4, :cond_4

    const-string v0, "author "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/fE;->u7:Labcd/KE;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Labcd/KE;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "committer "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/fE;->tp:Labcd/KE;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Labcd/KE;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/fE;->we:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    sget-object v1, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    if-eq v0, v1, :cond_0

    const-string v0, "encoding "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/fE;->we:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/fE;->EQ:Ljava/lang/String;

    if-eqz v0, :cond_3

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "NOT_SET"

    goto :goto_0

    :cond_2
    const-string v0, "NOT_SET"

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_4

    :cond_4
    aget-object v5, v3, v0

    const-string v6, "parent "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method public v5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/fE;->EQ:Ljava/lang/String;

    return-object v0
.end method
