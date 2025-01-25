.class final Lcom/aide/uidesigner/da;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/ka;->QX(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Lcom/aide/uidesigner/s;",
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
.field final FH:Lcom/aide/uidesigner/s;

.field final Hw:Lcom/aide/uidesigner/a;

.field final v5:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1c796187b3007d70L  # 1.6419155400031285E-171

    const-wide v2, 0x1dd19c1737c30a29L  # 4.778098123032418E-165

    const-class v4, Lcom/aide/uidesigner/da;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/uidesigner/da;->FH:Lcom/aide/uidesigner/s;

    iput-object p2, p0, Lcom/aide/uidesigner/da;->Hw:Lcom/aide/uidesigner/a;

    iput-object p3, p0, Lcom/aide/uidesigner/da;->v5:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/aide/uidesigner/s;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x608f8d459b40b10L
    .end annotation

    const-wide v0, -0x42801c86f7f409e0L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/da;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Lcom/aide/uidesigner/s;->getViewID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/aide/uidesigner/da;->FH:Lcom/aide/uidesigner/s;

    iget-object v3, p0, Lcom/aide/uidesigner/da;->Hw:Lcom/aide/uidesigner/a;

    invoke-virtual {p1}, Lcom/aide/uidesigner/s;->EQ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, p1, v4}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/a;Lcom/aide/uidesigner/s;Ljava/lang/String;)V

    goto :goto_2a

    :cond_1e
    iget-object v2, p0, Lcom/aide/uidesigner/da;->FH:Lcom/aide/uidesigner/s;

    iget-object v3, p0, Lcom/aide/uidesigner/da;->Hw:Lcom/aide/uidesigner/a;

    invoke-virtual {p1}, Lcom/aide/uidesigner/s;->getViewID()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/a;Lcom/aide/uidesigner/s;Ljava/lang/String;)V

    :goto_2a
    iget-object v2, p0, Lcom/aide/uidesigner/da;->v5:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View was selected for attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/uidesigner/da;->Hw:Lcom/aide/uidesigner/a;

    iget-object v4, v4, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v4}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_4d
    .catchall {:try_start_5 .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/da;->DW:Z

    if-eqz v3, :cond_56

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v2
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/aide/uidesigner/s;

    invoke-virtual {p0, p1}, Lcom/aide/uidesigner/da;->j6(Lcom/aide/uidesigner/s;)V

    return-void
.end method
