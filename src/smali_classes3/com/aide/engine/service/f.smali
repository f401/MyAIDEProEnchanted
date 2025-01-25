.class Lcom/aide/engine/service/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/H;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/engine/service/l;->j6(Ljava/lang/String;Lcom/aide/engine/service/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Lcom/aide/engine/service/u;

.field final Hw:Lcom/aide/engine/service/l;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1bd72709e548b1bdL

    const-wide v2, 0x12feb792f6db2471L

    const-class v4, Lcom/aide/engine/service/f;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/u;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/engine/service/f;->Hw:Lcom/aide/engine/service/l;

    iput-object p2, p0, Lcom/aide/engine/service/f;->FH:Lcom/aide/engine/service/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVersion()J
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x440289ff15462d8L
    .end annotation

    const-wide v0, -0x6c96e253bd4a865fL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/f;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/engine/service/f;->FH:Lcom/aide/engine/service/u;

    invoke-interface {v2}, Lcom/aide/engine/service/u;->getVersion()J

    move-result-wide v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_13
    .catchall {:try_start_c .. :try_end_12} :catchall_1a

    return-wide v0

    :catch_13
    move-exception v2

    :try_start_14
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1a

    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/f;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(J)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4c6eb847379bb829L
    .end annotation

    const-wide v0, 0x12073e06f5fd2800L  # 8.03733720433039E-222

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/f;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    :cond_11
    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/f;->DW:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public j6(Lcom/aide/engine/I;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0xc7e839c774bdafL
    .end annotation

    const-wide v0, -0x294fa4828e8879c0L  # -3.841601019364078E109

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/f;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_55

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/engine/service/f;->FH:Lcom/aide/engine/service/u;

    invoke-interface {v2}, Lcom/aide/engine/service/u;->ye()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/aide/engine/I;->v5:J

    iget-object v2, p0, Lcom/aide/engine/service/f;->FH:Lcom/aide/engine/service/u;

    invoke-interface {v2}, Lcom/aide/engine/service/u;->sE()I

    move-result v2

    iput v2, p1, Lcom/aide/engine/I;->Hw:I

    iget-object v2, p1, Lcom/aide/engine/I;->FH:[C

    if-eqz v2, :cond_27

    iget-object v2, p1, Lcom/aide/engine/I;->FH:[C

    array-length v2, v2

    iget v3, p1, Lcom/aide/engine/I;->Hw:I

    if-ge v2, v3, :cond_31

    :cond_27
    iget v2, p1, Lcom/aide/engine/I;->Hw:I

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [C

    iput-object v2, p1, Lcom/aide/engine/I;->FH:[C

    :cond_31
    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_33
    iget-object v4, p0, Lcom/aide/engine/service/f;->FH:Lcom/aide/engine/service/u;

    invoke-interface {v4, v3}, Lcom/aide/engine/service/u;->FH(I)Lcom/aide/engine/service/CharArray;

    move-result-object v4

    iget v5, v4, Lcom/aide/engine/service/CharArray;->Hw:I

    if-gtz v5, :cond_3e

    goto :goto_54

    :cond_3e
    iget-object v5, p1, Lcom/aide/engine/I;->FH:[C

    iget-object v6, v4, Lcom/aide/engine/service/CharArray;->FH:[C

    iget v4, v4, Lcom/aide/engine/service/CharArray;->Hw:I
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_44} :catch_50
    .catchall {:try_start_c .. :try_end_44} :catchall_55

    const/4 v7, 0x0

    :goto_45
    if-ge v7, v4, :cond_33

    aget-char v8, v6, v7

    aput-char v8, v5, v3

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    :catch_50
    move-exception v2

    :try_start_51
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    :goto_54
    return-void

    :catchall_55
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/f;->DW:Z

    if-eqz v3, :cond_5d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    goto :goto_5f

    :goto_5e
    throw v2

    :goto_5f
    goto :goto_5e
.end method
