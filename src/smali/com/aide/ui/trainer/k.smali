.class final Lcom/aide/ui/trainer/k;
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
    .registers 6

    const-class v0, Lcom/aide/ui/trainer/k;

    const-wide v2, 0x7eb286a3e451453L

    const-wide v4, -0x104fb5d8df3b2905L    # -9.87890279785549E229

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/ab;Lcom/aide/ui/trainer/g$c;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/trainer/k;->FH:Lcom/aide/common/ab;

    iput-object p2, p0, Lcom/aide/ui/trainer/k;->Hw:Lcom/aide/ui/trainer/g$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x158b4df3a5123cbL
    .end annotation

    const-wide v2, 0x55c4b8fa61f68e0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/trainer/k;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x55c4b8fa61f68e0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/trainer/k;->FH:Lcom/aide/common/ab;

    iget-object v1, p0, Lcom/aide/ui/trainer/k;->Hw:Lcom/aide/ui/trainer/g$c;

    invoke-interface {v0, v1}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/trainer/k;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
