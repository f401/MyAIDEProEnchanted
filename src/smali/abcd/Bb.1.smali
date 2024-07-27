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
    .registers 4

    const-wide v2, -0x2e7a48ae81c399e0L    # -5.273395891819022E84

    const-class v0, Labcd/Bb;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x184ef789064531e3L    # -3.03563865330775E191

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Bb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x184ef789064531e3L    # -3.03563865330775E191

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Bb;->FH:[B

    const/4 v0, 0x0

    iput v0, p0, Labcd/Bb;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Bb;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v2, -0x1e21b861c0639fdL

    :try_start_0
    sget-boolean v0, Labcd/Bb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e21b861c0639fdL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Bb;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Bb;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I)B
    .registers 8

    const-wide v4, 0x6117d5a5f59cf1c3L    # 5.235822603584204E159

    const/4 v0, -0x1

    :try_start_0
    sget-boolean v1, Labcd/Bb;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x6117d5a5f59cf1c3L    # 5.235822603584204E159

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v1, p0, Labcd/Bb;->FH:[B

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Labcd/Bb;->FH:[B

    array-length v1, v1

    if-ge p1, v1, :cond_1

    iget v1, p0, Labcd/Bb;->Hw:I

    if-ge p1, v1, :cond_1

    iget-object v0, p0, Labcd/Bb;->FH:[B

    aget-byte v0, v0, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Bb;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, 0x8513cfe699d2a1dL

    :try_start_0
    sget-boolean v0, Labcd/Bb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x8513cfe699d2a1dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Labcd/Bb;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Bb;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(B)V
    .registers 10

    const-wide v6, 0x41449c618dd45d47L    # 2701507.108043346

    :try_start_0
    sget-boolean v0, Labcd/Bb;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    const-wide v2, 0x41449c618dd45d47L    # 2701507.108043346

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Bb;->FH:[B

    if-nez v0, :cond_2

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/Bb;->FH:[B

    :cond_1
    :goto_0
    iget-object v0, p0, Labcd/Bb;->FH:[B

    iget v1, p0, Labcd/Bb;->Hw:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/Bb;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    aput-byte p1, v0, v1

    return-void

    :cond_2
    :try_start_1
    iget v0, p0, Labcd/Bb;->Hw:I

    iget-object v1, p0, Labcd/Bb;->FH:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Labcd/Bb;->FH:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iget-object v1, p0, Labcd/Bb;->FH:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/Bb;->FH:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Bb;->FH:[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Bb;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const-wide v4, -0x30393e7785b58e80L    # -2.0585652173581093E76

    :try_start_0
    sget-boolean v0, Labcd/Bb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x30393e7785b58e80L    # -2.0585652173581093E76

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "{"

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget v2, p0, Labcd/Bb;->Hw:I

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Bb;->FH:[B

    aget-byte v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Bb;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
