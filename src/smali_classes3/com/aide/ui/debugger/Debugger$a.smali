.class public Lcom/aide/ui/debugger/Debugger$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/debugger/Debugger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
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
.field public FH:Ljava/lang/String;

.field public Hw:Ljava/lang/String;

.field final Zo:Lcom/aide/ui/debugger/Debugger;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field public v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/debugger/Debugger$a;

    const-wide v1, 0x1016ca5075bcd7dL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/debugger/Debugger;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/debugger/Debugger$a;->j6:Z

    if-eqz v0, :cond_15

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xf5a67902629d4e0L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    iput-object p1, p0, Lcom/aide/ui/debugger/Debugger$a;->Zo:Lcom/aide/ui/debugger/Debugger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/debugger/Debugger$a;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/debugger/Debugger$a;->Hw:Ljava/lang/String;

    iput p4, p0, Lcom/aide/ui/debugger/Debugger$a;->v5:I
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/debugger/Debugger$a;->DW:Z

    if-eqz v1, :cond_38

    const-wide v2, 0xf5a67902629d4e0L

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method


# virtual methods
.method public j6()V
    .registers 11

    const-wide v0, 0x273367ea7fe6bd57L  # 7.515121636691054E-120

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/debugger/Debugger$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/debugger/Debugger$a;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Labcd/Zk;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2a

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    new-instance v3, Labcd/Tl;

    iget v8, p0, Lcom/aide/ui/debugger/Debugger$a;->v5:I

    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object v4, v3

    move v6, v8

    invoke-direct/range {v4 .. v9}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    :cond_2a
    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/debugger/Debugger$a;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method
