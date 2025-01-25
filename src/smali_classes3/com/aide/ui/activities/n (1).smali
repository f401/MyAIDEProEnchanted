.class Lcom/aide/ui/activities/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/CommitActivity$b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
.field final FH:I

.field final Hw:Lcom/aide/ui/activities/CommitActivity$b;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x168891df9a34d50L

    const-wide v2, -0x1e51f1918e7220a3L  # -3.380525747802909E162

    const-class v4, Lcom/aide/ui/activities/n;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/CommitActivity$b;I)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/n;->Hw:Lcom/aide/ui/activities/CommitActivity$b;

    iput p2, p0, Lcom/aide/ui/activities/n;->FH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2d3b64ffa5ca0e19L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/n;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x1922b186d6a4154cL

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/activities/n;->Hw:Lcom/aide/ui/activities/CommitActivity$b;

    iget-object v0, v0, Lcom/aide/ui/activities/CommitActivity$b;->FH:Lcom/aide/ui/activities/CommitActivity;

    invoke-static {v0}, Lcom/aide/ui/activities/CommitActivity;->v5(Lcom/aide/ui/activities/CommitActivity;)Ljava/util/BitSet;

    move-result-object v0

    iget v1, p0, Lcom/aide/ui/activities/n;->FH:I

    invoke-virtual {v0, v1, p2}, Ljava/util/BitSet;->set(IZ)V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/n;->DW:Z

    if-eqz v1, :cond_34

    const-wide v2, 0x1922b186d6a4154cL

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method
