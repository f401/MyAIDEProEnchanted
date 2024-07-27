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

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [B

    invoke-virtual {p0, v0, v3, v2}, Labcd/jH;->read([BII)I

    move-result v1

    if-ne v1, v2, :cond_0

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
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

    move-result v0

    iget-wide v2, p0, Labcd/jH;->FH:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/jH;->FH:J

    return v0
.end method
