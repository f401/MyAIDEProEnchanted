.class Lcom/aide/ui/views/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/CodeEditText$c;->SI()V
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
.field final FH:Lcom/aide/ui/views/CodeEditText$c;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/views/e;

    const-wide v2, 0x20bc34faa8da3f57L    # 5.385652283143974E-151

    const-wide v4, 0x22df96db9b32a8fL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/CodeEditText$c;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x34230ef7ee49a4dL
    .end annotation

    const-wide v6, -0x119b390243f28c1cL    # -6.008362102333643E223

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/e;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x119b390243f28c1cL    # -6.008362102333643E223

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aide/ui/views/CodeEditText$c;->j6(Lcom/aide/ui/views/CodeEditText$c;Z)Z

    iget-object v0, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v1, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    invoke-static {v1}, Lcom/aide/ui/views/CodeEditText$c;->DW(Lcom/aide/ui/views/CodeEditText$c;)F

    move-result v1

    iget-object v2, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditText$c;->FH(Lcom/aide/ui/views/CodeEditText$c;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/aide/ui/views/CodeEditText$c;->j6(Lcom/aide/ui/views/CodeEditText$c;FF)I

    move-result v1

    iget-object v0, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v2, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditText$c;->DW(Lcom/aide/ui/views/CodeEditText$c;)F

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText$c;->FH(Lcom/aide/ui/views/CodeEditText$c;)F

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/aide/ui/views/CodeEditText$c;->DW(Lcom/aide/ui/views/CodeEditText$c;FF)I

    move-result v3

    if-lez v1, :cond_1

    if-lez v3, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->performHapticFeedback(II)Z

    iget-object v0, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v0, v0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    iget-object v2, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    invoke-static {v2, v1, v3}, Lcom/aide/ui/views/CodeEditText$c;->j6(Lcom/aide/ui/views/CodeEditText$c;II)I

    move-result v2

    iget-object v4, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    invoke-static {v4, v1, v3}, Lcom/aide/ui/views/CodeEditText$c;->DW(Lcom/aide/ui/views/CodeEditText$c;II)I

    move-result v4

    iget-object v3, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v3, v3, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v3}, Lcom/aide/ui/views/CodeEditText;->v5(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v5

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/ui/views/CodeEditText;IIIILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/e;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
