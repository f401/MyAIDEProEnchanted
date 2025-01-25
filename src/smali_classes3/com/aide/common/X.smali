.class Lcom/aide/common/X;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/Y;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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

.field final Hw:Lcom/aide/common/KeyStrokeEditText;

.field final v5:Lcom/aide/common/Y;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x45bbebac5e17d6f9L  # 8.641006815532585E27

    const-wide v2, 0x3eb9272da43812b0L

    const-class v4, Lcom/aide/common/X;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/Y;Landroid/app/Activity;Lcom/aide/common/KeyStrokeEditText;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/common/X;->v5:Lcom/aide/common/Y;

    iput-object p2, p0, Lcom/aide/common/X;->FH:Landroid/app/Activity;

    iput-object p3, p0, Lcom/aide/common/X;->Hw:Lcom/aide/common/KeyStrokeEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x6ecf8633eab148L
    .end annotation

    const-wide v0, 0x525cd79c7520e3L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/X;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/X;->FH:Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/aide/common/X;->Hw:Lcom/aide/common/KeyStrokeEditText;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v2, p0, Lcom/aide/common/X;->Hw:Lcom/aide/common/KeyStrokeEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/common/X;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v2
.end method
