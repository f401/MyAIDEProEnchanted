.class Lcom/aide/ui/scm/B;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/C;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Ljava/lang/String;",
        ">;"
    }
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
.field final FH:Lcom/aide/ui/scm/C;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2ce53dff3f047720L  # 2.0367153784621453E-92

    const-wide v2, -0x18bfaf4444d000c4L  # -2.271663876888308E189

    const-class v4, Lcom/aide/ui/scm/B;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/C;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/B;->FH:Lcom/aide/ui/scm/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/B;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x208b5629dba82f30L
    .end annotation

    const-wide v0, -0x10e97f9c9549c4f0L  # -1.332626808801757E227

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_21

    iget-object v2, p0, Lcom/aide/ui/scm/B;->FH:Lcom/aide/ui/scm/C;

    iget-object v2, v2, Lcom/aide/ui/scm/C;->Hw:Lcom/aide/ui/scm/D;

    iget-object v2, v2, Lcom/aide/ui/scm/D;->Zo:Lcom/aide/ui/scm/ua;

    iget-object v3, p0, Lcom/aide/ui/scm/B;->FH:Lcom/aide/ui/scm/C;

    iget-object v3, v3, Lcom/aide/ui/scm/C;->Hw:Lcom/aide/ui/scm/D;

    iget-object v3, v3, Lcom/aide/ui/scm/D;->v5:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/aide/ui/scm/ua;->DW(Lcom/aide/ui/scm/ua;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    :cond_21
    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/B;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v2
.end method
