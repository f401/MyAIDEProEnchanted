.class Lcom/aide/common/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ColorPickerView$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/t;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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

.field final Hw:Lcom/aide/common/t;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/common/o;

    const-wide v2, 0x24c54939ab6ff2a4L

    const-wide v4, 0x35f422dfdef1f103L    # 8.611104148033003E-49

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/t;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/common/o;->Hw:Lcom/aide/common/t;

    iput-object p2, p0, Lcom/aide/common/o;->FH:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(ILjava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x36a03544a8a8e500L
    .end annotation

    const-wide v2, -0x4ac5aa56e80d30c8L    # -2.749461720238332E-52

    :try_start_0
    sget-boolean v0, Lcom/aide/common/o;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x4ac5aa56e80d30c8L    # -2.749461720238332E-52

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/o;->Hw:Lcom/aide/common/t;

    invoke-static {v0}, Lcom/aide/common/t;->j6(Lcom/aide/common/t;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/common/o;->Hw:Lcom/aide/common/t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aide/common/t;->DW(Lcom/aide/common/t;Z)Z

    iget-object v0, p0, Lcom/aide/common/o;->FH:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/aide/common/o;->Hw:Lcom/aide/common/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/common/t;->DW(Lcom/aide/common/t;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/aide/common/o;->Hw:Lcom/aide/common/t;

    invoke-static {v0, p2}, Lcom/aide/common/t;->j6(Lcom/aide/common/t;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/common/o;->Hw:Lcom/aide/common/t;

    invoke-static {v0, p1}, Lcom/aide/common/t;->j6(Lcom/aide/common/t;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/o;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method
