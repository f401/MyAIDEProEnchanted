.class public Labcd/Bb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:[B
    .annotation runtime Labcd/ru;
        field = -0x24cbc3423c9b9fb0L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = -0x223d80b7f30bc2e5L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Bb;

    const-wide v1, -0x2e7a48ae81c399e0L  # -5.273395891819022E84

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const-wide v0, -0x184ef789064531e3L  # -3.03563865330775E191

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Bb;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Labcd/Bb;->FH:[B

    const/4 v3, 0x0

    iput v3, p0, Labcd/Bb;->Hw:I
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/Bb;->DW:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v0, -0x1e21b861c0639fdL

    :try_start_5
    sget-boolean v2, Labcd/Bb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Bb;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Bb;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(I)B
    .registers 7

    const-wide v0, 0x6117d5a5f59cf1c3L  # 5.235822603584204E159

    :try_start_5
    sget-boolean v2, Labcd/Bb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Bb;->FH:[B

    const/4 v3, -0x1

    if-nez v2, :cond_12

    return v3

    :cond_12
    array-length v4, v2

    if-lt p1, v4, :cond_16

    return v3

    :cond_16
    iget v4, p0, Labcd/Bb;->Hw:I

    if-lt p1, v4, :cond_1b

    return v3

    :cond_1b
    aget-byte p1, v2, p1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return p1

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/Bb;->DW:Z

    if-eqz v3, :cond_2b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, 0x8513cfe699d2a1dL

    :try_start_5
    sget-boolean v2, Labcd/Bb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Labcd/Bb;->Hw:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Bb;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(B)V
    .registers 8

    const-wide v0, 0x41449c618dd45d47L  # 2701507.108043346

    :try_start_5
    sget-boolean v2, Labcd/Bb;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v2, p0, Labcd/Bb;->FH:[B

    if-nez v2, :cond_1c

    const/16 v2, 0xa

    new-array v2, v2, [B

    iput-object v2, p0, Labcd/Bb;->FH:[B

    goto :goto_2f

    :cond_1c
    iget v3, p0, Labcd/Bb;->Hw:I

    array-length v4, v2

    if-lt v3, v4, :cond_2f

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [B

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/Bb;->FH:[B

    :cond_2f
    :goto_2f
    iget-object v2, p0, Labcd/Bb;->FH:[B

    iget v3, p0, Labcd/Bb;->Hw:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/Bb;->Hw:I
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_3a

    aput-byte p1, v2, v3

    return-void

    :catchall_3a
    move-exception v2

    sget-boolean v3, Labcd/Bb;->DW:Z

    if-eqz v3, :cond_47

    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-wide v0, -0x30393e7785b58e80L  # -2.0585652173581093E76

    :try_start_5
    sget-boolean v2, Labcd/Bb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_40

    :cond_c
    const-string v2, "{"

    const/4 v3, 0x0

    :goto_f
    :try_start_f
    iget v4, p0, Labcd/Bb;->Hw:I

    if-ge v3, v4, :cond_2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/Bb;->FH:[B

    aget-byte v2, v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3f
    .catchall {:try_start_f .. :try_end_3f} :catchall_40

    return-object v0

    :catchall_40
    move-exception v2

    sget-boolean v3, Labcd/Bb;->DW:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_48
    goto :goto_4a

    :goto_49
    throw v2

    :goto_4a
    goto :goto_49
.end method
