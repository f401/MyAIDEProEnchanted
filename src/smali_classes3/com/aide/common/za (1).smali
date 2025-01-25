.class Lcom/aide/common/za;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/Fa;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Landroid/widget/EditText;

.field final Hw:Landroid/widget/SeekBar;

.field final v5:Lcom/aide/common/Fa;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x591bccec5c964d88L

    const-wide v2, 0x662ce6a45ae3dcb5L  # 1.5350390108421292E184

    const-class v4, Lcom/aide/common/za;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/Fa;Landroid/widget/EditText;Landroid/widget/SeekBar;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/common/za;->v5:Lcom/aide/common/Fa;

    iput-object p2, p0, Lcom/aide/common/za;->FH:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/aide/common/za;->Hw:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x36d7fb8f4598e98L
    .end annotation

    const-wide v0, 0x93c19802b967a00L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/za;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/za;->FH:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/aide/common/za;->v5:Lcom/aide/common/Fa;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aide/common/Fa;->j6(Lcom/aide/common/Fa;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/aide/common/za;->v5:Lcom/aide/common/Fa;

    iget-object v3, p0, Lcom/aide/common/za;->Hw:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/aide/common/za;->FH:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/aide/common/Fa;->DW(Lcom/aide/common/Fa;Landroid/widget/SeekBar;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/common/za;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v2
.end method
