.class Lcom/aide/ui/htmluidesigner/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Landroid/app/Activity;

.field final Hw:Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x8860f7674eeeb9L

    const-wide v2, 0x17c9db2c9f9db0f8L  # 4.427480510428551E-194

    const-class v4, Lcom/aide/ui/htmluidesigner/r;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/htmluidesigner/r;->Hw:Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;

    iput-object p2, p0, Lcom/aide/ui/htmluidesigner/r;->FH:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2599c612ae36c794L
    .end annotation

    const-wide v0, 0x1df142ba159f00c7L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/r;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/aide/ui/htmluidesigner/r;->Hw:Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;

    invoke-static {v4}, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;->j6(Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/aide/ui/htmluidesigner/r;->FH:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/r;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v2
.end method
