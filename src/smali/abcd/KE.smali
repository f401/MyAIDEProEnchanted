.class public Labcd/KE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:J

.field private final Hw:I

.field private final j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Labcd/KE;)V
    .registers 4

    invoke-virtual {p1}, Labcd/KE;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Labcd/KE;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Labcd/KE;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Labcd/UE;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    sget-object v1, Labcd/oF;->j6:Labcd/gE$b;

    invoke-virtual {v0, v1}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/oF;

    invoke-virtual {v0}, Labcd/oF;->DW()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/KE;->j6:Ljava/lang/String;

    invoke-virtual {v0}, Labcd/oF;->j6()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/KE;->DW:Ljava/lang/String;

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    invoke-virtual {v0}, Labcd/QK;->j6()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/KE;->FH:J

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    iget-wide v2, p0, Labcd/KE;->FH:J

    invoke-virtual {v0, v2, v3}, Labcd/QK;->j6(J)I

    move-result v0

    iput v0, p0, Labcd/KE;->Hw:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/KE;->j6:Ljava/lang/String;

    iput-object p2, p0, Labcd/KE;->DW:Ljava/lang/String;

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    invoke-virtual {v0}, Labcd/QK;->j6()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/KE;->FH:J

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    iget-wide v2, p0, Labcd/KE;->FH:J

    invoke-virtual {v0, v2, v3}, Labcd/QK;->j6(J)I

    move-result v0

    iput v0, p0, Labcd/KE;->Hw:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/KE;->j6:Ljava/lang/String;

    iput-object p2, p0, Labcd/KE;->DW:Ljava/lang/String;

    iput-wide p3, p0, Labcd/KE;->FH:J

    iput p5, p0, Labcd/KE;->Hw:I

    return-void
.end method

.method private j6(Ljava/lang/StringBuilder;)V
    .registers 7

    const/16 v4, 0x30

    const/16 v3, 0xa

    iget v0, p0, Labcd/KE;->Hw:I

    if-gez v0, :cond_2

    const/16 v1, 0x2d

    neg-int v0, v0

    :goto_0
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ge v0, v3, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void

    :cond_2
    const/16 v1, 0x2b

    goto :goto_0
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/KE;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public FH()Ljava/util/TimeZone;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Labcd/KE;->j6(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/KE;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/KE;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Labcd/KE;->FH:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Labcd/KE;->j6(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const-wide/16 v4, 0x3e8

    instance-of v0, p1, Labcd/KE;

    if-eqz v0, :cond_0

    check-cast p1, Labcd/KE;

    invoke-virtual {p0}, Labcd/KE;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Labcd/KE;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/KE;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Labcd/KE;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Labcd/KE;->FH:J

    div-long/2addr v0, v4

    iget-wide v2, p1, Labcd/KE;->FH:J

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 7

    invoke-virtual {p0}, Labcd/KE;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Labcd/KE;->FH:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/KE;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE MMM d HH:mm:ss yyyy Z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Labcd/KE;->FH()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-string v2, "PersonIdent["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/KE;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/KE;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Labcd/KE;->FH:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
