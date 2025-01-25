.class Lcom/aide/ui/scm/ea;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua$a;->v5(I)V
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

    const-wide v2, -0xe553e1df5ee9418L

    const-class v4, Lcom/aide/ui/scm/ea;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua$a;I)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/scm/ea;->Hw:Lcom/aide/ui/scm/ua$a;

    iput p2, p0, Lcom/aide/ui/scm/ea;->FH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1c4dfa649f4e2e1L
    .end annotation

    const-wide v0, -0x21f2ba44781de2bdL  # -1.1422631201150488E145

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ea;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ea;->Hw:Lcom/aide/ui/scm/ua$a;

    iget v3, p0, Lcom/aide/ui/scm/ea;->FH:I

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua$a;->FH(Lcom/aide/ui/scm/ua$a;I)I

    iget-object v2, p0, Lcom/aide/ui/scm/ea;->Hw:Lcom/aide/ui/scm/ua$a;

    invoke-static {v2}, Lcom/aide/ui/scm/ua$a;->Hw(Lcom/aide/ui/scm/ua$a;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ea;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method
