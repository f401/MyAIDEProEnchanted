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
    .registers 5

    const-wide v0, -0x5d17df730569d4b9L  # -1.58284387075899E-140

    const-wide v2, 0x2e83cb033d83c1cL

    const-class v4, Labcd/zh;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x5b8f583380d4a83bL  # 1.1124229721965555E133

    :try_start_5
    sget-boolean v2, Labcd/zh;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/zh;->FH:Labcd/Ah;

    iget-object v2, v2, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v2, v2, Labcd/Bh;->VH:Labcd/Ch;

    invoke-static {v2}, Labcd/Ch;->DW(Labcd/Ch;)Lcom/aide/common/ab;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Labcd/zh;->FH:Labcd/Ah;

    iget-object v2, v2, Labcd/Ah;->v5:Labcd/Bh;

    iget-object v2, v2, Labcd/Bh;->VH:Labcd/Ch;

    invoke-static {v2}, Labcd/Ch;->DW(Labcd/Ch;)Lcom/aide/common/ab;

    move-result-object v2

    iget-object v3, p0, Labcd/zh;->FH:Labcd/Ah;

    iget-object v3, v3, Labcd/Ah;->Hw:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    :cond_29
    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Labcd/zh;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v2
.end method
