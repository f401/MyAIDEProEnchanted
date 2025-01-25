.class Labcd/RK$b;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/RK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private DW:I

.field private FH:Labcd/RK$a;

.field private Hw:I

.field private j6:[B

.field final v5:Labcd/RK;


# direct methods
.method constructor <init>(Labcd/RK;)V
    .registers 3

    iput-object p1, p0, Labcd/RK$b;->v5:Labcd/RK;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-static {p1}, Labcd/RK;->j6(Labcd/RK;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Labcd/RK$b;->DW:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/RK$a;

    iput-object p1, p0, Labcd/RK$b;->FH:Labcd/RK$a;

    return-void
.end method

.method private j6()Z
    .registers 5

    iget v0, p0, Labcd/RK$b;->DW:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Labcd/RK$b;->DW:I

    iget-object v2, p0, Labcd/RK$b;->v5:Labcd/RK;

    invoke-static {v2}, Labcd/RK;->j6(Labcd/RK;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_26

    iget-object v0, p0, Labcd/RK$b;->v5:Labcd/RK;

    invoke-static {v0}, Labcd/RK;->j6(Labcd/RK;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Labcd/RK$b;->DW:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/RK$a;

    iput-object v0, p0, Labcd/RK$b;->FH:Labcd/RK$a;

    iput v3, p0, Labcd/RK$b;->Hw:I

    return v1

    :cond_26
    return v3
.end method


# virtual methods
.method public read()I
    .registers 3

    iget-object v0, p0, Labcd/RK$b;->j6:[B

    const/4 v1, 0x1

    if-nez v0, :cond_9

    new-array v0, v1, [B

    iput-object v0, p0, Labcd/RK$b;->j6:[B

    :cond_9
    iget-object v0, p0, Labcd/RK$b;->j6:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Labcd/RK$b;->j6:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_1a

    :cond_19
    const/4 v0, -0x1

    :goto_1a
    return v0
.end method

.method public read([BII)I
    .registers 8

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    :cond_4
    :goto_4
    if-gtz p3, :cond_7

    goto :goto_2d

    :cond_7
    iget-object v1, p0, Labcd/RK$b;->FH:Labcd/RK$a;

    iget v1, v1, Labcd/RK$a;->DW:I

    iget v2, p0, Labcd/RK$b;->Hw:I

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_26

    iget-object v2, p0, Labcd/RK$b;->FH:Labcd/RK$a;

    iget-object v2, v2, Labcd/RK$a;->j6:[B

    iget v3, p0, Labcd/RK$b;->Hw:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Labcd/RK$b;->Hw:I

    add-int/2addr v2, v1

    iput v2, p0, Labcd/RK$b;->Hw:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    add-int/2addr v0, v1

    goto :goto_4

    :cond_26
    invoke-direct {p0}, Labcd/RK$b;->j6()Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_4

    :cond_2d
    :goto_2d
    if-lez v0, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, -0x1

    :goto_31
    return v0
.end method

.method public skip(J)J
    .registers 9

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_3
    cmp-long v4, v0, p1

    if-ltz v4, :cond_8

    goto :goto_27

    :cond_8
    iget-object v4, p0, Labcd/RK$b;->FH:Labcd/RK$a;

    iget v4, v4, Labcd/RK$a;->DW:I

    iget v5, p0, Labcd/RK$b;->Hw:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    if-lez v5, :cond_20

    iget v4, p0, Labcd/RK$b;->Hw:I

    add-int/2addr v4, v5

    iput v4, p0, Labcd/RK$b;->Hw:I

    int-to-long v4, v5

    add-long/2addr v2, v4

    sub-long/2addr p1, v4

    goto :goto_3

    :cond_20
    invoke-direct {p0}, Labcd/RK$b;->j6()Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_3

    :cond_27
    :goto_27
    return-wide v2
.end method
