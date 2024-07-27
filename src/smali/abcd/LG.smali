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
    .registers 6

    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    new-instance v0, Labcd/LG;

    invoke-direct {v0, v2, v3, v2, v3}, Labcd/LG;-><init>(JJ)V

    sput-object v0, Labcd/LG;->j6:Labcd/LG;

    new-instance v0, Labcd/KG;

    invoke-direct {v0, v4, v5, v4, v5}, Labcd/KG;-><init>(JJ)V

    sput-object v0, Labcd/LG;->DW:Labcd/LG;

    return-void
.end method

.method private constructor <init>(JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Labcd/LG;->Hw:J

    iput-wide p3, p0, Labcd/LG;->FH:J

    invoke-direct {p0, p1, p2}, Labcd/LG;->DW(J)Z

    move-result v0

    iput-boolean v0, p0, Labcd/LG;->v5:Z

    return-void
.end method

.method synthetic constructor <init>(JJLabcd/LG;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/LG;-><init>(JJ)V

    return-void
.end method

.method public static DW(Ljava/io/File;)Labcd/LG;
    .registers 7

    new-instance v0, Labcd/LG;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Labcd/LG;-><init>(JJ)V

    return-object v0
.end method

.method private DW(J)Z
    .registers 8

    iget-wide v0, p0, Labcd/LG;->FH:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x9c4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6(J)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-wide v2, p0, Labcd/LG;->FH:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Labcd/LG;->v5:Z

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Labcd/LG;->Hw:J

    invoke-direct {p0, v2, v3}, Labcd/LG;->DW(J)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Labcd/LG;->Hw:J

    iget-wide v2, p0, Labcd/LG;->Hw:J

    invoke-direct {p0, v2, v3}, Labcd/LG;->DW(J)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public DW(Labcd/LG;)V
    .registers 5

    iget-wide v0, p1, Labcd/LG;->Hw:J

    invoke-direct {p0, v0, v1}, Labcd/LG;->DW(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/LG;->v5:Z

    :cond_0
    iput-wide v0, p0, Labcd/LG;->Hw:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Labcd/LG;

    if-eqz v0, :cond_0

    check-cast p1, Labcd/LG;

    invoke-virtual {p0, p1}, Labcd/LG;->j6(Labcd/LG;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Labcd/LG;->FH:J

    long-to-int v0, v0

    return v0
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

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(Ljava/io/File;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Labcd/LG;->j6(J)Z

    move-result v0

    return v0
.end method
