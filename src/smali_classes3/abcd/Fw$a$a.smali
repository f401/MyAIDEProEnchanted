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

    iput-object p1, p0, Labcd/Fw$a$a;->Hw:Labcd/Fw$a;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Labcd/Fw$a$a;->j6:J

    iput-wide v0, p0, Labcd/Fw$a$a;->DW:J

    iput-wide v0, p0, Labcd/Fw$a$a;->FH:J

    invoke-static {p1}, Labcd/Fw$a;->j6(Labcd/Fw$a;)Labcd/Fw;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Fw;->j6()J

    move-result-wide p1

    iput-wide p1, p0, Labcd/Fw$a$a;->DW:J

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

    cmp-long p1, v2, v4

    if-lez p1, :cond_2b

    iput-wide v0, p0, Labcd/Fw$a$a;->j6:J

    iget-object p1, p0, Labcd/Fw$a$a;->Hw:Labcd/Fw$a;

    invoke-static {p1}, Labcd/Fw$a;->j6(Labcd/Fw$a;)Labcd/Fw;

    move-result-object p1

    iget-wide v0, p0, Labcd/Fw$a$a;->FH:J

    iget-object v2, p0, Labcd/Fw$a$a;->Hw:Labcd/Fw$a;

    invoke-static {v2}, Labcd/Fw$a;->DW(Labcd/Fw$a;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Labcd/Fw;->j6(JJ)V

    :cond_2b
    return-void
.end method

.method public write([BII)V
    .registers 8

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide p1, p0, Labcd/Fw$a$a;->FH:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Labcd/Fw$a$a;->FH:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Labcd/Fw$a$a;->j6:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Labcd/Fw$a$a;->DW:J

    cmp-long p3, v0, v2

    if-lez p3, :cond_2c

    iput-wide p1, p0, Labcd/Fw$a$a;->j6:J

    iget-object p1, p0, Labcd/Fw$a$a;->Hw:Labcd/Fw$a;

    invoke-static {p1}, Labcd/Fw$a;->j6(Labcd/Fw$a;)Labcd/Fw;

    move-result-object p1

    iget-wide p2, p0, Labcd/Fw$a$a;->FH:J

    iget-object v0, p0, Labcd/Fw$a$a;->Hw:Labcd/Fw$a;

    invoke-static {v0}, Labcd/Fw$a;->DW(Labcd/Fw$a;)J

    move-result-wide v0

    invoke-virtual {p1, p2, p3, v0, v1}, Labcd/Fw;->j6(JJ)V

    :cond_2c
    return-void
.end method
