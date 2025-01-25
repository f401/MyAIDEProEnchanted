.class Lcom/aide/ui/build/java/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/java/f;->j6(Ljava/lang/String;I)V
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

.field final v5:Lcom/aide/ui/build/java/f;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xe65e2c46d3e3b4dL

    const-wide v2, 0x2c4755d8ced4a961L  # 2.1849701411177025E-95

    const-class v4, Lcom/aide/ui/build/java/e;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/java/f;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/build/java/e;->v5:Lcom/aide/ui/build/java/f;

    iput-object p2, p0, Lcom/aide/ui/build/java/e;->FH:Ljava/lang/String;

    iput p3, p0, Lcom/aide/ui/build/java/e;->Hw:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x88e6a21dac08394L
    .end annotation

    const-wide v0, 0x1192ad3b00a6b57bL  # 5.045717698961845E-224

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/java/e;->v5:Lcom/aide/ui/build/java/f;

    iget-object v2, v2, Lcom/aide/ui/build/java/f;->v5:Lcom/aide/ui/build/java/h;

    iget-object v3, p0, Lcom/aide/ui/build/java/e;->FH:Ljava/lang/String;

    iget v4, p0, Lcom/aide/ui/build/java/e;->Hw:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/aide/ui/build/java/h;->j6(Lcom/aide/ui/build/java/h;Ljava/lang/String;IZ)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/e;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method
