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
    .registers 6

    const-class v0, Labcd/Mk;

    const-wide v2, -0x1384ce20a8b9c79L

    const-wide v4, 0x7b3f6dc139ea8ccL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Nk;Labcd/Nk$a;)V
    .registers 5

    iput-object p1, p0, Labcd/Mk;->gn:Labcd/Nk;

    iput-object p2, p0, Labcd/Mk;->VH:Labcd/Nk$a;

    invoke-direct {p0}, Lcom/aide/engine/service/u$a;-><init>()V

    new-instance v0, Lcom/aide/engine/I;

    invoke-direct {v0}, Lcom/aide/engine/I;-><init>()V

    iput-object v0, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    new-instance v0, Lcom/aide/engine/service/CharArray;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Lcom/aide/engine/service/CharArray;-><init>(I)V

    iput-object v0, p0, Labcd/Mk;->Zo:Lcom/aide/engine/service/CharArray;

    return-void
.end method


# virtual methods
.method public FH(I)Lcom/aide/engine/service/CharArray;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1f0679f6b609ba50L
    .end annotation

    const-wide v6, -0xeb9fad858dc0200L

    :try_start_0
    sget-boolean v0, Labcd/Mk;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xeb9fad858dc0200L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    iget-object v1, v0, Lcom/aide/engine/I;->FH:[C

    iget-object v0, p0, Labcd/Mk;->Zo:Lcom/aide/engine/service/CharArray;

    iget-object v2, v0, Lcom/aide/engine/service/CharArray;->FH:[C

    iget-object v0, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    iget v3, v0, Lcom/aide/engine/I;->Hw:I

    array-length v4, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    if-ge p1, v3, :cond_1

    if-ge v0, v4, :cond_1

    aget-char v5, v1, p1

    aput-char v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Labcd/Mk;->Zo:Lcom/aide/engine/service/CharArray;

    iput v0, v1, Lcom/aide/engine/service/CharArray;->Hw:I

    iget-object v0, p0, Labcd/Mk;->Zo:Lcom/aide/engine/service/CharArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mk;->Hw:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public getVersion()J
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x17251fdf7e4ead68L
    .end annotation

    const-wide v2, 0x16b12b51f42e32c0L

    :try_start_0
    sget-boolean v0, Labcd/Mk;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x16b12b51f42e32c0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Mk;->VH:Labcd/Nk$a;

    invoke-interface {v0}, Labcd/Nk$a;->getVersion()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mk;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public sE()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1eae2d5c24f3acefL
    .end annotation

    const-wide v2, 0x1149a0539498145fL    # 2.163509190358932E-225

    :try_start_0
    sget-boolean v0, Labcd/Mk;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1149a0539498145fL    # 2.163509190358932E-225

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    iget v0, v0, Lcom/aide/engine/I;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Mk;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public ye()J
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x3bd9bda61a731580L
    .end annotation

    const-wide v4, -0x157d86d483093a8L

    :try_start_0
    sget-boolean v0, Labcd/Mk;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x157d86d483093a8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Labcd/Mk;->VH:Labcd/Nk$a;

    iget-object v1, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    invoke-interface {v0, v1}, Labcd/Nk$a;->j6(Lcom/aide/engine/I;)V

    iget-object v0, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    iget-object v1, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    iget-object v1, v1, Lcom/aide/engine/I;->FH:[C

    iput-object v1, v0, Lcom/aide/engine/I;->FH:[C

    iget-object v0, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    iget-object v1, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    iget v1, v1, Lcom/aide/engine/I;->Hw:I

    iput v1, v0, Lcom/aide/engine/I;->Hw:I

    iget-object v0, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    iget-object v1, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    iget-wide v2, v1, Lcom/aide/engine/I;->v5:J

    iput-wide v2, v0, Lcom/aide/engine/I;->v5:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    iget-wide v0, v0, Lcom/aide/engine/I;->v5:J

    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    iget-object v0, p0, Labcd/Mk;->v5:Lcom/aide/engine/I;

    const/4 v1, 0x0

    iput v1, v0, Lcom/aide/engine/I;->Hw:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/Mk;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
