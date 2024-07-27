.class Lcom/aide/ui/preferences/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/preferences/j;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab",
        "<",
        "Lcom/aide/common/u;",
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
.field final FH:Lcom/aide/ui/preferences/KeyBindingsView$b;

.field final Hw:Lcom/aide/ui/preferences/j;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/preferences/i;

    const-wide v2, 0xed7acd957b04520L

    const-wide v4, -0x132ebbb1adc1b54bL    # -1.4880902389518412E216

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/preferences/j;Lcom/aide/ui/preferences/KeyBindingsView$b;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/preferences/i;->Hw:Lcom/aide/ui/preferences/j;

    iput-object p2, p0, Lcom/aide/ui/preferences/i;->FH:Lcom/aide/ui/preferences/KeyBindingsView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/aide/common/u;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x69cfe2887ec5c210L
    .end annotation

    const-wide v2, -0xe7684c5660eaf55L    # -8.296391397612756E238

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/preferences/i;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe7684c5660eaf55L    # -8.296391397612756E238

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->j3()Labcd/Bk;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/preferences/i;->FH:Lcom/aide/ui/preferences/KeyBindingsView$b;

    iget-object v1, v1, Lcom/aide/ui/preferences/KeyBindingsView$b;->FH:Labcd/Wl;

    invoke-virtual {v0, v1, p1}, Labcd/Bk;->j6(Labcd/Wl;Lcom/aide/common/u;)V

    iget-object v0, p0, Lcom/aide/ui/preferences/i;->Hw:Lcom/aide/ui/preferences/j;

    iget-object v0, v0, Lcom/aide/ui/preferences/j;->Hw:Lcom/aide/ui/preferences/KeyBindingsView;

    invoke-virtual {v0}, Lcom/aide/ui/preferences/KeyBindingsView;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/preferences/i;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/aide/common/u;

    invoke-virtual {p0, p1}, Lcom/aide/ui/preferences/i;->j6(Lcom/aide/common/u;)V

    return-void
.end method
