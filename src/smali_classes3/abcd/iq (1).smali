.class public final Labcd/iq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/iq$a;
    }
.end annotation


# static fields
.field private static final j6:[B


# instance fields
.field private DW:[B

.field private final FH:Labcd/Gn;

.field private Hw:I

.field private final VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/qq;",
            ">;"
        }
    .end annotation
.end field

.field private final tp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/nq;",
            ">;"
        }
    .end annotation
.end field

.field private final u7:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/lq;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    sput-object v0, Labcd/iq;->j6:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Gn;

    invoke-direct {v0}, Labcd/Gn;-><init>()V

    iput-object v0, p0, Labcd/iq;->FH:Labcd/Gn;

    const/4 v0, 0x0

    iput v0, p0, Labcd/iq;->Hw:I

    new-instance v0, Labcd/cq;

    invoke-direct {v0, p0}, Labcd/cq;-><init>(Labcd/iq;)V

    iput-object v0, p0, Labcd/iq;->v5:Ljava/util/List;

    new-instance v0, Labcd/dq;

    invoke-direct {v0, p0}, Labcd/dq;-><init>(Labcd/iq;)V

    iput-object v0, p0, Labcd/iq;->Zo:Ljava/util/List;

    new-instance v0, Labcd/eq;

    invoke-direct {v0, p0}, Labcd/eq;-><init>(Labcd/iq;)V

    iput-object v0, p0, Labcd/iq;->VH:Ljava/util/List;

    new-instance v0, Labcd/fq;

    invoke-direct {v0, p0}, Labcd/fq;-><init>(Labcd/iq;)V

    iput-object v0, p0, Labcd/iq;->gn:Ljava/util/List;

    new-instance v0, Labcd/gq;

    invoke-direct {v0, p0}, Labcd/gq;-><init>(Labcd/iq;)V

    iput-object v0, p0, Labcd/iq;->u7:Ljava/util/List;

    new-instance v0, Labcd/hq;

    invoke-direct {v0, p0}, Labcd/hq;-><init>(Labcd/iq;)V

    iput-object v0, p0, Labcd/iq;->tp:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Wt;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    const-string v1, "classes.dex"

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_5e

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-direct {p0, p1, v2}, Labcd/iq;->j6(Ljava/io/InputStream;I)V

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_8e

    :cond_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected classes.dex in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Labcd/Ut;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_75
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-direct {p0, v0, p1}, Labcd/iq;->j6(Ljava/io/InputStream;I)V

    :goto_8e
    return-void

    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown output extension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Labcd/Ut;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/Ut;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Gn;

    invoke-direct {v0}, Labcd/Gn;-><init>()V

    iput-object v0, p0, Labcd/iq;->FH:Labcd/Gn;

    const/4 v0, 0x0

    iput v0, p0, Labcd/iq;->Hw:I

    new-instance v0, Labcd/cq;

    invoke-direct {v0, p0}, Labcd/cq;-><init>(Labcd/iq;)V

    iput-object v0, p0, Labcd/iq;->v5:Ljava/util/List;

    new-instance v0, Labcd/dq;

    invoke-direct {v0, p0}, Labcd/dq;-><init>(Labcd/iq;)V

    iput-object v0, p0, Labcd/iq;->Zo:Ljava/util/List;

    new-instance v0, Labcd/eq;

    invoke-direct {v0, p0}, Labcd/eq;-><init>(Labcd/iq;)V

    iput-object v0, p0, Labcd/iq;->VH:Ljava/util/List;

    new-instance v0, Labcd/fq;

    invoke-direct {v0, p0}, Labcd/fq;-><init>(Labcd/iq;)V

    iput-object v0, p0, Labcd/iq;->gn:Ljava/util/List;

    new-instance v0, Labcd/gq;

    invoke-direct {v0, p0}, Labcd/gq;-><init>(Labcd/iq;)V

    iput-object v0, p0, Labcd/iq;->u7:Ljava/util/List;

    new-instance v0, Labcd/hq;

    invoke-direct {v0, p0}, Labcd/hq;-><init>(Labcd/iq;)V

    iput-object v0, p0, Labcd/iq;->tp:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Labcd/iq;->j6(Ljava/io/InputStream;I)V

    return-void
.end method

.method static synthetic DW(Labcd/iq;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Labcd/iq;->Zo:Ljava/util/List;

    return-object p0
.end method

.method private static DW(II)V
    .registers 4

    if-ltz p0, :cond_5

    if-ge p0, p1, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", length="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static DW([BII)[B
    .registers 5

    if-gt p1, p2, :cond_1a

    array-length v0, p0

    if-ltz p1, :cond_14

    if-gt p1, v0, :cond_14

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array p2, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_14
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static synthetic FH(Labcd/iq;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Labcd/iq;->v5:Ljava/util/List;

    return-object p0
.end method

.method private static Hw(I)I
    .registers 1

    add-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, -0x4

    return p0
.end method

.method static synthetic Hw(Labcd/iq;)[B
    .registers 1

    iget-object p0, p0, Labcd/iq;->DW:[B

    return-object p0
.end method

.method static synthetic j6(I)I
    .registers 1

    invoke-static {p0}, Labcd/iq;->Hw(I)I

    move-result p0

    return p0
.end method

.method static synthetic j6(Labcd/iq;)Labcd/Gn;
    .registers 1

    iget-object p0, p0, Labcd/iq;->FH:Labcd/Gn;

    return-object p0
.end method

.method static synthetic j6(II)V
    .registers 2

    invoke-static {p0, p1}, Labcd/iq;->DW(II)V

    return-void
.end method

.method private j6(Ljava/io/InputStream;I)V
    .registers 7

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1c

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_8
    sget-object v1, Labcd/iq;->j6:[B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v0, :cond_15

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_8

    :cond_15
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Labcd/iq;->DW:[B

    goto :goto_2a

    :cond_1c
    new-array p2, p2, [B

    iput-object p2, p0, Labcd/iq;->DW:[B

    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object p1, p0, Labcd/iq;->DW:[B

    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    :goto_2a
    iget-object p1, p0, Labcd/iq;->DW:[B

    array-length p1, p1

    iput p1, p0, Labcd/iq;->Hw:I

    iget-object p1, p0, Labcd/iq;->FH:Labcd/Gn;

    invoke-virtual {p1, p0}, Labcd/Gn;->j6(Labcd/iq;)V

    return-void
.end method

.method static synthetic j6([BII)[B
    .registers 3

    invoke-static {p0, p1, p2}, Labcd/iq;->DW([BII)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public DW(I)Labcd/iq$a;
    .registers 4

    if-ltz p1, :cond_d

    iget v0, p0, Labcd/iq;->Hw:I

    if-gt p1, v0, :cond_d

    new-instance v0, Labcd/iq$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Labcd/iq$a;-><init>(Labcd/iq;ILabcd/cq;)V

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " length="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Labcd/iq;->Hw:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public DW()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/qq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/iq;->gn:Ljava/util/List;

    return-object v0
.end method

.method public FH(I)Labcd/fr;
    .registers 2

    if-nez p1, :cond_5

    sget-object p1, Labcd/fr;->j6:Labcd/fr;

    return-object p1

    :cond_5
    invoke-virtual {p0, p1}, Labcd/iq;->DW(I)Labcd/iq$a;

    move-result-object p1

    invoke-virtual {p1}, Labcd/iq$a;->lg()Labcd/fr;

    move-result-object p1

    return-object p1
.end method

.method public FH()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/iq;->v5:Ljava/util/List;

    return-object v0
.end method

.method public Hw()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/iq;->VH:Ljava/util/List;

    return-object v0
.end method

.method public j6()Labcd/Gn;
    .registers 2

    iget-object v0, p0, Labcd/iq;->FH:Labcd/Gn;

    return-object v0
.end method

.method public j6(Labcd/aq;)Labcd/_p;
    .registers 3

    invoke-virtual {p1}, Labcd/aq;->FH()I

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0, p1}, Labcd/iq;->DW(I)Labcd/iq$a;

    move-result-object p1

    invoke-static {p1}, Labcd/iq$a;->j6(Labcd/iq$a;)Labcd/_p;

    move-result-object p1

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "offset == 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/_p$b;)Labcd/bq;
    .registers 3

    invoke-virtual {p1}, Labcd/_p$b;->DW()I

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0, p1}, Labcd/iq;->DW(I)Labcd/iq$a;

    move-result-object p1

    invoke-static {p1}, Labcd/iq$a;->DW(Labcd/iq$a;)Labcd/bq;

    move-result-object p1

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "offset == 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
