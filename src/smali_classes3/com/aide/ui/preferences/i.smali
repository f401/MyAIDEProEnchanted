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
        "Lcom/aide/common/ab<",
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
    .registers 5

    const-wide v0, 0xed7acd957b04520L

    const-wide v2, -0x132ebbb1adc1b54bL  # -1.4880902389518412E216

    const-class v4, Lcom/aide/ui/preferences/i;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0xe7684c5660eaf55L  # -8.296391397612756E238

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/preferences/i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->j3()Labcd/Bk;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/preferences/i;->FH:Lcom/aide/ui/preferences/KeyBindingsView$b;

    iget-object v3, v3, Lcom/aide/ui/preferences/KeyBindingsView$b;->FH:Labcd/Wl;

    invoke-virtual {v2, v3, p1}, Labcd/Bk;->j6(Labcd/Wl;Lcom/aide/common/u;)V

    iget-object v2, p0, Lcom/aide/ui/preferences/i;->Hw:Lcom/aide/ui/preferences/j;

    iget-object v2, v2, Lcom/aide/ui/preferences/j;->Hw:Lcom/aide/ui/preferences/KeyBindingsView;

    invoke-virtual {v2}, Lcom/aide/ui/preferences/KeyBindingsView;->j6()V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/preferences/i;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/aide/common/u;

    invoke-virtual {p0, p1}, Lcom/aide/ui/preferences/i;->j6(Lcom/aide/common/u;)V

    return-void
.end method
