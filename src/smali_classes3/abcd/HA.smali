.class public Labcd/HA;
.super Ljava/lang/Object;


# static fields
.field private static j6:Labcd/tA;


# instance fields
.field public DW:I

.field public FH:S

.field public Hw:S

.field public VH:I

.field public Zo:S

.field public gn:I

.field public u7:Ljava/lang/String;

.field public v5:S


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x6054b50

    iput v0, p0, Labcd/HA;->DW:I

    const/4 v0, 0x0

    iput-short v0, p0, Labcd/HA;->FH:S

    iput-short v0, p0, Labcd/HA;->Hw:S

    return-void
.end method

.method private DW(Labcd/LA;)V
    .registers 8

    invoke-static {}, Labcd/HA;->j6()Labcd/tA;

    move-result-object v0

    invoke-interface {v0}, Labcd/tA;->isDebugEnabled()Z

    move-result v0

    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    iput-short v1, p0, Labcd/HA;->FH:S

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_25

    sget-object v4, Labcd/HA;->j6:Labcd/tA;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "This disk number: 0x%04x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_25
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    iput-short v1, p0, Labcd/HA;->Hw:S

    if-eqz v0, :cond_40

    sget-object v4, Labcd/HA;->j6:Labcd/tA;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "Central dir start disk number: 0x%04x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_40
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    iput-short v1, p0, Labcd/HA;->v5:S

    if-eqz v0, :cond_5b

    sget-object v4, Labcd/HA;->j6:Labcd/tA;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "Central entries on this disk: 0x%04x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_5b
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    iput-short v1, p0, Labcd/HA;->Zo:S

    if-eqz v0, :cond_76

    sget-object v4, Labcd/HA;->j6:Labcd/tA;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "Total number of central entries: 0x%04x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_76
    invoke-virtual {p1}, Labcd/LA;->FH()I

    move-result v1

    iput v1, p0, Labcd/HA;->VH:I

    if-eqz v0, :cond_91

    sget-object v4, Labcd/HA;->j6:Labcd/tA;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "Central directory size: 0x%08x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_91
    invoke-virtual {p1}, Labcd/LA;->FH()I

    move-result v1

    iput v1, p0, Labcd/HA;->gn:I

    if-eqz v0, :cond_ac

    sget-object v4, Labcd/HA;->j6:Labcd/tA;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "Central directory offset: 0x%08x"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_ac
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    invoke-virtual {p1, v1}, Labcd/LA;->DW(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/HA;->u7:Ljava/lang/String;

    if-eqz v0, :cond_d0

    sget-object p1, Labcd/HA;->j6:Labcd/tA;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".ZIP file comment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/HA;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_d0
    return-void
.end method

.method public static j6(Labcd/LA;)Labcd/HA;
    .registers 5

    invoke-virtual {p0}, Labcd/LA;->FH()I

    move-result v0

    const v1, 0x6054b50

    if-eq v0, v1, :cond_15

    invoke-virtual {p0}, Labcd/LA;->DW()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Labcd/LA;->j6(J)V

    const/4 p0, 0x0

    return-object p0

    :cond_15
    new-instance v0, Labcd/HA;

    invoke-direct {v0}, Labcd/HA;-><init>()V

    invoke-direct {v0, p0}, Labcd/HA;->DW(Labcd/LA;)V

    return-object v0
.end method

.method public static j6()Labcd/tA;
    .registers 1

    sget-object v0, Labcd/HA;->j6:Labcd/tA;

    if-nez v0, :cond_10

    const-class v0, Labcd/HA;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/uA;->j6(Ljava/lang/String;)Labcd/tA;

    move-result-object v0

    sput-object v0, Labcd/HA;->j6:Labcd/tA;

    :cond_10
    sget-object v0, Labcd/HA;->j6:Labcd/tA;

    return-object v0
.end method


# virtual methods
.method public j6(Labcd/NA;)V
    .registers 3

    invoke-static {}, Labcd/HA;->j6()Labcd/tA;

    move-result-object v0

    invoke-interface {v0}, Labcd/tA;->isDebugEnabled()Z

    iget v0, p0, Labcd/HA;->DW:I

    invoke-virtual {p1, v0}, Labcd/NA;->j6(I)V

    iget-short v0, p0, Labcd/HA;->FH:S

    invoke-virtual {p1, v0}, Labcd/NA;->j6(S)V

    iget-short v0, p0, Labcd/HA;->Hw:S

    invoke-virtual {p1, v0}, Labcd/NA;->j6(S)V

    iget-short v0, p0, Labcd/HA;->v5:S

    invoke-virtual {p1, v0}, Labcd/NA;->j6(S)V

    iget-short v0, p0, Labcd/HA;->Zo:S

    invoke-virtual {p1, v0}, Labcd/NA;->j6(S)V

    iget v0, p0, Labcd/HA;->VH:I

    invoke-virtual {p1, v0}, Labcd/NA;->j6(I)V

    iget v0, p0, Labcd/HA;->gn:I

    invoke-virtual {p1, v0}, Labcd/NA;->j6(I)V

    iget-object v0, p0, Labcd/HA;->u7:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Labcd/NA;->j6(S)V

    iget-object v0, p0, Labcd/HA;->u7:Ljava/lang/String;

    invoke-virtual {p1, v0}, Labcd/NA;->j6(Ljava/lang/String;)V

    return-void
.end method
