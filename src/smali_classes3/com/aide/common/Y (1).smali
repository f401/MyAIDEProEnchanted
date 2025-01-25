.class final Lcom/aide/common/Y;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/u;Lcom/aide/common/ab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final EQ:Ljava/lang/String;

.field final gn:Lcom/aide/common/u;

.field final tp:Ljava/lang/String;

.field final u7:Lcom/aide/common/ab;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x45bbebac5e17d6f9L  # 8.641006815532585E27

    const-wide v2, -0x36ee4bf46448c8cfL  # -9.869920748260566E43

    const-class v4, Lcom/aide/common/Y;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/u;Lcom/aide/common/ab;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/aide/common/Y;->gn:Lcom/aide/common/u;

    iput-object p2, p0, Lcom/aide/common/Y;->u7:Lcom/aide/common/ab;

    iput-object p3, p0, Lcom/aide/common/Y;->tp:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/common/Y;->EQ:Ljava/lang/String;

    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x233a84cede293fbbL
    .end annotation

    const-wide v0, -0x44e7cf3641bb37a8L  # -5.002494355941961E-24

    :try_start_5
    sget-boolean v2, Lcom/aide/common/Y;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/common/KeyStrokeEditText;

    invoke-direct {v2, p1}, Lcom/aide/common/KeyStrokeEditText;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/aide/common/Y;->gn:Lcom/aide/common/u;

    invoke-virtual {v2, v3}, Lcom/aide/common/KeyStrokeEditText;->setKeyStroke(Lcom/aide/common/u;)V

    new-instance v3, Lcom/aide/common/T;

    invoke-direct {v3, p0, p1, v2}, Lcom/aide/common/T;-><init>(Lcom/aide/common/Y;Landroid/app/Activity;Lcom/aide/common/KeyStrokeEditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/aide/common/Y;->tp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/aide/ui/Ra;->dialog_ok:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/W;

    invoke-direct {v6, p0, p1, v2}, Lcom/aide/common/W;-><init>(Lcom/aide/common/Y;Landroid/app/Activity;Lcom/aide/common/KeyStrokeEditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/aide/ui/Ra;->dialog_cancel:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/V;

    invoke-direct {v6, p0, p1, v2}, Lcom/aide/common/V;-><init>(Lcom/aide/common/Y;Landroid/app/Activity;Lcom/aide/common/KeyStrokeEditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0d06a5

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/aide/common/Y;->EQ:Ljava/lang/String;

    if-eqz v4, :cond_64

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_64
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    new-instance v4, Lcom/aide/common/X;

    invoke-direct {v4, p0, p1, v2}, Lcom/aide/common/X;-><init>(Lcom/aide/common/Y;Landroid/app/Activity;Lcom/aide/common/KeyStrokeEditText;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    :try_end_70
    .catchall {:try_start_5 .. :try_end_70} :catchall_71

    return-object v3

    :catchall_71
    move-exception v2

    sget-boolean v3, Lcom/aide/common/Y;->VH:Z

    if-eqz v3, :cond_79

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_79
    throw v2
.end method
