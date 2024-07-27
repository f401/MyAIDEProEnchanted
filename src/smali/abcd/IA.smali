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
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Labcd/IA;->Ws:S

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Labcd/IA;->U2:J

    iput-object v2, p0, Labcd/IA;->a8:[B

    iput-object v2, p0, Labcd/IA;->lg:Labcd/KA;

    iput-object p1, p0, Labcd/IA;->FH:Labcd/LA;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v2, p0, Labcd/IA;->Ws:S

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Labcd/IA;->U2:J

    iput-object v3, p0, Labcd/IA;->a8:[B

    iput-object v3, p0, Labcd/IA;->lg:Labcd/KA;

    iput-object p1, p0, Labcd/IA;->J0:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Labcd/IA;->QX:Ljava/lang/String;

    const/16 v0, 0x8

    iput-short v0, p0, Labcd/IA;->VH:S

    new-array v0, v2, [B

    iput-object v0, p0, Labcd/IA;->J8:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Labcd/IA;->j6(J)V

    return-void
.end method

.method private DW(Labcd/LA;)V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v0

    invoke-interface {v0}, Labcd/tA;->isDebugEnabled()Z

    move-result v0

    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    iput-short v1, p0, Labcd/IA;->Hw:S

    if-eqz v0, :cond_0

    sget-object v1, Labcd/IA;->DW:Labcd/tA;

    const-string v2, "Version made by: 0x%04x"

    new-array v3, v9, [Ljava/lang/Object;

    iget-short v4, p0, Labcd/IA;->Hw:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    iput-short v1, p0, Labcd/IA;->v5:S

    if-eqz v0, :cond_1

    sget-object v1, Labcd/IA;->DW:Labcd/tA;

    const-string v2, "Version required: 0x%04x"

    new-array v3, v9, [Ljava/lang/Object;

    iget-short v4, p0, Labcd/IA;->v5:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    iput-short v1, p0, Labcd/IA;->Zo:S

    if-eqz v0, :cond_2

    sget-object v1, Labcd/IA;->DW:Labcd/tA;

    const-string v2, "General purpose bits: 0x%04x"

    new-array v3, v9, [Ljava/lang/Object;

    iget-short v4, p0, Labcd/IA;->Zo:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_2
    iget-short v1, p0, Labcd/IA;->Zo:S

    const v2, 0xf7f1

    and-int/2addr v1, v2

    if-nez v1, :cond_13

    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    iput-short v1, p0, Labcd/IA;->VH:S

    if-eqz v0, :cond_3

    sget-object v1, Labcd/IA;->DW:Labcd/tA;

    const-string v2, "Compression: 0x%04x"

    new-array v3, v9, [Ljava/lang/Object;

    iget-short v4, p0, Labcd/IA;->VH:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    iput-short v1, p0, Labcd/IA;->gn:S

    if-eqz v0, :cond_4

    sget-object v1, Labcd/IA;->DW:Labcd/tA;

    const-string v2, "Modification time: 0x%04x"

    new-array v3, v9, [Ljava/lang/Object;

    iget-short v4, p0, Labcd/IA;->gn:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    iput-short v1, p0, Labcd/IA;->u7:S

    if-eqz v0, :cond_5

    sget-object v1, Labcd/IA;->DW:Labcd/tA;

    const-string v2, "Modification date: 0x%04x"

    new-array v3, v9, [Ljava/lang/Object;

    iget-short v4, p0, Labcd/IA;->u7:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Labcd/LA;->FH()I

    move-result v1

    iput v1, p0, Labcd/IA;->tp:I

    if-eqz v0, :cond_6

    sget-object v1, Labcd/IA;->DW:Labcd/tA;

    const-string v2, "CRC-32: 0x%04x"

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, p0, Labcd/IA;->tp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Labcd/LA;->FH()I

    move-result v1

    iput v1, p0, Labcd/IA;->EQ:I

    if-eqz v0, :cond_7

    sget-object v1, Labcd/IA;->DW:Labcd/tA;

    const-string v2, "Compressed size: 0x%04x"

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, p0, Labcd/IA;->EQ:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Labcd/LA;->FH()I

    move-result v1

    iput v1, p0, Labcd/IA;->we:I

    if-eqz v0, :cond_8

    sget-object v1, Labcd/IA;->DW:Labcd/tA;

    const-string v2, "Size: 0x%04x"

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, p0, Labcd/IA;->we:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v1

    if-eqz v0, :cond_9

    sget-object v2, Labcd/IA;->DW:Labcd/tA;

    const-string v3, "File name length: 0x%04x"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v2

    if-eqz v0, :cond_a

    sget-object v3, Labcd/IA;->DW:Labcd/tA;

    const-string v4, "Extra length: 0x%04x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v3

    if-eqz v0, :cond_b

    sget-object v4, Labcd/IA;->DW:Labcd/tA;

    const-string v5, "File comment length: 0x%04x"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v4

    iput-short v4, p0, Labcd/IA;->XL:S

    if-eqz v0, :cond_c

    sget-object v4, Labcd/IA;->DW:Labcd/tA;

    const-string v5, "Disk number start: 0x%04x"

    new-array v6, v9, [Ljava/lang/Object;

    iget-short v7, p0, Labcd/IA;->XL:S

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p1}, Labcd/LA;->Hw()S

    move-result v4

    iput-short v4, p0, Labcd/IA;->aM:S

    if-eqz v0, :cond_d

    sget-object v4, Labcd/IA;->DW:Labcd/tA;

    const-string v5, "Internal attributes: 0x%04x"

    new-array v6, v9, [Ljava/lang/Object;

    iget-short v7, p0, Labcd/IA;->aM:S

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1}, Labcd/LA;->FH()I

    move-result v4

    iput v4, p0, Labcd/IA;->j3:I

    if-eqz v0, :cond_e

    sget-object v4, Labcd/IA;->DW:Labcd/tA;

    const-string v5, "External attributes: 0x%08x"

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Labcd/IA;->j3:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p1}, Labcd/LA;->FH()I

    move-result v4

    iput v4, p0, Labcd/IA;->Mr:I

    if-eqz v0, :cond_f

    sget-object v4, Labcd/IA;->DW:Labcd/tA;

    const-string v5, "Local header offset: 0x%08x"

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Labcd/IA;->Mr:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p1, v1}, Labcd/LA;->DW(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/IA;->J0:Ljava/lang/String;

    if-eqz v0, :cond_10

    sget-object v1, Labcd/IA;->DW:Labcd/tA;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Labcd/IA;->J0:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p1, v2}, Labcd/LA;->j6(I)[B

    move-result-object v1

    iput-object v1, p0, Labcd/IA;->J8:[B

    invoke-virtual {p1, v3}, Labcd/LA;->DW(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Labcd/IA;->QX:Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Labcd/IA;->DW:Labcd/tA;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File comment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/IA;->QX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_11
    iget-short v0, p0, Labcd/IA;->Zo:S

    and-int/lit16 v0, v0, 0x800

    int-to-short v0, v0

    iput-short v0, p0, Labcd/IA;->Zo:S

    iget v0, p0, Labcd/IA;->we:I

    if-nez v0, :cond_12

    iput v8, p0, Labcd/IA;->EQ:I

    iput-short v8, p0, Labcd/IA;->VH:S

    iput v8, p0, Labcd/IA;->tp:I

    :cond_12
    return-void

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t handle general purpose bits == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0x%04x"

    new-array v2, v9, [Ljava/lang/Object;

    iget-short v3, p0, Labcd/IA;->Zo:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static j6(Labcd/LA;)Labcd/IA;
    .registers 5

    invoke-virtual {p0}, Labcd/LA;->FH()I

    move-result v0

    const v1, 0x2014b50

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Labcd/LA;->DW()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Labcd/LA;->j6(J)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/IA;

    invoke-direct {v0, p0}, Labcd/IA;-><init>(Labcd/LA;)V

    invoke-direct {v0, p0}, Labcd/IA;->DW(Labcd/LA;)V

    goto :goto_0
.end method

.method public static tp()Labcd/tA;
    .registers 1

    sget-object v0, Labcd/IA;->DW:Labcd/tA;

    if-nez v0, :cond_0

    const-class v0, Labcd/IA;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/uA;->j6(Ljava/lang/String;)Labcd/tA;

    move-result-object v0

    sput-object v0, Labcd/IA;->DW:Labcd/tA;

    :cond_0
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
    .registers 14

    iget-object v0, p0, Labcd/IA;->a8:[B

    const-wide/16 v2, 0x0

    if-nez v0, :cond_0

    iget-wide v0, p0, Labcd/IA;->U2:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Labcd/IA;->FH:Labcd/LA;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/IA;->Mr()V

    :cond_0
    invoke-virtual {p1}, Labcd/NA;->DW()I

    move-result v0

    iput v0, p0, Labcd/IA;->Mr:I

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v0

    invoke-interface {v0}, Labcd/tA;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v0

    const-string v1, "Writing local header at 0x%08x - %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Labcd/IA;->Mr:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Labcd/IA;->J0:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Labcd/IA;->lg:Labcd/KA;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Labcd/KA;->close()V

    iget-object v0, p0, Labcd/IA;->lg:Labcd/KA;

    invoke-virtual {v0}, Labcd/KA;->DW()I

    move-result v0

    iput v0, p0, Labcd/IA;->we:I

    iget-object v0, p0, Labcd/IA;->lg:Labcd/KA;

    invoke-virtual {v0}, Labcd/KA;->FH()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Labcd/IA;->a8:[B

    iget-object v0, p0, Labcd/IA;->a8:[B

    array-length v0, v0

    iput v0, p0, Labcd/IA;->EQ:I

    iget-object v0, p0, Labcd/IA;->lg:Labcd/KA;

    invoke-virtual {v0}, Labcd/KA;->j6()I

    move-result v0

    iput v0, p0, Labcd/IA;->tp:I

    :cond_2
    const v0, 0x4034b50

    invoke-virtual {p1, v0}, Labcd/NA;->j6(I)V

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

    const/4 v0, 0x0

    iput-short v0, p0, Labcd/IA;->Ws:S

    iget-short v0, p0, Labcd/IA;->VH:S

    if-nez v0, :cond_3

    invoke-virtual {p1}, Labcd/NA;->DW()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/IA;->J0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/IA;->J8:[B

    array-length v1, v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v6, 0x4

    rem-long/2addr v0, v6

    long-to-int v0, v0

    int-to-short v0, v0

    if-lez v0, :cond_3

    rsub-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Labcd/IA;->Ws:S

    :cond_3
    iget-object v0, p0, Labcd/IA;->J8:[B

    array-length v0, v0

    iget-short v1, p0, Labcd/IA;->Ws:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Labcd/NA;->j6(S)V

    iget-object v0, p0, Labcd/IA;->J0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Labcd/NA;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/IA;->J8:[B

    invoke-virtual {p1, v0}, Labcd/NA;->j6([B)V

    iget-short v0, p0, Labcd/IA;->Ws:S

    if-lez v0, :cond_4

    sget-object v1, Labcd/IA;->j6:[B

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5, v0}, Labcd/NA;->j6([BII)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v0

    const-string v1, "Data position 0x%08x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Labcd/NA;->DW()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Labcd/IA;->a8:[B

    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Labcd/NA;->j6([B)V

    if-eqz v4, :cond_6

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v0

    const-string v1, "Wrote %d bytes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/IA;->a8:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    if-eqz v4, :cond_8

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v0

    const-string v1, "Seeking to position 0x%08x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, p0, Labcd/IA;->U2:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Labcd/IA;->FH:Labcd/LA;

    iget-wide v6, p0, Labcd/IA;->U2:J

    invoke-virtual {v0, v6, v7}, Labcd/LA;->j6(J)V

    iget v0, p0, Labcd/IA;->EQ:I

    const/16 v1, 0x1fa0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v6, v5, [B

    move-wide v0, v2

    :goto_0
    iget v2, p0, Labcd/IA;->EQ:I

    int-to-long v8, v2

    cmp-long v3, v0, v8

    if-eqz v3, :cond_6

    iget-object v3, p0, Labcd/IA;->FH:Labcd/LA;

    iget-object v3, v3, Labcd/LA;->FH:Ljava/io/RandomAccessFile;

    const/4 v7, 0x0

    int-to-long v8, v2

    sub-long/2addr v8, v0

    int-to-long v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v2, v8

    invoke-virtual {v3, v6, v7, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    if-lez v2, :cond_a

    const/4 v3, 0x0

    invoke-virtual {p1, v6, v3, v2}, Labcd/NA;->j6([BII)V

    if-eqz v4, :cond_9

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v3

    const-string v7, "Wrote %d bytes"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_9
    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_a
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "EOF reached while copying %s with %d bytes left to go"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Labcd/IA;->J0:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Labcd/IA;->EQ:I

    int-to-long v6, v6

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
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

    iget-object v0, p0, Labcd/IA;->lg:Labcd/KA;

    return-object v0
.end method

.method public Mr()V
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Labcd/IA;->FH:Labcd/LA;

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v1

    invoke-interface {v1}, Labcd/tA;->isDebugEnabled()Z

    move-result v1

    iget v2, p0, Labcd/IA;->Mr:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Labcd/LA;->j6(J)V

    if-eqz v1, :cond_0

    invoke-static {}, Labcd/IA;->tp()Labcd/tA;

    move-result-object v2

    const-string v3, "FILE POSITION: 0x%08x"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Labcd/LA;->DW()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Labcd/LA;->FH()I

    move-result v2

    const v3, 0x4034b50

    if-ne v2, v3, :cond_d

    invoke-virtual {v0}, Labcd/LA;->Hw()S

    move-result v2

    if-eqz v1, :cond_1

    sget-object v3, Labcd/IA;->DW:Labcd/tA;

    const-string v4, "Version required: 0x%04x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Labcd/LA;->Hw()S

    move-result v2

    if-eqz v1, :cond_2

    sget-object v3, Labcd/IA;->DW:Labcd/tA;

    const-string v4, "General purpose bits: 0x%04x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Labcd/LA;->Hw()S

    move-result v2

    if-eqz v1, :cond_3

    sget-object v3, Labcd/IA;->DW:Labcd/tA;

    const-string v4, "Compression: 0x%04x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Labcd/LA;->Hw()S

    move-result v2

    if-eqz v1, :cond_4

    sget-object v3, Labcd/IA;->DW:Labcd/tA;

    const-string v4, "Modification time: 0x%04x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Labcd/LA;->Hw()S

    move-result v2

    if-eqz v1, :cond_5

    sget-object v3, Labcd/IA;->DW:Labcd/tA;

    const-string v4, "Modification date: 0x%04x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Labcd/LA;->FH()I

    move-result v2

    if-eqz v1, :cond_6

    sget-object v3, Labcd/IA;->DW:Labcd/tA;

    const-string v4, "CRC-32: 0x%04x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Labcd/LA;->FH()I

    move-result v2

    if-eqz v1, :cond_7

    sget-object v3, Labcd/IA;->DW:Labcd/tA;

    const-string v4, "Compressed size: 0x%04x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Labcd/LA;->FH()I

    move-result v2

    if-eqz v1, :cond_8

    sget-object v3, Labcd/IA;->DW:Labcd/tA;

    const-string v4, "Size: 0x%04x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Labcd/LA;->Hw()S

    move-result v2

    if-eqz v1, :cond_9

    sget-object v3, Labcd/IA;->DW:Labcd/tA;

    const-string v4, "File name length: 0x%04x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Labcd/LA;->Hw()S

    move-result v3

    if-eqz v1, :cond_a

    sget-object v4, Labcd/IA;->DW:Labcd/tA;

    const-string v5, "Extra length: 0x%04x"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0, v2}, Labcd/LA;->DW(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_b

    sget-object v4, Labcd/IA;->DW:Labcd/tA;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filename: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0, v3}, Labcd/LA;->j6(I)[B

    invoke-virtual {v0}, Labcd/LA;->DW()J

    move-result-wide v2

    iput-wide v2, p0, Labcd/IA;->U2:J

    if-eqz v1, :cond_c

    sget-object v0, Labcd/IA;->DW:Labcd/tA;

    const-string v1, "Data position: 0x%08x"

    new-array v2, v9, [Ljava/lang/Object;

    iget-wide v4, p0, Labcd/IA;->U2:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/tA;->FH(Ljava/lang/String;)V

    :cond_c
    return-void

    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Local header not found at pos=0x%08x, file=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Labcd/LA;->DW()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v8

    iget-object v0, p0, Labcd/IA;->J0:Ljava/lang/String;

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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
    .registers 8

    iget-short v3, p0, Labcd/IA;->u7:S

    iget-short v6, p0, Labcd/IA;->gn:S

    new-instance v0, Ljava/util/Date;

    shr-int/lit8 v1, v3, 0x9

    and-int/lit8 v1, v1, 0x7f

    add-int/lit8 v1, v1, 0x50

    shr-int/lit8 v2, v3, 0x5

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v3, v3, 0x1f

    shr-int/lit8 v4, v6, 0xb

    and-int/lit8 v4, v4, 0x1f

    shr-int/lit8 v5, v6, 0x5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v6, v6, 0x1

    and-int/lit8 v6, v6, 0x3e

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

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
    .registers 8

    const/4 v5, 0x1

    iget-object v0, p0, Labcd/IA;->lg:Labcd/KA;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/KA;->close()V

    iget-object v0, p0, Labcd/IA;->lg:Labcd/KA;

    invoke-virtual {v0}, Labcd/KA;->DW()I

    move-result v0

    iput v0, p0, Labcd/IA;->we:I

    iget-object v0, p0, Labcd/IA;->lg:Labcd/KA;

    invoke-virtual {v0}, Labcd/KA;->FH()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Labcd/IA;->a8:[B

    iget-object v0, p0, Labcd/IA;->a8:[B

    array-length v0, v0

    iput v0, p0, Labcd/IA;->EQ:I

    iget-object v0, p0, Labcd/IA;->lg:Labcd/KA;

    invoke-virtual {v0}, Labcd/KA;->j6()I

    move-result v0

    iput v0, p0, Labcd/IA;->tp:I

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/IA;->lg:Labcd/KA;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Labcd/IA;->a8:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-short v1, p0, Labcd/IA;->VH:S

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Ljava/io/SequenceInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    new-array v4, v5, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v0, v3}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v1, v2, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Labcd/JA;

    invoke-direct {v1, p0}, Labcd/JA;-><init>(Labcd/IA;)V

    if-eqz p1, :cond_2

    invoke-virtual {v1, p1}, Labcd/JA;->j6(Ljava/io/OutputStream;)V

    :cond_2
    iget-short v0, p0, Labcd/IA;->VH:S

    if-eqz v0, :cond_3

    invoke-virtual {v1, v5}, Labcd/JA;->j6(Z)V

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, v1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public j6(J)V
    .registers 8

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    const/16 v2, 0x7bc

    if-ge v1, v2, :cond_0

    const-wide/32 v0, 0x210000

    :goto_0
    const/16 v2, 0x10

    shr-long v2, v0, v2

    long-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, p0, Labcd/IA;->u7:S

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Labcd/IA;->gn:S

    return-void

    :cond_0
    add-int/lit16 v1, v1, -0x7bc

    shl-int/lit8 v1, v1, 0x19

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v2

    shl-int/lit8 v2, v2, 0xb

    or-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
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

    if-lez v0, :cond_0

    sget-object v1, Labcd/IA;->j6:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Labcd/NA;->j6([BII)V

    :cond_0
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
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/IA;->a8:[B

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Labcd/IA;->we:I

    new-array v2, v0, [B

    invoke-virtual {p0}, Labcd/IA;->u7()Ljava/io/InputStream;

    move-result-object v3

    move v0, v1

    :goto_1
    iget v4, p0, Labcd/IA;->we:I

    if-eq v0, v4, :cond_2

    sub-int/2addr v4, v0

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_1

    add-int/2addr v0, v4

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Read failed, expecting %d bytes, got %d instead"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Labcd/IA;->we:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method
