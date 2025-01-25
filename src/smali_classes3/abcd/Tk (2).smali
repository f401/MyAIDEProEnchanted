.class Labcd/Tk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Zk;->gW()V
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
.field final FH:Labcd/Zk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x6fdf4c80cc5fd710L  # -5.378732710479451E-231

    const-wide v2, 0xa8b03cbc582d889L

    const-class v4, Labcd/Tk;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Zk;)V
    .registers 2

    iput-object p1, p0, Labcd/Tk;->FH:Labcd/Zk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Labcd/Tk;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x8028f75b5c94051L
    .end annotation

    const-wide v0, -0x9eb036faf264f25L  # -6.453538023106757E260

    :try_start_5
    sget-boolean v2, Labcd/Tk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "debug-aide"

    invoke-static {p1}, Labcd/Zk;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/Ek;->j6(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_26
    iget-object v2, p0, Labcd/Tk;->FH:Labcd/Zk;

    invoke-virtual {v2, p1}, Labcd/Zk;->BT(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    :cond_2b
    return-void

    :catchall_2c
    move-exception v2

    sget-boolean v3, Labcd/Tk;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v2
.end method
