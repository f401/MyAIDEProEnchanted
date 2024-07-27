.class Labcd/LM;
.super Labcd/FL;


# instance fields
.field private DW:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Labcd/FL;-><init>()V

    iput-object p1, p0, Labcd/LM;->DW:[B

    return-void
.end method

.method private we()V
    .registers 4

    new-instance v0, Labcd/KM;

    iget-object v1, p0, Labcd/LM;->DW:[B

    invoke-direct {v0, v1}, Labcd/KM;-><init>([B)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/LM;->DW:[B

    return-void

    :cond_0
    iget-object v1, p0, Labcd/FL;->j6:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method VH()Labcd/EL;
    .registers 2

    iget-object v0, p0, Labcd/LM;->DW:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Labcd/LM;->we()V

    :cond_0
    invoke-super {p0}, Labcd/FL;->VH()Labcd/EL;

    move-result-object v0

    return-object v0
.end method

.method gn()Labcd/EL;
    .registers 2

    iget-object v0, p0, Labcd/LM;->DW:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Labcd/LM;->we()V

    :cond_0
    invoke-super {p0}, Labcd/FL;->gn()Labcd/EL;

    move-result-object v0

    return-object v0
.end method

.method public j6(I)Labcd/qL;
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labcd/LM;->DW:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Labcd/LM;->we()V

    :cond_0
    invoke-super {p0, p1}, Labcd/FL;->j6(I)Labcd/qL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method j6(Labcd/CL;)V
    .registers 4

    iget-object v0, p0, Labcd/LM;->DW:[B

    if-eqz v0, :cond_0

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Labcd/CL;->j6(I[B)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Labcd/FL;->gn()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/EL;->j6(Labcd/CL;)V

    goto :goto_0
.end method

.method public tp()I
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labcd/LM;->DW:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Labcd/LM;->we()V

    :cond_0
    invoke-super {p0}, Labcd/FL;->tp()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public u7()Ljava/util/Enumeration;
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labcd/LM;->DW:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Labcd/FL;->u7()Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Labcd/KM;

    iget-object v1, p0, Labcd/LM;->DW:[B

    invoke-direct {v0, v1}, Labcd/KM;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method v5()I
    .registers 3

    iget-object v0, p0, Labcd/LM;->DW:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    invoke-static {v0}, Labcd/OM;->j6(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/LM;->DW:[B

    array-length v1, v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Labcd/FL;->gn()Labcd/EL;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EL;->v5()I

    move-result v0

    goto :goto_0
.end method
