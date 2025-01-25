.class Labcd/jH;
.super Ljava/io/InputStream;


# instance fields
.field private final DW:Labcd/aH;

.field private FH:J

.field private final j6:Labcd/wH;


# direct methods
.method constructor <init>(Labcd/aH;JLabcd/wH;)V
    .registers 5

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Labcd/jH;->DW:Labcd/aH;

    iput-wide p2, p0, Labcd/jH;->FH:J

    iput-object p4, p0, Labcd/jH;->j6:Labcd/wH;

    invoke-virtual {p4, p1, p2, p3}, Labcd/wH;->j6(Labcd/aH;J)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Labcd/jH;->j6:Labcd/wH;

    invoke-virtual {v0}, Labcd/wH;->FH()V

    return-void
.end method

.method public read()I
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Labcd/jH;->read([BII)I

    move-result v3

    if-ne v3, v0, :cond_f

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    goto :goto_10

    :cond_f
    const/4 v0, -0x1

    :goto_10
    return v0
.end method

.method public read([BII)I
    .registers 11

    iget-object v0, p0, Labcd/jH;->j6:Labcd/wH;

    iget-object v1, p0, Labcd/jH;->DW:Labcd/aH;

    iget-wide v2, p0, Labcd/jH;->FH:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Labcd/wH;->j6(Labcd/aH;J[BII)I

    move-result p1

    iget-wide p2, p0, Labcd/jH;->FH:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Labcd/jH;->FH:J

    return p1
.end method
