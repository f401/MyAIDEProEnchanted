.class public Labcd/IA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static DW:Labcd/tA;

.field private static j6:[B


# instance fields
.field private EQ:I

.field private FH:Labcd/LA;

.field private Hw:S

.field private J0:Ljava/lang/String;

.field private J8:[B

.field private Mr:I

.field private QX:Ljava/lang/String;

.field private U2:J

.field private VH:S

.field private Ws:S

.field private XL:S

.field private Zo:S

.field private a8:[B

.field private aM:S

.field private gn:S

.field private j3:I

.field private lg:Labcd/KA;

.field private tp:I

.field private u7:S

.field private v5:S

.field private we:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Labcd/IA;->j6:[B

    return-void
.end method

.method public constructor <init>(Labcd/LA;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Labcd/IA;->Ws:S

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Labcd/IA;->U2:J

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/IA;->a8:[B

    iput-object v0, p0, Labcd/IA;->lg:Labcd/KA;

    iput-object p1, p0, Labcd/IA;->FH:Labcd/LA;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Labcd/IA;->Ws:S

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Labcd/IA;->U2:J

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/IA;->a8:[B

    iput-object v1, p0, Labcd/IA;->lg:Labcd/KA;

    iput-object p1, p0, Labcd/IA;->J0:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Labcd/IA;->QX:Ljava/lang/String;

    const/16 p1, 0x8

    iput-short p1, p0, Labcd/IA;->VH:S

    new-array p1, v0, [B

    iput-object p1, p0, Labcd/IA;->J8:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Labcd/IA;->j6(J)V

    return-void
.end method

.method private DW(Labcd/LA;)V
    .registers 11

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v0

    invoke-interface {v0}, Labcd/tA;->isDebugEnabled()Z

    move-result v0

    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    iput-short v1, p0, Labcd/IA;->Hw:S

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_25

    sget-object v4, Labcd/IA;->DW:Labcd/tA;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "Version made by: 0x%04x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_25
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    iput-short v1, p0, Labcd/IA;->v5:S

    if-eqz v0, :cond_40

    sget-object v4, Labcd/IA;->DW:Labcd/tA;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "Version required: 0x%04x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_40
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    iput-short v1, p0, Labcd/IA;->Zo:S

    if-eqz v0, :cond_5b

    sget-object v4, Labcd/IA;->DW:Labcd/tA;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "General purpose bits: 0x%04x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_5b
    iget-short v1, p0, Labcd/IA;->Zo:S

    const v4, 0xf7f1

    and-int/2addr v1, v4

    if-nez v1, :cond_214

    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    iput-short v1, p0, Labcd/IA;->VH:S

    if-eqz v0, :cond_7e

    sget-object v4, Labcd/IA;->DW:Labcd/tA;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "Compression: 0x%04x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_7e
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    iput-short v1, p0, Labcd/IA;->gn:S

    if-eqz v0, :cond_99

    sget-object v4, Labcd/IA;->DW:Labcd/tA;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "Modification time: 0x%04x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_99
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    iput-short v1, p0, Labcd/IA;->u7:S

    if-eqz v0, :cond_b4

    sget-object v4, Labcd/IA;->DW:Labcd/tA;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "Modification date: 0x%04x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_b4
    invoke-virtual {p1}, Labcd/LA;->FH()I

    move-result v1

    iput v1, p0, Labcd/IA;->tp:I

    if-eqz v0, :cond_cf

    sget-object v4, Labcd/IA;->DW:Labcd/tA;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "CRC-32: 0x%04x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_cf
    invoke-virtual {p1}, Labcd/LA;->FH()I

    move-result v1

    iput v1, p0, Labcd/IA;->EQ:I

    if-eqz v0, :cond_ea

    sget-object v4, Labcd/IA;->DW:Labcd/tA;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "Compressed size: 0x%04x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_ea
    invoke-virtual {p1}, Labcd/LA;->FH()I

    move-result v1

    iput v1, p0, Labcd/IA;->we:I

    if-eqz v0, :cond_105

    sget-object v4, Labcd/IA;->DW:Labcd/tA;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "Size: 0x%04x"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_105
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    if-eqz v0, :cond_11e

    sget-object v4, Labcd/IA;->DW:Labcd/tA;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "File name length: 0x%04x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_11e
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v4

    if-eqz v0, :cond_137

    sget-object v5, Labcd/IA;->DW:Labcd/tA;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "Extra length: 0x%04x"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_137
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v5

    if-eqz v0, :cond_150

    sget-object v6, Labcd/IA;->DW:Labcd/tA;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "File comment length: 0x%04x"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_150
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v6

    iput-short v6, p0, Labcd/IA;->XL:S

    if-eqz v0, :cond_16b

    sget-object v7, Labcd/IA;->DW:Labcd/tA;

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v8, v3

    const-string v6, "Disk number start: 0x%04x"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_16b
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v6

    iput-short v6, p0, Labcd/IA;->aM:S

    if-eqz v0, :cond_186

    sget-object v7, Labcd/IA;->DW:Labcd/tA;

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v8, v3

    const-string v6, "Internal attributes: 0x%04x"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_186
    invoke-virtual {p1}, Labcd/LA;->FH()I

    move-result v6

    iput v6, p0, Labcd/IA;->j3:I

    if-eqz v0, :cond_1a1

    sget-object v7, Labcd/IA;->DW:Labcd/tA;

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v3

    const-string v6, "External attributes: 0x%08x"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_1a1
    invoke-virtual {p1}, Labcd/LA;->FH()I

    move-result v6

    iput v6, p0, Labcd/IA;->Mr:I

    if-eqz v0, :cond_1bc

    sget-object v7, Labcd/IA;->DW:Labcd/tA;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const-string v6, "Local header offset: 0x%08x"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_1bc
    invoke-virtual {p1, v1}, Labcd/LA;->DW(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/IA;->J0:Ljava/lang/String;

    if-eqz v0, :cond_1dc

    sget-object v1, Labcd/IA;->DW:Labcd/tA;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filename: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Labcd/IA;->J0:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_1dc
    invoke-virtual {p1, v4}, Labcd/LA;->j6(I)[B

    move-result-object v1

    iput-object v1, p0, Labcd/IA;->J8:[B

    invoke-virtual {p1, v5}, Labcd/LA;->DW(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/IA;->QX:Ljava/lang/String;

    if-eqz v0, :cond_202

    sget-object p1, Labcd/IA;->DW:Labcd/tA;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File comment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/IA;->QX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_202
    iget-short p1, p0, Labcd/IA;->Zo:S

    and-int/lit16 p1, p1, 0x800

    int-to-short p1, p1

    iput-short p1, p0, Labcd/IA;->Zo:S

    iget p1, p0, Labcd/IA;->we:I

    if-nez p1, :cond_213

    iput v3, p0, Labcd/IA;->EQ:I

    iput-short v3, p0, Labcd/IA;->VH:S

    iput v3, p0, Labcd/IA;->tp:I

    :cond_213
    return-void

    :cond_214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t handle general purpose bits == "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v2, [Ljava/lang/Object;

    iget-short v1, p0, Labcd/IA;->Zo:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "0x%04x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j6(Labcd/LA;)Labcd/IA;
    .registers 5

    invoke-virtual {p0}, Labcd/LA;->FH()I

    move-result v0

    const v1, 0x2014b50

    if-eq v0, v1, :cond_15

    invoke-virtual {p0}, Labcd/LA;->DW()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Labcd/LA;->j6(J)V

    const/4 p0, 0x0

    return-object p0

    :cond_15
    new-instance v0, Labcd/IA;

    invoke-direct {v0, p0}, Labcd/IA;-><init>(Labcd/LA;)V

    invoke-direct {v0, p0}, Labcd/IA;->DW(Labcd/LA;)V

    return-object v0
.end method

.method public static tp()Labcd/tA;
    .registers 1

    sget-object v0, Labcd/IA;->DW:Labcd/tA;

    if-nez v0, :cond_10

    const-class v0, Labcd/IA;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/uA;->j6(Ljava/lang/String;)Labcd/tA;

    move-result-object v0

    sput-object v0, Labcd/IA;->DW:Labcd/tA;

    :cond_10
    sget-object v0, Labcd/IA;->DW:Labcd/tA;

    return-object v0
.end method


# virtual methods
.method public DW()S
    .registers 2

    iget-short v0, p0, Labcd/IA;->VH:S

    return v0
.end method

.method public DW(Labcd/NA;)V
    .registers 16

    iget-object v0, p0, Labcd/IA;->a8:[B

    const-wide/16 v1, 0x0

    if-nez v0, :cond_13

    iget-wide v3, p0, Labcd/IA;->U2:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_13

    iget-object v0, p0, Labcd/IA;->FH:Labcd/LA;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Labcd/IA;->Mr()V

    :cond_13
    invoke-virtual {p1}, Labcd/NA;->DW()I

    move-result v0

    iput v0, p0, Labcd/IA;->Mr:I

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v0

    invoke-interface {v0}, Labcd/tA;->isDebugEnabled()Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_41

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    iget v8, p0, Labcd/IA;->Mr:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, p0, Labcd/IA;->J0:Ljava/lang/String;

    aput-object v8, v7, v4

    const-string v8, "Writing local header at 0x%08x - %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_41
    iget-object v6, p0, Labcd/IA;->lg:Labcd/KA;

    if-eqz v6, :cond_69

    invoke-virtual {v6}, Labcd/KA;->close()V

    iget-object v6, p0, Labcd/IA;->lg:Labcd/KA;

    invoke-virtual {v6}, Labcd/KA;->DW()I

    move-result v6

    iput v6, p0, Labcd/IA;->we:I

    iget-object v6, p0, Labcd/IA;->lg:Labcd/KA;

    invoke-virtual {v6}, Labcd/KA;->FH()Ljava/io/OutputStream;

    move-result-object v6

    check-cast v6, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, p0, Labcd/IA;->a8:[B

    array-length v6, v6

    iput v6, p0, Labcd/IA;->EQ:I

    iget-object v6, p0, Labcd/IA;->lg:Labcd/KA;

    invoke-virtual {v6}, Labcd/KA;->j6()I

    move-result v6

    iput v6, p0, Labcd/IA;->tp:I

    :cond_69
    const v6, 0x4034b50

    invoke-virtual {p1, v6}, Labcd/NA;->j6(I)V

    iget-short v6, p0, Labcd/IA;->v5:S

    invoke-virtual {p1, v6}, Labcd/NA;->j6(S)V

    iget-short v6, p0, Labcd/IA;->Zo:S

    invoke-virtual {p1, v6}, Labcd/NA;->j6(S)V

    iget-short v6, p0, Labcd/IA;->VH:S

    invoke-virtual {p1, v6}, Labcd/NA;->j6(S)V

    iget-short v6, p0, Labcd/IA;->gn:S

    invoke-virtual {p1, v6}, Labcd/NA;->j6(S)V

    iget-short v6, p0, Labcd/IA;->u7:S

    invoke-virtual {p1, v6}, Labcd/NA;->j6(S)V

    iget v6, p0, Labcd/IA;->tp:I

    invoke-virtual {p1, v6}, Labcd/NA;->j6(I)V

    iget v6, p0, Labcd/IA;->EQ:I

    invoke-virtual {p1, v6}, Labcd/NA;->j6(I)V

    iget v6, p0, Labcd/IA;->we:I

    invoke-virtual {p1, v6}, Labcd/NA;->j6(I)V

    iget-object v6, p0, Labcd/IA;->J0:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-short v6, v6

    invoke-virtual {p1, v6}, Labcd/NA;->j6(S)V

    iput-short v5, p0, Labcd/IA;->Ws:S

    iget-short v6, p0, Labcd/IA;->VH:S

    if-nez v6, :cond_c4

    invoke-virtual {p1}, Labcd/NA;->DW()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, p0, Labcd/IA;->J0:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Labcd/IA;->J8:[B

    array-length v7, v7

    add-int/2addr v6, v7

    int-to-long v6, v6

    const-wide/16 v8, 0x4

    rem-long/2addr v6, v8

    long-to-int v7, v6

    int-to-short v6, v7

    if-lez v6, :cond_c4

    rsub-int/lit8 v6, v6, 0x4

    int-to-short v6, v6

    iput-short v6, p0, Labcd/IA;->Ws:S

    :cond_c4
    iget-object v6, p0, Labcd/IA;->J8:[B

    array-length v6, v6

    iget-short v7, p0, Labcd/IA;->Ws:S

    add-int/2addr v6, v7

    int-to-short v6, v6

    invoke-virtual {p1, v6}, Labcd/NA;->j6(S)V

    iget-object v6, p0, Labcd/IA;->J0:Ljava/lang/String;

    invoke-virtual {p1, v6}, Labcd/NA;->j6(Ljava/lang/String;)V

    iget-object v6, p0, Labcd/IA;->J8:[B

    invoke-virtual {p1, v6}, Labcd/NA;->j6([B)V

    iget-short v6, p0, Labcd/IA;->Ws:S

    if-lez v6, :cond_e1

    sget-object v7, Labcd/IA;->j6:[B

    invoke-virtual {p1, v7, v5, v6}, Labcd/NA;->j6([BII)V

    :cond_e1
    if-eqz v0, :cond_fc

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/NA;->DW()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, "Data position 0x%08x"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_fc
    iget-object v6, p0, Labcd/IA;->a8:[B

    const-string v7, "Wrote %d bytes"

    if-eqz v6, :cond_11f

    invoke-virtual {p1, v6}, Labcd/NA;->j6([B)V

    if-eqz v0, :cond_198

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Labcd/IA;->a8:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Labcd/tA;->FH(Ljava/lang/String;)V

    goto/16 :goto_198

    :cond_11f
    if-eqz v0, :cond_138

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Object;

    iget-wide v9, p0, Labcd/IA;->U2:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    const-string v9, "Seeking to position 0x%08x"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_138
    iget-object v6, p0, Labcd/IA;->FH:Labcd/LA;

    iget-wide v8, p0, Labcd/IA;->U2:J

    invoke-virtual {v6, v8, v9}, Labcd/LA;->j6(J)V

    iget v6, p0, Labcd/IA;->EQ:I

    const/16 v8, 0x1fa0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v8, v6, [B

    :goto_149
    iget v9, p0, Labcd/IA;->EQ:I

    int-to-long v9, v9

    cmp-long v11, v1, v9

    if-eqz v11, :cond_198

    iget-object v11, p0, Labcd/IA;->FH:Labcd/LA;

    iget-object v11, v11, Labcd/LA;->FH:Ljava/io/RandomAccessFile;

    sub-long/2addr v9, v1

    int-to-long v12, v6

    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v10, v9

    invoke-virtual {v11, v8, v5, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v9

    if-lez v9, :cond_17c

    invoke-virtual {p1, v8, v5, v9}, Labcd/NA;->j6([BII)V

    if-eqz v0, :cond_179

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_179
    int-to-long v9, v9

    add-long/2addr v1, v9

    goto :goto_149

    :cond_17c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v3, p0, Labcd/IA;->J0:Ljava/lang/String;

    aput-object v3, v0, v5

    iget v3, p0, Labcd/IA;->EQ:I

    int-to-long v5, v3

    sub-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "EOF reached while copying %s with %d bytes left to go"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_198
    :goto_198
    return-void
.end method

.method public EQ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/IA;->J0:Ljava/lang/String;

    return-object v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/IA;->tp:I

    return v0
.end method

.method public J0()Ljava/io/OutputStream;
    .registers 4

    new-instance v0, Labcd/KA;

    iget-short v1, p0, Labcd/IA;->VH:S

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v0, v1, v2}, Labcd/KA;-><init>(ILjava/io/OutputStream;)V

    iput-object v0, p0, Labcd/IA;->lg:Labcd/KA;

    return-object v0
.end method

.method public Mr()V
    .registers 10

    iget-object v0, p0, Labcd/IA;->FH:Labcd/LA;

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v1

    invoke-interface {v1}, Labcd/tA;->isDebugEnabled()Z

    move-result v1

    iget v2, p0, Labcd/IA;->Mr:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Labcd/LA;->j6(J)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2d

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Labcd/LA;->DW()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "FILE POSITION: 0x%08x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_2d
    invoke-virtual {v0}, Labcd/LA;->FH()I

    move-result v4

    const v5, 0x4034b50

    if-ne v4, v5, :cond_16b

    invoke-virtual {v0}, Labcd/LA;->Hw()S

    move-result v4

    if-eqz v1, :cond_4f

    sget-object v5, Labcd/IA;->DW:Labcd/tA;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v4, "Version required: 0x%04x"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_4f
    invoke-virtual {v0}, Labcd/LA;->Hw()S

    move-result v4

    if-eqz v1, :cond_68

    sget-object v5, Labcd/IA;->DW:Labcd/tA;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v4, "General purpose bits: 0x%04x"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_68
    invoke-virtual {v0}, Labcd/LA;->Hw()S

    move-result v4

    if-eqz v1, :cond_81

    sget-object v5, Labcd/IA;->DW:Labcd/tA;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v4, "Compression: 0x%04x"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_81
    invoke-virtual {v0}, Labcd/LA;->Hw()S

    move-result v4

    if-eqz v1, :cond_9a

    sget-object v5, Labcd/IA;->DW:Labcd/tA;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v4, "Modification time: 0x%04x"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_9a
    invoke-virtual {v0}, Labcd/LA;->Hw()S

    move-result v4

    if-eqz v1, :cond_b3

    sget-object v5, Labcd/IA;->DW:Labcd/tA;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v4, "Modification date: 0x%04x"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_b3
    invoke-virtual {v0}, Labcd/LA;->FH()I

    move-result v4

    if-eqz v1, :cond_cc

    sget-object v5, Labcd/IA;->DW:Labcd/tA;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v4, "CRC-32: 0x%04x"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_cc
    invoke-virtual {v0}, Labcd/LA;->FH()I

    move-result v4

    if-eqz v1, :cond_e5

    sget-object v5, Labcd/IA;->DW:Labcd/tA;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v4, "Compressed size: 0x%04x"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_e5
    invoke-virtual {v0}, Labcd/LA;->FH()I

    move-result v4

    if-eqz v1, :cond_fe

    sget-object v5, Labcd/IA;->DW:Labcd/tA;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v4, "Size: 0x%04x"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_fe
    invoke-virtual {v0}, Labcd/LA;->Hw()S

    move-result v4

    if-eqz v1, :cond_117

    sget-object v5, Labcd/IA;->DW:Labcd/tA;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "File name length: 0x%04x"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_117
    invoke-virtual {v0}, Labcd/LA;->Hw()S

    move-result v5

    if-eqz v1, :cond_130

    sget-object v6, Labcd/IA;->DW:Labcd/tA;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "Extra length: 0x%04x"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_130
    invoke-virtual {v0, v4}, Labcd/LA;->DW(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_14c

    sget-object v6, Labcd/IA;->DW:Labcd/tA;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Filename: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_14c
    invoke-virtual {v0, v5}, Labcd/LA;->j6(I)[B

    invoke-virtual {v0}, Labcd/LA;->DW()J

    move-result-wide v4

    iput-wide v4, p0, Labcd/IA;->U2:J

    if-eqz v1, :cond_16a

    sget-object v0, Labcd/IA;->DW:Labcd/tA;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Data position: 0x%08x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_16a
    return-void

    :cond_16b
    new-instance v1, Ljava/lang/IllegalStateException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Labcd/LA;->DW()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    iget-object v0, p0, Labcd/IA;->J0:Ljava/lang/String;

    aput-object v0, v4, v3

    const-string v0, "Local header not found at pos=0x%08x, file=%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public QX()I
    .registers 2

    iget v0, p0, Labcd/IA;->we:I

    return v0
.end method

.method public XL()J
    .registers 11

    iget-short v0, p0, Labcd/IA;->u7:S

    iget-short v1, p0, Labcd/IA;->gn:S

    new-instance v9, Ljava/util/Date;

    shr-int/lit8 v2, v0, 0x9

    and-int/lit8 v2, v2, 0x7f

    add-int/lit8 v3, v2, 0x50

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v4, v2, -0x1

    and-int/lit8 v5, v0, 0x1f

    shr-int/lit8 v0, v1, 0xb

    and-int/lit8 v6, v0, 0x1f

    shr-int/lit8 v0, v1, 0x5

    and-int/lit8 v7, v0, 0x3f

    shl-int/lit8 v0, v1, 0x1

    and-int/lit8 v8, v0, 0x3e

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public aM()Labcd/LA;
    .registers 2

    iget-object v0, p0, Labcd/IA;->FH:Labcd/LA;

    return-object v0
.end method

.method public gn()J
    .registers 3

    iget-wide v0, p0, Labcd/IA;->U2:J

    return-wide v0
.end method

.method public j3()Z
    .registers 3

    iget-object v0, p0, Labcd/IA;->J0:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/IA;->EQ:I

    return v0
.end method

.method public j6(Ljava/io/OutputStream;)Ljava/io/InputStream;
    .registers 7

    iget-object v0, p0, Labcd/IA;->lg:Labcd/KA;

    const/4 v1, 0x1

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Labcd/KA;->close()V

    iget-object p1, p0, Labcd/IA;->lg:Labcd/KA;

    invoke-virtual {p1}, Labcd/KA;->DW()I

    move-result p1

    iput p1, p0, Labcd/IA;->we:I

    iget-object p1, p0, Labcd/IA;->lg:Labcd/KA;

    invoke-virtual {p1}, Labcd/KA;->FH()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Labcd/IA;->a8:[B

    array-length p1, p1

    iput p1, p0, Labcd/IA;->EQ:I

    iget-object p1, p0, Labcd/IA;->lg:Labcd/KA;

    invoke-virtual {p1}, Labcd/KA;->j6()I

    move-result p1

    iput p1, p0, Labcd/IA;->tp:I

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/IA;->lg:Labcd/KA;

    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Labcd/IA;->a8:[B

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-short v0, p0, Labcd/IA;->VH:S

    if-nez v0, :cond_38

    return-object p1

    :cond_38
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Ljava/io/SequenceInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    new-array v4, v1, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, p1, v3}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, v2, p1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-object v0

    :cond_4f
    new-instance v0, Labcd/JA;

    invoke-direct {v0, p0}, Labcd/JA;-><init>(Labcd/IA;)V

    if-eqz p1, :cond_59

    invoke-virtual {v0, p1}, Labcd/JA;->j6(Ljava/io/OutputStream;)V

    :cond_59
    iget-short p1, p0, Labcd/IA;->VH:S

    if-eqz p1, :cond_6b

    invoke-virtual {v0, v1}, Labcd/JA;->j6(Z)V

    new-instance p1, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p1, v0, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-object p1

    :cond_6b
    return-object v0
.end method

.method public j6(J)V
    .registers 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result p1

    add-int/lit16 p1, p1, 0x76c

    const/16 p2, 0x10

    const/16 v1, 0x7bc

    if-ge p1, v1, :cond_15

    const-wide/32 v0, 0x210000

    goto :goto_3d

    :cond_15
    sub-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x19

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr p1, v1

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v1

    shl-int/2addr v1, p2

    or-int/2addr p1, v1

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    shl-int/lit8 v1, v1, 0xb

    or-int/2addr p1, v1

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr p1, v1

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    or-int/2addr p1, v0

    int-to-long v0, p1

    :goto_3d
    shr-long p1, v0, p2

    long-to-int p2, p1

    int-to-short p1, p2

    iput-short p1, p0, Labcd/IA;->u7:S

    const-wide/32 p1, 0xffff

    and-long/2addr p1, v0

    long-to-int p2, p1

    int-to-short p1, p2

    iput-short p1, p0, Labcd/IA;->gn:S

    return-void
.end method

.method public j6(Labcd/NA;)V
    .registers 5

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v0

    invoke-interface {v0}, Labcd/tA;->isDebugEnabled()Z

    const v0, 0x2014b50

    invoke-virtual {p1, v0}, Labcd/NA;->j6(I)V

    iget-short v0, p0, Labcd/IA;->Hw:S

    invoke-virtual {p1, v0}, Labcd/NA;->j6(S)V

    iget-short v0, p0, Labcd/IA;->v5:S

    invoke-virtual {p1, v0}, Labcd/NA;->j6(S)V

    iget-short v0, p0, Labcd/IA;->Zo:S

    invoke-virtual {p1, v0}, Labcd/NA;->j6(S)V

    iget-short v0, p0, Labcd/IA;->VH:S

    invoke-virtual {p1, v0}, Labcd/NA;->j6(S)V

    iget-short v0, p0, Labcd/IA;->gn:S

    invoke-virtual {p1, v0}, Labcd/NA;->j6(S)V

    iget-short v0, p0, Labcd/IA;->u7:S

    invoke-virtual {p1, v0}, Labcd/NA;->j6(S)V

    iget v0, p0, Labcd/IA;->tp:I

    invoke-virtual {p1, v0}, Labcd/NA;->j6(I)V

    iget v0, p0, Labcd/IA;->EQ:I

    invoke-virtual {p1, v0}, Labcd/NA;->j6(I)V

    iget v0, p0, Labcd/IA;->we:I

    invoke-virtual {p1, v0}, Labcd/NA;->j6(I)V

    iget-object v0, p0, Labcd/IA;->J0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Labcd/NA;->j6(S)V

    iget-object v0, p0, Labcd/IA;->J8:[B

    array-length v0, v0

    iget-short v1, p0, Labcd/IA;->Ws:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Labcd/NA;->j6(S)V

    iget-object v0, p0, Labcd/IA;->QX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Labcd/NA;->j6(S)V

    iget-short v0, p0, Labcd/IA;->XL:S

    invoke-virtual {p1, v0}, Labcd/NA;->j6(S)V

    iget-short v0, p0, Labcd/IA;->aM:S

    invoke-virtual {p1, v0}, Labcd/NA;->j6(S)V

    iget v0, p0, Labcd/IA;->j3:I

    invoke-virtual {p1, v0}, Labcd/NA;->j6(I)V

    iget v0, p0, Labcd/IA;->Mr:I

    invoke-virtual {p1, v0}, Labcd/NA;->j6(I)V

    iget-object v0, p0, Labcd/IA;->J0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Labcd/NA;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/IA;->J8:[B

    invoke-virtual {p1, v0}, Labcd/NA;->j6([B)V

    iget-short v0, p0, Labcd/IA;->Ws:S

    if-lez v0, :cond_80

    sget-object v1, Labcd/IA;->j6:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Labcd/NA;->j6([BII)V

    :cond_80
    iget-object v0, p0, Labcd/IA;->QX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Labcd/NA;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public u7()Ljava/io/InputStream;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/IA;->j6(Ljava/io/OutputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public v5()[B
    .registers 6

    iget-object v0, p0, Labcd/IA;->a8:[B

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget v0, p0, Labcd/IA;->we:I

    new-array v0, v0, [B

    invoke-virtual {p0}, Labcd/IA;->u7()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    iget v4, p0, Labcd/IA;->we:I

    if-eq v3, v4, :cond_3a

    sub-int/2addr v4, v3

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_1c

    add-int/2addr v3, v4

    goto :goto_f

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Labcd/IA;->we:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Read failed, expecting %d bytes, got %d instead"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    return-object v0
.end method
