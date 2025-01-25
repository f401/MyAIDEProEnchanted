.class Lcom/aide/ui/Da;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/build/d$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final FH:Lcom/aide/ui/MainActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1b7def450e608340L

    const-wide v2, -0x3977e4f13b356100L  # -6.11151951964968E31

    const-class v4, Lcom/aide/ui/Da;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/Da;->FH:Lcom/aide/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x100385fb1b99a403L
    .end annotation

    const-wide v0, 0x2f8514ec079b5adfL  # 8.889909361570079E-80

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Da;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/build/d;->VH()Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/aide/ui/Da;->FH:Lcom/aide/ui/MainActivity;

    invoke-static {v2}, Lcom/aide/ui/MainActivity;->j6(Lcom/aide/ui/MainActivity;)Lcom/aide/common/sa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/common/sa;->j6()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Da;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method
