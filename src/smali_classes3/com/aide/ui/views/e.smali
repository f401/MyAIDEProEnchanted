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
    .registers 5

    const-wide v0, 0x20bc34faa8da3f57L  # 5.385652283143974E-151

    const-wide v2, 0x22df96db9b32a8fL

    const-class v4, Lcom/aide/ui/views/e;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x34230ef7ee49a4dL
    .end annotation

    const-wide v0, -0x119b390243f28c1cL  # -6.008362102333643E223

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/aide/ui/views/CodeEditText$c;->j6(Lcom/aide/ui/views/CodeEditText$c;Z)Z

    iget-object v2, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditText$c;->DW(Lcom/aide/ui/views/CodeEditText$c;)F

    move-result v4

    iget-object v5, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    invoke-static {v5}, Lcom/aide/ui/views/CodeEditText$c;->FH(Lcom/aide/ui/views/CodeEditText$c;)F

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/aide/ui/views/CodeEditText$c;->j6(Lcom/aide/ui/views/CodeEditText$c;FF)I

    move-result v9

    iget-object v2, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditText$c;->DW(Lcom/aide/ui/views/CodeEditText$c;)F

    move-result v4

    iget-object v5, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    invoke-static {v5}, Lcom/aide/ui/views/CodeEditText$c;->FH(Lcom/aide/ui/views/CodeEditText$c;)F

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/aide/ui/views/CodeEditText$c;->DW(Lcom/aide/ui/views/CodeEditText$c;FF)I

    move-result v2

    if-lez v9, :cond_58

    if-lez v2, :cond_58

    iget-object v4, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/view/View;->performHapticFeedback(II)Z

    iget-object v3, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v6, v3, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    iget-object v3, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    invoke-static {v3, v9, v2}, Lcom/aide/ui/views/CodeEditText$c;->j6(Lcom/aide/ui/views/CodeEditText$c;II)I

    move-result v8

    iget-object v3, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    invoke-static {v3, v9, v2}, Lcom/aide/ui/views/CodeEditText$c;->DW(Lcom/aide/ui/views/CodeEditText$c;II)I

    move-result v10

    iget-object v2, p0, Lcom/aide/ui/views/e;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v2, v2, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-static {v2}, Lcom/aide/ui/views/CodeEditText;->v5(Lcom/aide/ui/views/CodeEditText;)Ljava/util/List;

    move-result-object v11

    move v7, v9

    invoke-static/range {v6 .. v11}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/ui/views/CodeEditText;IIIILjava/util/List;)V
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_59

    :cond_58
    return-void

    :catchall_59
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/e;->DW:Z

    if-eqz v3, :cond_61

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_61
    throw v2
.end method
