.class Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/ChannelSftp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;,
        Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;
    }
.end annotation


# instance fields
.field DW:I

.field FH:I

.field final Hw:Lcom/jcraft/jsch/ChannelSftp;

.field j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;I)V
    .registers 4

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->Hw:Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    new-array p1, p2, [Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    const/4 p1, 0x0

    :goto_d
    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v0, p2

    if-lt p1, v0, :cond_16

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH()V

    return-void

    :cond_16
    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;-><init>(Lcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_d
.end method


# virtual methods
.method DW()J
    .registers 8

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    :goto_6
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v4, v3

    if-lt v2, v4, :cond_c

    return-wide v0

    :cond_c
    aget-object v4, v3, v2

    iget v4, v4, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->j6:I

    if-nez v4, :cond_13

    goto :goto_1f

    :cond_13
    aget-object v4, v3, v2

    iget-wide v4, v4, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->DW:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_1f

    aget-object v0, v3, v2

    iget-wide v0, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->DW:J

    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method FH()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH:I

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->DW:I

    return-void
.end method

.method Hw()I
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v0, v0

    return v0
.end method

.method j6()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH:I

    return v0
.end method

.method j6(I)Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;
    .registers 10

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH:I

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->DW:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->DW:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v4, v3

    const/4 v5, 0x0

    if-ne v2, v4, :cond_14

    iput v5, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->DW:I

    :cond_14
    aget-object v2, v3, v0

    iget v2, v2, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->j6:I

    if-eq v2, p1, :cond_50

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->DW()J

    move-result-wide v6

    const/4 v0, 0x0

    :goto_1f
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v3, v2

    if-lt v0, v3, :cond_26

    const/4 v1, 0x0

    goto :goto_30

    :cond_26
    aget-object v3, v2, v0

    iget v3, v3, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->j6:I

    if-ne v3, p1, :cond_4d

    aget-object v0, v2, v0

    iput v5, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->j6:I

    :goto_30
    if-eqz v1, :cond_38

    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;

    invoke-direct {p1, p0, v6, v7}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;-><init>(Lcom/jcraft/jsch/ChannelSftp$RequestQueue;J)V

    throw p1

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestQueue: unknown request id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_50
    aget-object p1, v3, v0

    iput v5, p1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->j6:I

    aget-object p1, v3, v0

    return-object p1
.end method

.method j6(IJI)V
    .registers 8

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH:I

    if-nez v0, :cond_7

    const/4 v1, 0x0

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->DW:I

    :cond_7
    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->DW:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v2, v0

    if-lt v1, v2, :cond_11

    array-length v2, v0

    sub-int/2addr v1, v2

    :cond_11
    aget-object v2, v0, v1

    iput p1, v2, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->j6:I

    aget-object p1, v0, v1

    iput-wide p2, p1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->DW:J

    aget-object p1, v0, v1

    int-to-long p2, p4

    iput-wide p2, p1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->FH:J

    iget p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH:I

    return-void
.end method

.method j6(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V
    .registers 11

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-lt v2, v0, :cond_a

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH()V

    return-void

    :cond_a
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->Hw:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v3, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v3, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    const/4 v4, 0x0

    :goto_12
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v6, v5

    if-lt v4, v6, :cond_18

    goto :goto_24

    :cond_18
    aget-object v6, v5, v4

    iget v6, v6, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->j6:I

    iget v7, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->FH:I

    if-ne v6, v7, :cond_2d

    aget-object v4, v5, v4

    iput v1, v4, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->j6:I

    :goto_24
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->Hw:Lcom/jcraft/jsch/ChannelSftp;

    int-to-long v5, v3

    invoke-static {v4, v5, v6}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_12
.end method
