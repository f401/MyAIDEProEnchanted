.class final Lio/fabric/sdk/android/services/common/z$b;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private DW:I

.field final FH:Lio/fabric/sdk/android/services/common/z;

.field private j6:I


# direct methods
.method private constructor <init>(Lio/fabric/sdk/android/services/common/z;Lio/fabric/sdk/android/services/common/z$a;)V
    .registers 4

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/z$b;->FH:Lio/fabric/sdk/android/services/common/z;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iget v0, p2, Lio/fabric/sdk/android/services/common/z$a;->DW:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lio/fabric/sdk/android/services/common/z;->j6(Lio/fabric/sdk/android/services/common/z;I)I

    move-result p1

    iput p1, p0, Lio/fabric/sdk/android/services/common/z$b;->j6:I

    iget p1, p2, Lio/fabric/sdk/android/services/common/z$a;->FH:I

    iput p1, p0, Lio/fabric/sdk/android/services/common/z$b;->DW:I

    return-void
.end method

.method synthetic constructor <init>(Lio/fabric/sdk/android/services/common/z;Lio/fabric/sdk/android/services/common/z$a;Lio/fabric/sdk/android/services/common/y;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lio/fabric/sdk/android/services/common/z$b;-><init>(Lio/fabric/sdk/android/services/common/z;Lio/fabric/sdk/android/services/common/z$a;)V

    return-void
.end method


# virtual methods
.method public read()I
    .registers 4

    iget v0, p0, Lio/fabric/sdk/android/services/common/z$b;->DW:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z$b;->FH:Lio/fabric/sdk/android/services/common/z;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/z;->j6(Lio/fabric/sdk/android/services/common/z;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget v1, p0, Lio/fabric/sdk/android/services/common/z$b;->j6:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z$b;->FH:Lio/fabric/sdk/android/services/common/z;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/z;->j6(Lio/fabric/sdk/android/services/common/z;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/z$b;->FH:Lio/fabric/sdk/android/services/common/z;

    iget v2, p0, Lio/fabric/sdk/android/services/common/z$b;->j6:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/z;->j6(Lio/fabric/sdk/android/services/common/z;I)I

    move-result v1

    iput v1, p0, Lio/fabric/sdk/android/services/common/z$b;->j6:I

    iget v1, p0, Lio/fabric/sdk/android/services/common/z$b;->DW:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/fabric/sdk/android/services/common/z$b;->DW:I

    return v0
.end method

.method public read([BII)I
    .registers 6

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lio/fabric/sdk/android/services/common/z;->j6(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v0, p2, p3

    if-ltz v0, :cond_2e

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_2e

    iget v0, p0, Lio/fabric/sdk/android/services/common/z$b;->DW:I

    if-lez v0, :cond_2c

    if-le p3, v0, :cond_14

    move p3, v0

    :cond_14
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/z$b;->FH:Lio/fabric/sdk/android/services/common/z;

    iget v1, p0, Lio/fabric/sdk/android/services/common/z$b;->j6:I

    invoke-static {v0, v1, p1, p2, p3}, Lio/fabric/sdk/android/services/common/z;->j6(Lio/fabric/sdk/android/services/common/z;I[BII)V

    iget-object p1, p0, Lio/fabric/sdk/android/services/common/z$b;->FH:Lio/fabric/sdk/android/services/common/z;

    iget p2, p0, Lio/fabric/sdk/android/services/common/z$b;->j6:I

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lio/fabric/sdk/android/services/common/z;->j6(Lio/fabric/sdk/android/services/common/z;I)I

    move-result p1

    iput p1, p0, Lio/fabric/sdk/android/services/common/z$b;->j6:I

    iget p1, p0, Lio/fabric/sdk/android/services/common/z$b;->DW:I

    sub-int/2addr p1, p3

    iput p1, p0, Lio/fabric/sdk/android/services/common/z$b;->DW:I

    return p3

    :cond_2c
    const/4 p1, -0x1

    return p1

    :cond_2e
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method
