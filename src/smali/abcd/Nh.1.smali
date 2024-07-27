.class Labcd/Nh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Oh;->j6(Landroid/app/AlertDialog;Ljava/util/List;)V
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
.field final FH:Landroid/app/AlertDialog;

.field final Hw:Labcd/Oh;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Nh;

    const-wide v2, -0x23b40421389c322fL    # -4.0679517960582325E136

    const-wide v4, 0x1e71104bb296e155L    # 4.741048571166436E-162

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Oh;Landroid/app/AlertDialog;)V
    .registers 3

    iput-object p1, p0, Labcd/Nh;->Hw:Labcd/Oh;

    iput-object p2, p0, Labcd/Nh;->FH:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0xae9604f7ebb966bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Nh;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p4, p5}, Ljava/lang/Long;-><init>(J)V

    const-wide v0, 0xb229af06ce33310L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Labcd/Nh;->Hw:Labcd/Oh;

    iget-object v1, p0, Labcd/Nh;->Hw:Labcd/Oh;

    invoke-static {v1}, Labcd/Oh;->FH(Labcd/Oh;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Labcd/Nh;->Hw:Labcd/Oh;

    invoke-static {v3}, Labcd/Oh;->FH(Labcd/Oh;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Oh;->j6(Labcd/Oh;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Labcd/Nh;->Hw:Labcd/Oh;

    invoke-static {v0}, Labcd/Oh;->FH(Labcd/Oh;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/Nh;->Hw:Labcd/Oh;

    const-string v1, "/"

    invoke-static {v0, v1}, Labcd/Oh;->j6(Labcd/Oh;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Labcd/Nh;->Hw:Labcd/Oh;

    iget-object v1, p0, Labcd/Nh;->FH:Landroid/app/AlertDialog;

    invoke-static {v0, v1}, Labcd/Oh;->DW(Labcd/Oh;Landroid/app/AlertDialog;)V

    return-void

    :cond_2
    iget-object v1, p0, Labcd/Nh;->Hw:Labcd/Oh;

    invoke-static {v1}, Labcd/Oh;->FH(Labcd/Oh;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    iget-object v1, p0, Labcd/Nh;->Hw:Labcd/Oh;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Labcd/Nh;->Hw:Labcd/Oh;

    invoke-static {v3}, Labcd/Oh;->FH(Labcd/Oh;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Labcd/Oh;->j6(Labcd/Oh;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Labcd/Nh;->Hw:Labcd/Oh;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Labcd/Nh;->Hw:Labcd/Oh;

    invoke-static {v3}, Labcd/Oh;->FH(Labcd/Oh;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/Oh;->j6(Labcd/Oh;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Nh;->DW:Z

    if-eqz v0, :cond_4

    const-wide v2, 0xb229af06ce33310L

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, p4, p5}, Ljava/lang/Long;-><init>(J)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method
