.class public Labcd/LG;
.super Ljava/lang/Object;


# static fields
.field public static final DW:Labcd/LG;

.field public static final j6:Labcd/LG;


# instance fields
.field private final FH:J

.field private volatile Hw:J

.field private v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Labcd/LG;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2, v1, v2}, Labcd/LG;-><init>(JJ)V

    sput-object v0, Labcd/LG;->j6:Labcd/LG;

    new-instance v0, Labcd/KG;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Labcd/KG;-><init>(JJ)V

    sput-object v0, Labcd/LG;->DW:Labcd/LG;

    return-void
.end method

.method private constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Labcd/LG;->Hw:J

    iput-wide p3, p0, Labcd/LG;->FH:J

    invoke-direct {p0, p1, p2}, Labcd/LG;->DW(J)Z

    move-result p1

    iput-boolean p1, p0, Labcd/LG;->v5:Z

    return-void
.end method

.method synthetic constructor <init>(JJLabcd/LG;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/LG;-><init>(JJ)V

    return-void
.end method

.method public static DW(Ljava/io/File;)Labcd/LG;
    .registers 6

    new-instance v0, Labcd/LG;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/LG;-><init>(JJ)V

    return-object v0
.end method

.method private DW(J)Z
    .registers 6

    iget-wide v0, p0, Labcd/LG;->FH:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x9c4

    cmp-long v2, p1, v0

    if-lez v2, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method private j6(J)Z
    .registers 7

    iget-wide v0, p0, Labcd/LG;->FH:J

    const/4 v2, 0x1

    cmp-long v3, v0, p1

    if-eqz v3, :cond_8

    return v2

    :cond_8
    iget-boolean p1, p0, Labcd/LG;->v5:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_e

    return p2

    :cond_e
    iget-wide v0, p0, Labcd/LG;->Hw:J

    invoke-direct {p0, v0, v1}, Labcd/LG;->DW(J)Z

    move-result p1

    if-eqz p1, :cond_17

    return p2

    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/LG;->Hw:J

    iget-wide v0, p0, Labcd/LG;->Hw:J

    invoke-direct {p0, v0, v1}, Labcd/LG;->DW(J)Z

    move-result p1

    if-eqz p1, :cond_26

    return p2

    :cond_26
    return v2
.end method


# virtual methods
.method public DW(Labcd/LG;)V
    .registers 4

    iget-wide v0, p1, Labcd/LG;->Hw:J

    invoke-direct {p0, v0, v1}, Labcd/LG;->DW(J)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    iput-boolean p1, p0, Labcd/LG;->v5:Z

    :cond_b
    iput-wide v0, p0, Labcd/LG;->Hw:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Labcd/LG;

    if-eqz v0, :cond_b

    check-cast p1, Labcd/LG;

    invoke-virtual {p0, p1}, Labcd/LG;->j6(Labcd/LG;)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Labcd/LG;->FH:J

    long-to-int v1, v0

    return v1
.end method

.method public j6()J
    .registers 3

    iget-wide v0, p0, Labcd/LG;->FH:J

    return-wide v0
.end method

.method public j6(Labcd/LG;)Z
    .registers 6

    iget-wide v0, p0, Labcd/LG;->FH:J

    iget-wide v2, p1, Labcd/LG;->FH:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public j6(Ljava/io/File;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Labcd/LG;->j6(J)Z

    move-result p1

    return p1
.end method
