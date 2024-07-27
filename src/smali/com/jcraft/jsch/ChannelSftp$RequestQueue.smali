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
    .registers 6

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->Hw:Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    new-array v0, p2, [Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH()V

    return-void

    :cond_0
    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    invoke-direct {v2, p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;-><init>(Lcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method DW()J
    .registers 7

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v4, v3

    if-lt v2, v4, :cond_0

    return-wide v0

    :cond_0
    aget-object v4, v3, v2

    iget v4, v4, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->j6:I

    if-nez v4, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget-object v4, v3, v2

    iget-wide v4, v4, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->DW:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    aget-object v0, v3, v2

    iget-wide v0, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->DW:J

    goto :goto_1
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
    .registers 9

    const/4 v1, 0x0

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH:I

    const/4 v2, 0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH:I

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->DW:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->DW:I

    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->DW:I

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v4, v4

    if-ne v3, v4, :cond_0

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->DW:I

    :cond_0
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v4, v3, v0

    iget v4, v4, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->j6:I

    if-eq v4, p1, :cond_4

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->DW()J

    move-result-wide v4

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v6, v3

    if-lt v0, v6, :cond_1

    :goto_1
    if-eqz v1, :cond_2

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;

    invoke-direct {v0, p0, v4, v5}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;-><init>(Lcom/jcraft/jsch/ChannelSftp$RequestQueue;J)V

    throw v0

    :cond_1
    aget-object v6, v3, v0

    iget v6, v6, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->j6:I

    if-ne v6, p1, :cond_3

    aget-object v0, v3, v0

    iput v1, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->j6:I

    move v1, v2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestQueue: unknown request id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    aget-object v2, v3, v0

    iput v1, v2, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->j6:I

    aget-object v0, v3, v0

    return-object v0
.end method

.method j6(IJI)V
    .registers 9

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->DW:I

    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->DW:I

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    array-length v1, v1

    sub-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v2, v1, v0

    iput p1, v2, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->j6:I

    aget-object v2, v1, v0

    iput-wide p2, v2, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->DW:J

    aget-object v0, v1, v0

    int-to-long v2, p4

    iput-wide v2, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->FH:J

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH:I

    return-void
.end method

.method j6(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V
    .registers 11

    const/4 v1, 0x0

    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH:I

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->FH()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->Hw:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v4, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    move v0, v1

    :goto_1
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v6, v5

    if-lt v0, v6, :cond_1

    :goto_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->Hw:Lcom/jcraft/jsch/ChannelSftp;

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;J)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    aget-object v6, v5, v0

    iget v6, v6, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->j6:I

    iget v7, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->FH:I

    if-ne v6, v7, :cond_2

    aget-object v0, v5, v0

    iput v1, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->j6:I

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
