.class Lcom/aide/ui/scm/ga;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/ua$a;->XL(Ljava/lang/String;)V
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

.field final Hw:Lcom/aide/ui/scm/ua$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xc1e937b1ab52cbdL

    const-wide v2, -0xe55a030bf7b6120L  # -3.434842202423815E239

    const-class v4, Lcom/aide/ui/scm/ga;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/scm/ga;->Hw:Lcom/aide/ui/scm/ua$a;

    iput-object p2, p0, Lcom/aide/ui/scm/ga;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xd08df23193d80f8L
    .end annotation

    const-wide v0, -0x4bcc1839d15d8c71L  # -3.1711080382299224E-57

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ga;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ga;->Hw:Lcom/aide/ui/scm/ua$a;

    iget-object v3, p0, Lcom/aide/ui/scm/ga;->FH:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua$a;->FH(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ga;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method
