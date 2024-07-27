.class public Labcd/MA;
.super Ljava/lang/Object;


# static fields
.field static j6:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd-yy HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/MA;->j6:Ljava/text/DateFormat;

    return-void
.end method

.method public static j6(Labcd/tA;)V
    .registers 2

    const-string v0, " Length   Method    Size  Ratio   Date   Time   CRC-32    Name"

    invoke-interface {p0, v0}, Labcd/tA;->FH(Ljava/lang/String;)V

    const-string v0, "--------  ------  ------- -----   ----   ----   ------    ----"

    invoke-interface {p0, v0}, Labcd/tA;->FH(Ljava/lang/String;)V

    return-void
.end method

.method public static j6(Labcd/tA;Labcd/IA;)V
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p1}, Labcd/IA;->QX()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Labcd/IA;->QX()I

    move-result v0

    invoke-virtual {p1}, Labcd/IA;->j6()I

    move-result v2

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p1}, Labcd/IA;->QX()I

    move-result v2

    div-int/2addr v0, v2

    :goto_0
    invoke-virtual {p1}, Labcd/IA;->QX()I

    move-result v3

    invoke-virtual {p1}, Labcd/IA;->DW()S

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Stored"

    :goto_1
    const-string v4, "%8d  %6s %8d %4d%% %s  %08x  %s"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Labcd/IA;->j6()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x4

    sget-object v1, Labcd/MA;->j6:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Labcd/IA;->XL()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x5

    invoke-virtual {p1}, Labcd/IA;->FH()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x6

    invoke-virtual {p1}, Labcd/IA;->EQ()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Labcd/tA;->FH(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "Defl:N"

    goto :goto_1
.end method
