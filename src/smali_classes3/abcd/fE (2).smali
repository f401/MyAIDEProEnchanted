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
    .registers 2

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object p1

    iput-object p1, p0, Labcd/fE;->VH:Labcd/yE;

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
            "Ljava/util/List<",
            "+",
            "Labcd/YD;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Labcd/yE;

    iput-object v0, p0, Labcd/fE;->gn:[Labcd/yE;

    const/4 v0, 0x0

    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    return-void

    :cond_10
    iget-object v1, p0, Labcd/fE;->gn:[Labcd/yE;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/YD;

    invoke-virtual {v2}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public j6()[B
    .registers 10

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Labcd/fE;->Hw()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    :try_start_e
    sget-object v2, Labcd/fE;->DW:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Labcd/fE;->VH()Labcd/yE;

    move-result-object v3

    invoke-virtual {v3, v0}, Labcd/YD;->DW(Ljava/io/OutputStream;)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Labcd/fE;->Zo()[Labcd/yE;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2a
    if-lt v6, v5, :cond_98

    sget-object v4, Labcd/fE;->Hw:[B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Labcd/fE;->DW()Labcd/KE;

    move-result-object v4

    invoke-virtual {v4}, Labcd/KE;->Hw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v4, Labcd/fE;->v5:[B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Labcd/fE;->FH()Labcd/KE;

    move-result-object v4

    invoke-virtual {v4}, Labcd/KE;->Hw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Labcd/fE;->Hw()Ljava/nio/charset/Charset;

    move-result-object v4

    sget-object v5, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    if-eq v4, v5, :cond_80

    sget-object v4, Labcd/fE;->Zo:[B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Labcd/fE;->Hw()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_80
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Labcd/fE;->v5()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_93

    invoke-virtual {p0}, Labcd/fE;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_93} :catch_ac

    :cond_93
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_98
    aget-object v7, v4, v6

    :try_start_9a
    sget-object v8, Labcd/fE;->FH:[B

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v7, v0}, Labcd/YD;->DW(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a8} :catch_ac

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2a

    :catch_ac
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_b4

    :goto_b3
    throw v1

    :goto_b4
    goto :goto_b3
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "={\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tree "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/fE;->VH:Labcd/yE;

    const-string v2, "NOT_SET"

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1f
    move-object v1, v2

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/fE;->gn:[Labcd/yE;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2c
    if-lt v5, v4, :cond_86

    const-string v3, "author "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/fE;->u7:Labcd/KE;

    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Labcd/KE;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3d

    :cond_3c
    move-object v3, v2

    :goto_3d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "committer "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/fE;->tp:Labcd/KE;

    if-eqz v3, :cond_50

    invoke-virtual {v3}, Labcd/KE;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/fE;->we:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_6f

    sget-object v3, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    if-eq v2, v3, :cond_6f

    const-string v2, "encoding "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/fE;->we:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/fE;->EQ:Ljava/lang/String;

    if-eqz v1, :cond_77

    goto :goto_79

    :cond_77
    const-string v1, ""

    :goto_79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_86
    aget-object v6, v3, v5

    const-string v7, "parent "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c
.end method

.method public v5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/fE;->EQ:Ljava/lang/String;

    return-object v0
.end method
