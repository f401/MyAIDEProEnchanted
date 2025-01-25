.class Labcd/Mk;
.super Lcom/aide/engine/service/u$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Nk;->DW(Ljava/lang/String;Labcd/Nk$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final VH:Labcd/Nk$a;

.field private Zo:Lcom/aide/engine/service/CharArray;
    .annotation runtime Labcd/ru;
        field = -0x576dcdad150454cL
    .end annotation
.end field

.field final gn:Labcd/Nk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private v5:Lcom/aide/engine/I;
    .annotation runtime Labcd/ru;
        field = 0x15f2357630192cfL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1384ce20a8b9c79L

    const-wide v2, 0x7b3f6dc139ea8ccL

    const-class v4, Labcd/Mk;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Nk;Labcd/Nk$a;)V
    .registers 3

    iput-object p1, p0, Labcd/Mk;->gn:Labcd/Nk;

    iput-object p2, p0, Labcd/Mk;->VH:Labcd/Nk$a;

    invoke-direct {p0}, Lcom/aide/engine/service/u$a;-><init>()V

    new-instance p1, Lcom/aide/engine/I;

    invoke-direct {p1}, Lcom/aide/engine/I;-><init>()V

    iput-object p1, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    new-instance p1, Lcom/aide/engine/service/CharArray;

    const/16 p2, 0x2710

    invoke-direct {p1, p2}, Lcom/aide/engine/service/CharArray;-><init>(I)V

    iput-object p1, p0, Labcd/Mk;->Zo:Lcom/aide/engine/service/CharArray;

    return-void
.end method


# virtual methods
.method public FH(I)Lcom/aide/engine/service/CharArray;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1f0679f6b609ba50L
    .end annotation

    const-wide v0, -0xeb9fad858dc0200L

    :try_start_5
    sget-boolean v2, Labcd/Mk;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    iget-object v2, v2, Lcom/aide/engine/I;->FH:[C

    iget-object v3, p0, Labcd/Mk;->Zo:Lcom/aide/engine/service/CharArray;

    iget-object v3, v3, Lcom/aide/engine/service/CharArray;->FH:[C

    iget-object v4, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    iget v4, v4, Lcom/aide/engine/I;->Hw:I

    array-length v5, v3
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_2e

    const/4 v6, 0x0

    :goto_1a
    if-ge p1, v4, :cond_27

    if-ge v6, v5, :cond_27

    aget-char v7, v2, p1

    aput-char v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    :cond_27
    :try_start_27
    iget-object v2, p0, Labcd/Mk;->Zo:Lcom/aide/engine/service/CharArray;

    iput v6, v2, Lcom/aide/engine/service/CharArray;->Hw:I

    iget-object p1, p0, Labcd/Mk;->Zo:Lcom/aide/engine/service/CharArray;
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2e

    return-object p1

    :catchall_2e
    move-exception v2

    sget-boolean v3, Labcd/Mk;->Hw:Z

    if-eqz v3, :cond_3b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    goto :goto_3d

    :goto_3c
    throw v2

    :goto_3d
    goto :goto_3c
.end method

.method public getVersion()J
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x17251fdf7e4ead68L
    .end annotation

    const-wide v0, 0x16b12b51f42e32c0L

    :try_start_5
    sget-boolean v2, Labcd/Mk;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Mk;->VH:Labcd/Nk$a;

    invoke-interface {v2}, Labcd/Nk$a;->getVersion()J

    move-result-wide v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-wide v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Mk;->Hw:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public sE()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1eae2d5c24f3acefL
    .end annotation

    const-wide v0, 0x1149a0539498145fL  # 2.163509190358932E-225

    :try_start_5
    sget-boolean v2, Labcd/Mk;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    iget v0, v2, Lcom/aide/engine/I;->Hw:I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/Mk;->Hw:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public ye()J
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x3bd9bda61a731580L
    .end annotation

    const-wide v0, -0x157d86d483093a8L

    :try_start_5
    sget-boolean v2, Labcd/Mk;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_34

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Mk;->VH:Labcd/Nk$a;

    iget-object v3, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    invoke-interface {v2, v3}, Labcd/Nk$a;->j6(Lcom/aide/engine/I;)V

    iget-object v2, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    iget-object v3, v2, Lcom/aide/engine/I;->FH:[C

    iput-object v3, v2, Lcom/aide/engine/I;->FH:[C

    iget-object v2, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    iget v3, v2, Lcom/aide/engine/I;->Hw:I

    iput v3, v2, Lcom/aide/engine/I;->Hw:I

    iget-object v2, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    iget-wide v3, v2, Lcom/aide/engine/I;->v5:J

    iput-wide v3, v2, Lcom/aide/engine/I;->v5:J
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_25} :catch_26
    .catchall {:try_start_c .. :try_end_25} :catchall_34

    goto :goto_2f

    :catch_26
    move-exception v2

    :try_start_27
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    iget-object v2, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    const/4 v3, 0x0

    iput v3, v2, Lcom/aide/engine/I;->Hw:I

    :goto_2f
    iget-object v2, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    iget-wide v0, v2, Lcom/aide/engine/I;->v5:J
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_34

    return-wide v0

    :catchall_34
    move-exception v2

    sget-boolean v3, Labcd/Mk;->Hw:Z

    if-eqz v3, :cond_3c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3c
    throw v2
.end method
