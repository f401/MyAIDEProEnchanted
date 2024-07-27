.class Labcd/zh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Ah;->run()V
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
.field final FH:Labcd/Ah;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/zh;

    const-wide v2, -0x5d17df730569d4b9L    # -1.58284387075899E-140

    const-wide v4, 0x2e83cb033d83c1cL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Ah;)V
    .registers 2

    iput-object p1, p0, Labcd/zh;->FH:Labcd/Ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1644be30d7763920L
    .end annotation

    const-wide v2, 0x5b8f583380d4a83bL    # 1.1124229721965555E133

    :try_start_0
    sget-boolean v0, Labcd/zh;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5b8f583380d4a83bL    # 1.1124229721965555E133

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/zh;->FH:Labcd/Ah;

    iget-object v0, v0, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v0, v0, Labcd/Bh;->VH:Labcd/Ch;

    invoke-static {v0}, Labcd/Ch;->DW(Labcd/Ch;)Lcom/aide/common/ab;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/zh;->FH:Labcd/Ah;

    iget-object v0, v0, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v0, v0, Labcd/Bh;->VH:Labcd/Ch;

    invoke-static {v0}, Labcd/Ch;->DW(Labcd/Ch;)Lcom/aide/common/ab;

    move-result-object v0

    iget-object v1, p0, Labcd/zh;->FH:Labcd/Ah;

    iget-object v1, v1, Labcd/Ah;->Hw:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/zh;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
