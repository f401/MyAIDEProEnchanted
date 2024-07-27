.class Lcom/aide/common/Aa;
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
    .registers 6

    const-class v0, Lcom/aide/common/Aa;

    const-wide v2, -0x591bccec5c964d88L

    const-wide v4, 0x662d5579674a6ef8L    # 1.5580340120606583E184

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/Fa;Landroid/widget/EditText;Landroid/widget/SeekBar;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/common/Aa;->v5:Lcom/aide/common/Fa;

    iput-object p2, p0, Lcom/aide/common/Aa;->FH:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/aide/common/Aa;->Hw:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x512e2bc88cf48bcL
    .end annotation

    const-wide v4, -0x1294b4aefa29eae5L    # -1.204362751260461E219

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Aa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1294b4aefa29eae5L    # -1.204362751260461E219

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/Aa;->FH:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aide/common/Aa;->v5:Lcom/aide/common/Fa;

    iget-object v2, p0, Lcom/aide/common/Aa;->FH:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aide/common/Fa;->DW(Lcom/aide/common/Fa;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aide/common/Aa;->v5:Lcom/aide/common/Fa;

    iget-object v1, p0, Lcom/aide/common/Aa;->Hw:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/aide/common/Aa;->FH:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aide/common/Fa;->DW(Lcom/aide/common/Fa;Landroid/widget/SeekBar;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Aa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
