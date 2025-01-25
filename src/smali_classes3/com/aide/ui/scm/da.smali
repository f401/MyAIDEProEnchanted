.class Lcom/aide/ui/scm/da;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua$a;->v5(Ljava/lang/String;I)V
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
.field final FH:Ljava/lang/String;

.field final Hw:I

.field final v5:Lcom/aide/ui/scm/ua$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xc1e937b1ab52cbdL

    const-wide v2, -0xe550d1490cb2d37L  # -3.509681388981643E239

    const-class v4, Lcom/aide/ui/scm/da;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/scm/da;->v5:Lcom/aide/ui/scm/ua$a;

    iput-object p2, p0, Lcom/aide/ui/scm/da;->FH:Ljava/lang/String;

    iput p3, p0, Lcom/aide/ui/scm/da;->Hw:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x171341afa4344360L
    .end annotation

    const-wide v0, -0xf833499daf8be57L  # -7.152643948100392E233

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/da;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/da;->v5:Lcom/aide/ui/scm/ua$a;

    iget-object v3, p0, Lcom/aide/ui/scm/da;->FH:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua$a;->DW(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/ui/scm/da;->v5:Lcom/aide/ui/scm/ua$a;

    iget v3, p0, Lcom/aide/ui/scm/da;->Hw:I

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua$a;->DW(Lcom/aide/ui/scm/ua$a;I)I

    iget-object v2, p0, Lcom/aide/ui/scm/da;->v5:Lcom/aide/ui/scm/ua$a;

    invoke-static {v2}, Lcom/aide/ui/scm/ua$a;->Hw(Lcom/aide/ui/scm/ua$a;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/da;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method
