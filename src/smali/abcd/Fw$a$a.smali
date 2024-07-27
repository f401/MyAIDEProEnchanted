.class Labcd/Fw$a$a;
.super Ljava/io/FilterOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Fw$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private DW:J

.field private FH:J

.field final Hw:Labcd/Fw$a;

.field private j6:J


# direct methods
.method public constructor <init>(Labcd/Fw$a;Ljava/io/OutputStream;)V
    .registers 5

    const-wide/16 v0, 0x0

    iput-object p1, p0, Labcd/Fw$a$a;->Hw:Labcd/Fw$a;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-wide v0, p0, Labcd/Fw$a$a;->j6:J

    iput-wide v0, p0, Labcd/Fw$a$a;->DW:J

    iput-wide v0, p0, Labcd/Fw$a$a;->FH:J

    invoke-static {p1}, Labcd/Fw$a;->j6(Labcd/Fw$a;)Labcd/Fw;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Fw;->j6()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/Fw$a$a;->DW:J

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 8

    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    iget-wide v0, p0, Labcd/Fw$a$a;->FH:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/Fw$a$a;->FH:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Labcd/Fw$a$a;->j6:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Labcd/Fw$a$a;->DW:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput-wide v0, p0, Labcd/Fw$a$a;->j6:J

    iget-object v0, p0, Labcd/Fw$a$a;->Hw:Labcd/Fw$a;

    invoke-static {v0}, Labcd/Fw$a;->j6(Labcd/Fw$a;)Labcd/Fw;

    move-result-object v0

    iget-wide v2, p0, Labcd/Fw$a$a;->FH:J

    iget-object v1, p0, Labcd/Fw$a$a;->Hw:Labcd/Fw$a;

    invoke-static {v1}, Labcd/Fw$a;->DW(Labcd/Fw$a;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Labcd/Fw;->j6(JJ)V

    :cond_0
    return-void
.end method

.method public write([BII)V
    .registers 10

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v0, p0, Labcd/Fw$a$a;->FH:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/Fw$a$a;->FH:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Labcd/Fw$a$a;->j6:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Labcd/Fw$a$a;->DW:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput-wide v0, p0, Labcd/Fw$a$a;->j6:J

    iget-object v0, p0, Labcd/Fw$a$a;->Hw:Labcd/Fw$a;

    invoke-static {v0}, Labcd/Fw$a;->j6(Labcd/Fw$a;)Labcd/Fw;

    move-result-object v0

    iget-wide v2, p0, Labcd/Fw$a$a;->FH:J

    iget-object v1, p0, Labcd/Fw$a$a;->Hw:Labcd/Fw$a;

    invoke-static {v1}, Labcd/Fw$a;->DW(Labcd/Fw$a;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Labcd/Fw;->j6(JJ)V

    :cond_0
    return-void
.end method
