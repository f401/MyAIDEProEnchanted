.class Lcom/aide/ui/htmluidesigner/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
.field final FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x8860f7674eeeb9L

    const-wide v2, 0x17cacba4e29cb460L

    const-class v4, Lcom/aide/ui/htmluidesigner/t;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/htmluidesigner/t;->FH:Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x8ad48b1c873af49L
    .end annotation

    const-wide v0, 0x9fcd5e39f053ab0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/t;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/t;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method
