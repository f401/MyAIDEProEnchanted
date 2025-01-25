.class final Lcom/aide/ui/trainer/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;Ljava/util/List;ZZLcom/aide/common/ab;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final FH:Lcom/aide/common/ab;

.field final Hw:Lcom/aide/ui/trainer/g$c;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x7eb286a3e451453L

    const-wide v2, -0x104ec6aa7c582120L  # -1.0445512195345288E230

    const-class v4, Lcom/aide/ui/trainer/h;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/ab;Lcom/aide/ui/trainer/g$c;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/trainer/h;->FH:Lcom/aide/common/ab;

    iput-object p2, p0, Lcom/aide/ui/trainer/h;->Hw:Lcom/aide/ui/trainer/g$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xa9c1417ea47239L
    .end annotation

    const-wide v0, 0x82b9f168d39e9e7L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/trainer/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/trainer/h;->FH:Lcom/aide/common/ab;

    iget-object v3, p0, Lcom/aide/ui/trainer/h;->Hw:Lcom/aide/ui/trainer/g$c;

    invoke-interface {v2, v3}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/trainer/h;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method
