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
    .registers 6

    const-class v0, Lcom/aide/engine/service/f;

    const-wide v2, 0x1bd72709e548b1bdL

    const-wide v4, 0x12feb792f6db2471L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, -0x6c96e253bd4a865fL

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/f;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6c96e253bd4a865fL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aide/engine/service/f;->FH:Lcom/aide/engine/service/u;

    invoke-interface {v0}, Lcom/aide/engine/service/u;->getVersion()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/f;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(J)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x4c6eb847379bb829L
    .end annotation

    const-wide v4, 0x12073e06f5fd2800L    # 8.03733720433039E-222

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/f;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const-wide v2, 0x12073e06f5fd2800L    # 8.03733720433039E-222

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/f;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/engine/I;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xc7e839c774bdafL
    .end annotation

    const-wide v8, -0x294fa4828e8879c0L    # -3.841601019364078E109

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/f;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x294fa4828e8879c0L    # -3.841601019364078E109

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aide/engine/service/f;->FH:Lcom/aide/engine/service/u;

    invoke-interface {v0}, Lcom/aide/engine/service/u;->ye()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/aide/engine/I;->v5:J

    iget-object v0, p0, Lcom/aide/engine/service/f;->FH:Lcom/aide/engine/service/u;

    invoke-interface {v0}, Lcom/aide/engine/service/u;->sE()I

    move-result v0

    iput v0, p1, Lcom/aide/engine/I;->Hw:I

    iget-object v0, p1, Lcom/aide/engine/I;->FH:[C

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/aide/engine/I;->FH:[C

    array-length v0, v0

    iget v2, p1, Lcom/aide/engine/I;->Hw:I

    if-ge v0, v2, :cond_2

    :cond_1
    iget v0, p1, Lcom/aide/engine/I;->Hw:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [C

    iput-object v0, p1, Lcom/aide/engine/I;->FH:[C

    :cond_2
    move v2, v1

    :cond_3
    iget-object v0, p0, Lcom/aide/engine/service/f;->FH:Lcom/aide/engine/service/u;

    invoke-interface {v0, v2}, Lcom/aide/engine/service/u;->FH(I)Lcom/aide/engine/service/CharArray;

    move-result-object v0

    iget v3, v0, Lcom/aide/engine/service/CharArray;->Hw:I

    if-gtz v3, :cond_4

    :goto_0
    return-void

    :cond_4
    iget-object v3, p1, Lcom/aide/engine/I;->FH:[C

    iget-object v4, v0, Lcom/aide/engine/service/CharArray;->FH:[C

    iget v5, v0, Lcom/aide/engine/service/CharArray;->Hw:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_3

    aget-char v6, v4, v0

    aput-char v6, v3, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/f;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v0
.end method
