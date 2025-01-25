.class Lcom/aide/ui/views/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/SplitView;->setOrientation(ZZ)V
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
.field final FH:Z

.field final Hw:Lcom/aide/ui/views/SplitView;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xae93f0c23067807L

    const-wide v2, 0x4f8daf77341efc40L  # 1.678386694780822E75

    const-class v4, Lcom/aide/ui/views/t;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/SplitView;Z)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/views/t;->Hw:Lcom/aide/ui/views/SplitView;

    iput-boolean p2, p0, Lcom/aide/ui/views/t;->FH:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1e15937b9c9849c1L
    .end annotation

    const-wide v0, -0xa3f9b50565d71c8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/t;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/t;->Hw:Lcom/aide/ui/views/SplitView;

    iget-boolean v3, p0, Lcom/aide/ui/views/t;->FH:Z

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/views/SplitView;->openSplit(ZZ)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/t;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
