.class Lcom/aide/ui/scm/ca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua$a;->Hw(I)V
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
.field final FH:I

.field final Hw:Lcom/aide/ui/scm/ua$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xc1e937b1ab52cbdL

    const-wide v2, -0xe54dc0b2b69c618L  # -3.534627788260981E239

    const-class v4, Lcom/aide/ui/scm/ca;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua$a;I)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/scm/ca;->Hw:Lcom/aide/ui/scm/ua$a;

    iput p2, p0, Lcom/aide/ui/scm/ca;->FH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x25bbaeb24acb720L
    .end annotation

    const-wide v0, -0x634fa30b2988748L  # -4.790211145219452E278

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ca;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ca;->Hw:Lcom/aide/ui/scm/ua$a;

    iget v3, p0, Lcom/aide/ui/scm/ca;->FH:I

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$a;I)I

    iget-object v2, p0, Lcom/aide/ui/scm/ca;->Hw:Lcom/aide/ui/scm/ua$a;

    invoke-static {v2}, Lcom/aide/ui/scm/ua$a;->Hw(Lcom/aide/ui/scm/ua$a;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ca;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method
